package dao;

import java.util.List;
import java.util.Map;

import model.Role;
/**
 * 角色dao接口
 * @author Jack
 *
 */
public interface RoleDao {
	/**
	 * 获取角色列表(带分页)
	 * @return
	 */
	List<Role> findAllRole(Map map);
	/**
	 * 获取角色数目
	 * @return
	 */
	int findAllRole_count();
	/**
	 * 根据id查找角色
	 * @param id
	 * @return
	 */
	Role findRoleById(Integer role_id);
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
	int delRole(Integer role_id);
}
