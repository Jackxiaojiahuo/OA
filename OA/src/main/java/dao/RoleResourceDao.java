package dao;

import java.util.List;

import model.RoleResource;
/**
 * 角色资源dao接口
 * @author Jack
 *
 */
public interface RoleResourceDao {
	/**
	 * 为角色添加资源
	 * @return
	 */
	int addResForRole(RoleResource roleRes);
	/**
	 * 为角色删除资源
	 * @return
	 */
	int delResForRole(Integer role_id);
	/**
	 * 查看角色的所有资源
	 * @return
	 */
	List<RoleResource> findAllRoleResrouce(Integer role_id);
}
