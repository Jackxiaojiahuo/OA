package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.AssignmentBiz;
import model.Assignment;
import model.Page;
import model.Prospectus;


/**
 * 全部查询全部工作任务Controller控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("assi.do")
public class AssignmentController {
	@Autowired
	private AssignmentBiz assignmentBiz;
	//全部查询全部工作任务
	@RequestMapping(params = "action=Assignmentlist")
	public String findAllAssignment(ModelMap model, Integer num, Integer index, Integer state,Integer classify,String assignment_create_name) {
		num=num==null ? 0: num;
		model.put("num", num);
		if (num==0) {
			index = index == null ? 1 : index;
			Map map = new HashMap();
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(assignment_create_name!=null)
				map.put("assignment_create_name", assignment_create_name);
			//全部查询工作任务
			List<Assignment> list =assignmentBiz.findAllAssignment(map);
			//查询总数
			page.setCount(assignmentBiz.findAllAssignment_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==1){
			String assi_state = null;
			Map map = new HashMap();
			index = index == null ? 1 : index;
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(assignment_create_name!=null)
				map.put("assignment_create_name", assignment_create_name);
			switch (state) {
			case 0:
				assi_state="执行中";
				map.put("assi_state", "执行中");
				break;
				
			case 1:
				assi_state="关闭";
				map.put("assi_state", "关闭");
				break;
			}
			//根据任务状态查询
			List<Assignment> list = assignmentBiz.findAssignmentState(map);
			page.setCount(assignmentBiz.findAllAssignment_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if (num==2) {
			String assignment_classify = null;
			Map map = new HashMap();
			index = index == null ? 1 : index;
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(assignment_create_name!=null)
				map.put("assignment_create_name", assignment_create_name);
			switch (classify) {
			case 0:
				assignment_classify="常规";
				map.put("assignment_classify", "常规");
				break;
			case 1:
				assignment_classify="行政类";
				map.put("assignment_classify", "行政类");
				break;
			case 2:
				assignment_classify="人事类";
				map.put("assignment_classify", "人事类");
				break;
			case 3:
				assignment_classify="财务类";
				map.put("assignment_classify", "财务类");
				break;
			case 4:
				assignment_classify="业务类";
				map.put("assignment_classify", "业务类");
				break;
			case 5:
				assignment_classify="项目";
				map.put("assignment_classify", "项目");
				break;
			}
			// 根据计划分类查询
			List<Assignment> list = assignmentBiz.findAssignmentClassify(map);
			page.setCount(assignmentBiz.findAllAssignment_count(map));
			model.put("page", page);
			model.put("list", list);
		}
		if(assignment_create_name!=null)
			return "goal/wdgzrw";
		return "goal/qbgzrw";
	}
	/**
	 * 任务展示
	 * @param model
	 * @param assignment_id
	 * @return
	 */
	@RequestMapping(params = "action=rwzs")
	public String zsAssignment(ModelMap model, Integer assignment_id) {
		assignment_id = assignment_id == null ? 0 : assignment_id;
		Assignment a = assignmentBiz.findAssignmentById(assignment_id);
		model.put("a", a);
			return "goal/er/zsrw";
		
	}
	/**
	 
	
	 新增工作任务 
	private String assi_state;//工作任务状态
	private String assignment_name ;//任务名称
	private String assignment_create_name ;//创建人姓名
	private Integer depart_id; //外键 所属部门  （从属于）
	private String assignment_create_time;//开始时间
	private String assignment_terminal_time	;//结束时间
	private String assignment_executor_name	 ;//任务执行人
	private String assignment_workload;//工作量（实际天数）
	private String assignment_budget;//预估天数
	private String assignment_classify;//工作任务分类
	private String assignment_explain;//任务说明
	private String assignment_executor_fruit ;//执行结果
	* 
	 */
	@RequestMapping(params ="action=addass")
	public String addAssignment(String assi_state, String assignment_name, String assignment_create_name,
			Integer depart_id, String assignment_create_time,
			String assignment_terminal_time,
			String assignment_executor_name, String assignment_workload, String assignment_budget,
			String assignment_classify, String assignment_explain, String assignment_executor_fruit ) {
		Assignment a = new Assignment(null, assi_state, assignment_name, assignment_create_name, depart_id, 
				assignment_create_time,  assignment_terminal_time,
				assignment_executor_name, assignment_workload,assignment_budget, assignment_classify,
				assignment_explain, assignment_executor_fruit);
		assignmentBiz.addAssignment(a);
		return "redirect:assi.do?action=Assignmentlist&num=0";
	}
	/**
	 *  根据 计划名称  创建人模糊查询
	 * @param model
	 * @param names
	 * @param count
	 * @return
	 */
		@RequestMapping(params = "action=cz")
		public String findAssignmentLike(ModelMap model,Integer num, String names, String count,String name) {
			
			Assignment a = new Assignment();
			List<Assignment> list = null;
			if(name==null){
				if (names.equals("assignment_create_name")) {
					a.setAssignment_create_name(count);
				} else if(names.equals("assignment_name")){
					a.setAssignment_name(count);
				}
			}else{
				a.setAssignment_create_name(count);
				a.setAssignment_name(count);
			}
			list=assignmentBiz.findAssignmentBylike(a);
			model.put("list", list);
			if(name!=null)
				return "goal/er/czrwgr";
			return "goal/er/czrw";
		}
}
