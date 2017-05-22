package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EmployeeRoleBiz;
import dao.EmployeeRoleDao;
import model.EmployeeRole;

@Service
public class EmployeeRoleBizImpl implements EmployeeRoleBiz {
	@Autowired
	private EmployeeRoleDao empRoleDao;

	/**
	 * 为员工添加角色
	 * 
	 * @return
	 */
	@Override
	public int updateRoleForEmp(Integer emp_id, List<EmployeeRole> list) {
		empRoleDao.delRoleForEmp(emp_id);
		for (EmployeeRole empRole : list) {
			empRoleDao.addRoleForEmp(empRole);
		}
		return 1;
	}

	/**
	 * 查看员工的所有角色
	 * 
	 * @return
	 */
	@Override
	public List<EmployeeRole> findAllEmployeeRole(Integer emp_id) {
		return empRoleDao.findAllEmployeeRole(emp_id);
	}

}
