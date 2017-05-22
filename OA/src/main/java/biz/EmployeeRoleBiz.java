package biz;

import java.util.List;

import model.EmployeeRole;
/**
 * 员工角色业务接口
 * @author Jack
 *
 */
public interface EmployeeRoleBiz {
	/**
	 * 为员工更新角色
	 * @return
	 */
	int updateRoleForEmp(Integer emp_id,List<EmployeeRole> list);
	/**
	 * 查看员工的所有角色
	 * @return
	 */
	List<EmployeeRole> findAllEmployeeRole(Integer emp_id);
}
