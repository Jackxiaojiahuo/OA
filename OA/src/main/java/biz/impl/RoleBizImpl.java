package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.RoleBiz;
import dao.RoleDao;
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
	public Role findRoleById(Integer role_id) {
		return dao.findRoleById(role_id);
	}
	/**
	 * 添加角色
	 */
	@Override
	public int addRole(Role role) {
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
	public int delRole(Integer role_id) {
		return dao.delRole(role_id);
	}

}
