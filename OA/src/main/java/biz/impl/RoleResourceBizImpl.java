package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.RoleResourceBiz;
import dao.RoleResourceDao;
import model.RoleResource;
/**
 * 角色资源业务实现类
 * @author Jack
 *
 */
@Service
public class RoleResourceBizImpl implements RoleResourceBiz {
	@Autowired
	private RoleResourceDao roleResDao;
	/**
	 * 为角色更新资源
	 * @return
	 */
	@Override
	public int updateResForRole(Integer role_id, List<RoleResource> list) {
		roleResDao.delResForRole(role_id);
		for (RoleResource roleRes : list) {
			roleResDao.addResForRole(roleRes);
		}
		return 1;
	}
	/**
	 * 查看角色的所有资源
	 * @return
	 */
	@Override
	public List<RoleResource> findAllRoleResrouce(Integer role_id) {
		return roleResDao.findAllRoleResrouce(role_id);
	}

}
