package biz;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.history.HistoricIdentityLink;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;

import model.Employee;
import model.Notice;

public interface NoticeBillBiz {
	/**
	 * 生成Activiti需要的25表
	 */
	void testCreateTable();
	
	/**
	 * 部署流程定义
	 */
	void deploymentProcessDefinition_inputStream();
	
	/**查询表部署流程定义（从inputStream）*/
	void start();
	
	/**查询历史任务*/
	List<HistoricTaskInstance> findCommentByLeaveBillId(Notice notice);

	/**
	 * 审批
	 * @param taskId
	 * @return
	 */
	void findOutComeListByUpdateTaskId(Notice notice, String code, String name, String noticeState);

	/**更新公告状态，启动流程实例，让启动的流程实例关联业务*/
	void saveStartProcess(Notice notice, String code, String name);

	/**
	 * 再次提交审核
	 */
	void findOutComeListByUpdate(Notice notice, String code, String name, String noticeState);
}
