package dao;

import java.util.List;

import model.EmployeeRole;
/**
 * 员工角色dao接口
 * @author Jack
 *
 */
public interface EmployeeRoleDao {
	/**
	 * 为员工添加角色
	 * @return
	 */
	int addRoleForEmp(EmployeeRole empRole);
	/**
	 * 为员工删除角色
	 * @return
	 */
	int delRoleForEmp(Integer emp_id);
	/**
	 * 查看员工的所有角色
	 * @return
	 */
	List<EmployeeRole> findAllEmployeeRole(EmployeeRole er);
	
}
