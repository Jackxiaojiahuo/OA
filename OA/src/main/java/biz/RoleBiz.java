package biz;

import java.util.List;
import java.util.Map;

import model.Page;
import model.Role;
/**
 * 角色业务接口
 * @author Jack
 *
 */
public interface RoleBiz {
	/**
	 * 获取角色列表
	 * @return
	 */
	List<Role> findAllRole(Map map);
	/**
	 * 获取角色数目
	 * @return
	 */
	int findAllRole_count();
	/**
	 * 根据id查询角色
	 * @param id
	 * @return
	 */
	Role findRoleById(Role role);
	
	Role findRoleByName(Role role);
	/**
	 * 添加角色
	 */
	int addRole(Role role);
	/**
	 * 修改角色信息
	 */
	int updateRole(Role role);
	/**
	 * 删除角色信息
	 */
	int delRole(Role role);
}
