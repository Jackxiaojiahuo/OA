package biz;

import java.util.List;

import model.RoleResource;
/**
 * 角色资源业务接口
 * @author Jack
 *
 */
public interface RoleResourceBiz {
	/**
	 * 为角色更新资源
	 * @return
	 */
	int updateResForRole(Integer role_id,List<RoleResource> list);
	/**
	 * 查看角色的所有资源
	 * @return
	 */
	List<RoleResource> findAllRoleResrouce(Integer role_id);
}
