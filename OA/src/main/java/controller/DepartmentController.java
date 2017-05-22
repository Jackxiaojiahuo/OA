package controller;

import java.util.List;

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
	 * 获取所有部门列表
	 * @param model
	 * @return
	 */
	@RequestMapping(params="action=findAllDpeart")
	@ResponseBody
	public List<Department> findAllDpeart(ModelMap model){
		List<Department> list=departBiz.findAllDepart();
		return list; 
	}
	/**
	 * 查询所有部门下拉列表
	 * @return
	 */
	@RequestMapping(params="action=findAllDpeart_select")
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
	@RequiresRoles("ZJL")
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
		model.put("depart", departBiz.findDepartById(depart_id));
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
	public String addRole(ModelMap model,String depart_name,String depart_description,Integer depart_pid){
		Department depart=new Department();
		depart.setDepart_name(depart_name);
		depart.setDepart_description(depart_description);
		depart.setDepart_pid(depart_pid==0?null:depart_pid);
		int count = departBiz.addDepart(depart);
		if(count>0){
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
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
	public String updateRole(ModelMap model,Integer depart_id,String depart_name,String depart_description,Integer depart_pid){
		Department depart=new Department(depart_id, depart_name, depart_description, depart_pid);
		int count = departBiz.updateDepart(depart);
		if(count>0){
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
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
	public String delRole(ModelMap model,Integer depart_id){
		int count = departBiz.delDepart(depart_id);
		if(count>0){
			return "redirect:depart.do?action=findAllDepart_list";
		}else{
			return "sysManager/zzjg";
		}
	}
}
