package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.RoleBiz;
import model.Page;
import model.Role;
/**
 * 角色控制器
 * @author Jack
 *
 */
@Controller
@RequestMapping("role.do")
public class RoleController {
	/**
	 * 角色业务接口对象
	 */
	@Autowired
	private RoleBiz roleBiz;
	/**
	 * 分页查询角色列表
	 * @param model
	 * @param index
	 * @return
	 */
	@RequestMapping(params="action=findAllRole")
	public String findAllRole(ModelMap model,Integer index){
		if(index==null){
			index=1;
		}
		Page page=new Page(index,24);
		page.setCount(roleBiz.findAllRole_count());
		Map map=new HashMap();
		map.put("index", (index-1)*24);
		map.put("size", 24);
		List<Role> roleList=roleBiz.findAllRole(map);
		model.put("roleList", roleList);
		model.put("page", page);
		return "sysManager/gwjs";
	}
	/**
	 * 根据编号查询角色
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(params="action=findRoleById")
	public String findRoleById(ModelMap model,Integer role_id){
		Role role=new Role();
		role.setRole_id(role_id);
		role = roleBiz.findRoleById(role);
		model.put("role", role);
		return "sysManager/editjsUI";
	}
	/**
	 * 添加角色
	 * @param model
	 * @param role_name
	 * @param role_description
	 * @return
	 */
	@RequestMapping(params="action=addRole")
	public String addRole(ModelMap model,String role_name,String role_description){
		Role role=new Role();
		role.setRole_name(role_name);
		role.setRole_description(role_description);
		int count = roleBiz.addRole(role);
		if(count>0){
			return "redirect:role.do?action=findAllRole";
		}else{
			return "sysManager/addjsUI";
		}
	}
	/**
	 * 编辑角色
	 * @param model
	 * @param role_id
	 * @param role_name
	 * @param role_description
	 * @return
	 */
	@RequestMapping(params="action=editRole")
	public String updateRole(ModelMap model,Integer role_id,String role_name,String role_description){
		Role role=new Role(role_id, role_name,role_description);
		int count = roleBiz.updateRole(role);
		if(count>0){
			return "redirect:role.do?action=findAllRole";
		}else{
			return "redirect:role.do?findRoleById.do&id="+role_id;
		}
	}
	/**
	 * 删除角色
	 * @param model
	 * @param role_id
	 * @return
	 */
	@RequestMapping(params="action=delRoleById")
	public String delRole(ModelMap model,Integer role_id){
		Role role = new Role();
		role.setRole_id(role_id);
		role.setRole_statu(0);
		System.out.println("删除角色"+role_id);
		int count = roleBiz.updateRole(role);
		if(count>0){
			return "redirect:role.do?action=findAllRole";
		}else{
			return "sysManager/gwjs";
		}
	}
}
