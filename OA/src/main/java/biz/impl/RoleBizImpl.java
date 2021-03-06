package biz.impl;

import java.util.List;
import java.util.Map;

import javax.xml.ws.FaultAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EmployeeRoleBiz;
import biz.RoleBiz;
import dao.ResourceDao;
import dao.RoleDao;
import dao.RoleResourceDao;
import model.EmployeeRole;
import model.Role;

/**
 * 角色业务实现类
 * 
 * @author Jack
 *
 */
@Service
public class RoleBizImpl implements RoleBiz {
	/**
	 * 角色接口对象
	 */
	@Autowired
	private RoleDao dao;
	@Autowired
	private ResourceDao resDao;
	@Autowired
	private RoleResourceDao roleResDao;
	@Autowired
	private EmployeeRoleBiz employeeRoleBiz;
	/**
	 * 获取角色列表
	 */
	@Override
	public List<Role> findAllRole(Map map) {
		return dao.findAllRole(map);
	}
	/**
	 * 获取角色数目
	 */
	@Override
	public int findAllRole_count() {
		return dao.findAllRole_count();
	}
	/**
	 * 根据id查询角色
	 */
	@Override
	public Role findRoleById(Role role) {
		return dao.findRoleByPara(role);
	}
	/**
	 * 添加角色
	 */
	@Override
	public int addRole(Role role) {
//		赋初始权限
//		role=dao.findRoleByPara(role);
//		List<Resource> resList = resDao.findResByR_check();
//		for(Resource res:resList){
//			roleResDao.addResForRole(new RoleResource(role.getRole_id(), res.getR_id()));
//		}
		return dao.addRole(role);
	}
	/**
	 * 修改角色信息
	 */
	@Override
	public int updateRole(Role role) {
		return dao.updateRole(role);
	}
	/**
	 * 删除角色信息
	 */
	@Override
	public int delRole(Role role) {
		EmployeeRole er=new EmployeeRole();
		er.setRole_id(role.getRole_id());
		if(employeeRoleBiz.findAllEmployeeRole(er).size()>0){
			return -1;
		}
		return dao.updateRole(role);
	}
	/**
	 * 根据角色名查找角色
	 */
	@Override
	public Role findRoleByName(Role role) {
		return dao.findRoleByPara(role);
	}

}
