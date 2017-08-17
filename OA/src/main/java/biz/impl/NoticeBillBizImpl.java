package biz.impl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngineConfiguration;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.history.HistoricVariableInstance;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.NoticeBillBiz;
import biz.NoticeBiz;
import model.Notice;

@Service
public class NoticeBillBizImpl implements NoticeBillBiz {
	/**公告*/
	@Autowired
	private NoticeBiz nb;
	
	/**管理流程定义*/
	@Autowired
	private RepositoryService repositoryService;
	
	/**执行管理，包括启动、推进、删除流程实例等操作*/
	@Autowired
	private RuntimeService runtimeService;
	
	/**任务管理*/
	@Autowired
	private TaskService taskService;
	
	/**一个可选服务，任务表单管理*/
	@Autowired
	private FormService formService;
	
	/**历史管理(执行完的数据的管理)*/
	@Autowired
	private HistoryService historyService;
	
	/***/
	@Autowired
	ProcessEngine processEngine;
	
	/**
	 * 生成Activiti需要的25表
	 */
	@Override
	public void testCreateTable(){
		// 获取流程引擎配置
		ProcessEngineConfiguration pec=ProcessEngineConfiguration.createStandaloneProcessEngineConfiguration();
		// 配置驱动
		pec.setJdbcDriver("com.mysql.jdbc.Driver"); 
		// 配置连接地址
		pec.setJdbcUrl("jdbc:mysql://localhost:3306/oa"); 
		// 用户名
		pec.setJdbcUsername("root");
		// 密码
		pec.setJdbcPassword("ok"); 
		
		/**
		 * 配置模式  true 自动创建和更新表
		 */
		pec.setDatabaseSchemaUpdate(ProcessEngineConfiguration.DB_SCHEMA_UPDATE_TRUE);
		
		// 获取流程引擎对象
		processEngine=pec.buildProcessEngine(); 
	}
	
	/**
	 * 部署流程定义
	 */
	@Override
	public void deploymentProcessDefinition_inputStream(){
		// 与流程定义和部署对象相关的service
		Deployment deployment = processEngine.getRepositoryService()
				// 创建一个部署对象
				.createDeployment()
				// 添加部署的名称
				.name("申请公告")
				// 从classpath的资源中加载,一次只能加载一个文件
				.addClasspathResource("diagrams/noticeBill.bpmn")
				// 完成部署
				.addClasspathResource("diagrams/noticeBill.png").deploy();
	}
	
	/**查询表部署流程定义（从inputStream）*/
	@Override
	public void start(){
		NoticeBillBizImpl n=new NoticeBillBizImpl(); 
		n.testCreateTable();
		n.deploymentProcessDefinition_inputStream();
	}
	
	/**更新公告状态，启动流程实例，让启动的流程实例关联业务*/
	@Override
	public void saveStartProcess(Notice notice,String code,String name) {
		//获取公告单ID，使用请假单ID，查询请假单的对象NoticeBill
		int id=notice.getNoticeId();
		notice = nb.Noticeid(id);
		//更新公告单的请假状态从0变成1（初始录入-->审核中）
		notice.setNoticeState("审核中");
		nb.NoticeUpdate(notice);
		//使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
		String key = notice.getClass().getSimpleName();
		key=key.toLowerCase()+"Bill";
		/*
		 *从Session中获取当前任务的办理人，使用流程变量设置下一个任务的办理人
			    * inputUser是流程变量的名称，
			    * 获取的办理人是流程变量的值
		 */
		Map<String, Object> variables = new HashMap<String,Object>();
		//表示惟一用户
		variables.put("inputUser", name);
		/*
		 *(1)使用流程变量设置字符串（格式：noticeBill.id的形式），通过设置，让启动的流程（流程实例）关联业务
   		  (2)使用正在执行对象表中的一个字段BUSINESS_KEY（Activiti提供的一个字段），让启动的流程（流程实例）关联业务
		 */
		//格式：LeaveBill.id的形式（使用流程变量）
		String objId = key+"."+id;
		variables.put("objId", objId);
		//使用流程定义的key，启动流程实例，同时设置流程变量，同时向正在执行的执行对象表中的字段BUSINESS_KEY添加业务数据，同时让流程关联业务
		runtimeService.startProcessInstanceByKey(key,objId,variables);
		//3：使用流程定义的key，查询正在执行的执行对象表，返回流程实例对象
		ProcessInstance pi=runtimeService.createProcessInstanceQuery().
			processInstanceBusinessKey(objId).singleResult();
		//获取流程实例ID
		String processInstanceId = pi.getProcessInstanceId();
		//使用任务ID，查询任务对象，获取流程流程实例ID
		Task task=taskService.createTaskQuery()
				.processInstanceId(processInstanceId).singleResult();
		String taskid=task.getId();
		Authentication.setAuthenticatedUserId(name);
		Map<String, Object> variables1 = new HashMap<String,Object>();//流程变量
		variables1.put("outcome", "审核");
		taskService.complete(taskid, variables1);//结束流程
	}
	
	/**查询历史任务*/
	@Override
	public List<HistoricTaskInstance> findCommentByLeaveBillId(Notice notice) {
		//获取对象的名称
		String objectName = notice.getClass().getSimpleName();
		objectName=objectName.toLowerCase()+"Bill";
		//组织流程表中的字段中的值
		String objId = objectName+"."+notice.getNoticeId();
		
		/*使用历史的流程变量查询，返回历史的流程变量的对象，获取流程实例ID*/
		HistoricVariableInstance hvi = historyService.createHistoricVariableInstanceQuery()//对应历史的流程变量表
						.variableValueEquals("objId", objId)//使用流程变量的名称和流程变量的值查询
						.singleResult();
		//流程实例ID
		String processInstanceId = hvi.getProcessInstanceId();
		List<HistoricTaskInstance> list = processEngine.getHistoryService()//与历史数据（历史表）相关的Service
				.createHistoricTaskInstanceQuery()//创建历史任务实例查询
				.processInstanceId(processInstanceId).orderByHistoricTaskInstanceStartTime()
				.desc().list();//
		return list;
	}
	/**
	 * 审批
	 * @param taskId
	 * @return
	 */
	@Override
	public void findOutComeListByUpdateTaskId(Notice notice,String code,String name,String noticeState) {
		int id=notice.getNoticeId();
		notice = nb.Noticeid(id);
		//使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
		String key = notice.getClass().getSimpleName();
		key=key.toLowerCase()+"Bill";
		/*从Session中获取当前任务的办理人，使用流程变量设置下一个任务的办理人
			    * inputUser是流程变量的名称，
			    * 获取的办理人是流程变量的值
		 */
		Map<String, Object> variables = new HashMap<String,Object>();
		/*	(1)使用流程变量设置字符串（格式：LeaveBill.id的形式），通过设置，让启动的流程（流程实例）关联业务
   				(2)使用正在执行对象表中的一个字段BUSINESS_KEY（Activiti提供的一个字段），让启动的流程（流程实例）关联业务
		 */
		//格式：LeaveBill.id的形式（使用流程变量）
		String objId = key+"."+id;
		variables.put("objId", objId);
		//使用流程定义的key，启动流程实例，同时设置流程变量，同时向正在执行的执行对象表中的字段BUSINESS_KEY添加业务数据，同时让流程关联业务
		ProcessInstance pi=runtimeService.createProcessInstanceQuery().
			processInstanceBusinessKey(objId).singleResult();
		String processInstanceId = pi.getProcessInstanceId();
		//使用任务ID，查询任务对象，获取流程流程实例ID
		Task task=taskService.createTaskQuery()
				.processInstanceId(processInstanceId).singleResult();
		String taskid=task.getId();
		Authentication.setAuthenticatedUserId(name);
		variables.put("outcome", noticeState);
			processEngine.getTaskService() // 任务相关Service
		    .complete(taskid, variables);
	}
	
	/**
	 * 再次提交审核
	 */
	@Override
	public void findOutComeListByUpdate(Notice notice,String code,String name,String noticeState){
		int id=notice.getNoticeId();
		notice = nb.Noticeid(id);
		//使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
		String key = notice.getClass().getSimpleName();
		key=key.toLowerCase()+"Bill";
		/*
		 从Session中获取当前任务的办理人，使用流程变量设置下一个任务的办理人
			    * inputUser是流程变量的名称，
			    * 获取的办理人是流程变量的值
		 */
		Map<String, Object> variables = new HashMap<String,Object>();
		variables.put("inputUser", name);//表示惟一用户
		/*	(1)使用流程变量设置字符串（格式：LeaveBill.id的形式），通过设置，让启动的流程（流程实例）关联业务
   				(2)使用正在执行对象表中的一个字段BUSINESS_KEY（Activiti提供的一个字段），让启动的流程（流程实例）关联业务
		 */
		//格式：LeaveBill.id的形式（使用流程变量）
		String objId = key+"."+id;
		variables.put("objId", objId);
		
		ProcessInstance pi=runtimeService.createProcessInstanceQuery().
				processInstanceBusinessKey(objId).singleResult();
			String processInstanceId = pi.getProcessInstanceId();
			//使用任务ID，查询任务对象，获取流程流程实例ID
			Task task=taskService.createTaskQuery()
					.processInstanceId(processInstanceId).singleResult();
			String taskid=task.getId();
			Authentication.setAuthenticatedUserId(name);
			Map<String, Object> variables1 = new HashMap<String,Object>();
			variables1.put("outcome", "审核");
			processEngine.getTaskService() // 任务相关Service
		    .complete(taskid, variables);
	}
}
