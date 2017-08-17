package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.AssignmentBiz;
import biz.EgressBiz;
import biz.NoticeBiz;
import biz.ProspectusBiz;
import biz.ReportBiz;

/**
 * 桌面控制器
 * @author Jack
 * @time 2017下午4:33:37
 */
@Controller
@RequestMapping("desk.do")
public class DeskController {
	@Autowired
	private AssignmentBiz assignmentBiz;
	/**
	 * 全部工作计划业务接口对象
	 */
	@Autowired
	private ProspectusBiz prospectusBiz;
	@Autowired
	private ReportBiz reportBiz;
	/**
	 * 公告
	 */
	@Autowired
	private NoticeBiz nb;
	@Autowired
	private EgressBiz esBiz;
	
	@RequestMapping(params = "action=init")
	public String initDesktop(ModelMap model,Integer emp_id,String emp_name){
		initGoal(emp_name,model);
		return "desktop";
	}
	/**
	 * 初始化目标板块
	 * @param emp_name
	 * @param model
	 */
	public void initGoal(String emp_name,ModelMap model){
		Map map = new HashMap();
		map.put("report_create_name", emp_name);
		model.put("gzbg",reportBiz.findAllReport_count(map));//工作报告
		map.put("assignment_create_name", emp_name);
		model.put("gzrw", assignmentBiz.findAllAssignment_count(map));//工作任务
		map.put("prospectus_create_name", emp_name);
		model.put("gzjh", prospectusBiz.findAllprospectus_count(map));//工作计划
	}
}
