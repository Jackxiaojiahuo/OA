package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.DepartmentBiz;
import model.Department;
/**
 * 部门控制器
 * @author Jack
 *
 */
@Controller
@RequestMapping("depart.do")
public class DepartmentController {
	/**
	 * 部门业务接口对象
	 */
	@Autowired
	private DepartmentBiz departBiz;
	/**
	 * 查询所有部门下拉列表
	 * @return
	 */
	@RequestMapping(params="action=findAllDepart_select")
	public String findAllDpeart_select(ModelMap model){
		model.put("list", departBiz.findAllDepart_select());
		return "sysManager/addbmUI"; 
	}
	/**
	 * 查询所有部门展示列表
	 * @param model
	 * @param index
	 * @return
	 */
	@RequestMapping(params="action=findAllDepart_list")
	public String findAllDepart_list(ModelMap model){
		List<Department> departList=departBiz.findAllDepart_list();
			model.put("departList", departList);
			return "sysManager/zzjg";
	}
	/**
	 * 根据编号查询部门
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(params="action=findDepartById")
	public String findRoleById(ModelMap model,Integer depart_id){
		model.put("list", departBiz.findAllDepart_select());
		Department dept = new Department();
		dept.setDepart_id(depart_id);
		model.put("depart", departBiz.findDepartById(dept));
		return "sysManager/editbmUI";
	}
	/**
	 * 添加 部门
	 * @param model
	 * @param depart_name
	 * @param depart_description
	 * @return
	 */
	@RequestMapping(params="action=addDepart")
	public String addDept(ModelMap model,HttpServletRequest request,String depart_name,String depart_description,Integer depart_pid){
		Department depart=new Department();
		depart.setDepart_name(depart_name);
		depart.setDepart_description(depart_description);
		depart.setDepart_pid(depart_pid==0?null:depart_pid);
		int count = departBiz.addDepart(depart);
		if(count>0){
			request.getSession().setAttribute("msg", "添加部门成功");
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
			request.getSession().setAttribute("msg", "添加部门失败");
			return "sysManager/addbmUI";
		}
	}
	/**
	 * 编辑部门
	 * @param model
	 * @param depart_id
	 * @param depart_name
	 * @param depart_description
	 * @return
	 */
	@RequestMapping(params="action=editDepart")
	public String updateRole(ModelMap model,HttpServletRequest request,Integer depart_id,String depart_name,String depart_description,Integer depart_pid){
		Department depart=new Department(depart_id, depart_name, depart_description, depart_pid);
		int count = departBiz.updateDepart(depart);
		if(count>0){
			request.getSession().setAttribute("msg", "修改部门成功");
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
			request.getSession().setAttribute("msg", "修改部门失败");
			return "redirect:depart.do?action=findDepartById&id="+depart_id;
		}
	}
	/**
	 * 删除部门
	 * @param model
	 * @param depart_id
	 * @return
	 */
	@RequestMapping(params="action=delDepartById")
	public String delRole(ModelMap model,Integer depart_id,HttpServletRequest request){
		Department department = new Department(depart_id,0);
		int count = departBiz.delDepart(department);
		if(count>0){
			request.getSession().setAttribute("msg", "删除部门成功");
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
			request.getSession().setAttribute("msg", "该部门下还有员工,不能删除");
			return "redirect:depart.do?action=findAllDepart_list";
		}
	}
}
