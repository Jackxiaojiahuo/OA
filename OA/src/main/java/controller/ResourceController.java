package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ResourceBiz;
import biz.RoleBiz;
import biz.RoleResourceBiz;
import model.Resource;
import model.RoleResource;
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
	public String findAllResForMenu(ModelMap model,Integer role_id){
		model.put("resList",resBiz.findAllRes());
		List<Resource> list = resBiz.findAllRes();
		System.out.println(list.size()+">>集合大小");
		for (Resource resource : list) {
			System.out.println("1>>>>"+resource.getR_name());
			for(Resource r1 : resource.getChildrenList()){
				System.out.println("2>>>>>"+r1.getR_name());
				for(Resource r2:r1.getChildrenList()){
					System.out.println("3>>>>>>>>>>>"+r2.getR_name());
				}
			}
		}
		model.put("roleResList",resRoleBiz.findAllRoleResrouce(role_id) );
		return "sysManager/qxsz";
	}
	/**
	 * 为角色修改权限
	 */
	@RequestMapping(params="action=addQxForRole")
	public String updateQxForRole(ModelMap model,Integer role_id,String[] privilegeIds){
		List<RoleResource> list=new ArrayList<RoleResource>();
		for(String pid:privilegeIds){
			System.out.println("资源id:"+pid);
			list.add(new RoleResource(role_id, Integer.parseInt(pid)));
		}
		if(resRoleBiz.updateResForRole(role_id, list)>0){
			return "redirect:role.do?action=findAllRole";
		}else{
			return "redirect:res.do?action=findAllRes&role_id="+role_id;
		}
	}
}
