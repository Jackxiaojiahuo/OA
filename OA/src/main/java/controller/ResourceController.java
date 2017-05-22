package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ResourceBiz;
import biz.RoleBiz;
import biz.RoleResourceBiz;

@Controller
@RequestMapping("res.do")
public class ResourceController {
	@Autowired
	private RoleBiz roleBiz;
	@Autowired
	private ResourceBiz resBiz;
	@Autowired
	private RoleResourceBiz resRoleBiz;
	/**
	 * 获取所有菜单资源
	 */
	@RequestMapping(params="action=findAllRes")
	public String findAllResForMenu(ModelMap model,Integer role_id,Integer r_type){
		model.put("resList",resBiz.findAllRes(r_type));
		model.put("roleResList",resRoleBiz.findAllRoleResrouce(role_id) );
		model.put("ROLE", roleBiz.findRoleById(role_id));
		if(r_type==1){
			return "sysManager/menuqx";
		}else{
			return "sysManager/buttonqx";
		}
	}
}
