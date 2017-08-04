package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.DepartmentBiz;
import biz.RoleBiz;
import model.Department;
import model.Role;

@Controller
@RequestMapping("param.do")
public class ParamController {
	@Autowired
	private DepartmentBiz departmentBiz;
	@Autowired
	private RoleBiz roleBiz;
	/**
	 * 获取所有部门列表
	 * @param model
	 * @return
	 */
	@RequestMapping(params="action=findAllDpeart")
	@ResponseBody
	public List<Department> findAllDpeart(ModelMap model){
		List<Department> list=departmentBiz.findAllDepart();
		return list; 
	}
	/**
	 * ajax判断部门名称
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping(params = "action=checkDname")
	@ResponseBody
	public String checkDname(String name) {
		String result = "";
		Department dept = new Department();
		dept.setDepart_name(name);
		if (departmentBiz.findDepartByName(dept)!=null) {
			result = "部门已存在";
		}
		return result;
	}
	/**
	 * ajax判断部门名称
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping(params = "action=checkRname")
	@ResponseBody
	public String checkRname(String name) {
		String result = "";
		Role role=new Role();
		role.setRole_name(name);
		if (roleBiz.findRoleByName(role)!=null) {
			result = "角色已存在";
		}
		return result;
	}
}
