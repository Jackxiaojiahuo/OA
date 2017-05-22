package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ResourceBiz;
import biz.RoleBiz;
import biz.RoleResourceBiz;
/**
 * 资源控制器
 * @author Jack
 *
 */
@Controller
@RequestMapping("res.do")
public class ResourceController {
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
		return "sysManager/qxsz";
	}
}
