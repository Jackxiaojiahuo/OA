package dao;

import java.util.List;

import model.Department;
import model.Page;
import model.Role;
/**
 * 部门dao接口
 * @author Jack
 *
 */
public interface DepartmentDao {
	/**
	 * 查询所有部门
	 * @return
	 */
	List<Department> findAllDepart();
	/**
	 * 获取所有部门列表
	 * @return
	 */
	List<Department> findAllDepart_list();
	/**
	 * 根据id查找部门
	 * @param id
	 * @return
	 */
	Department findDepartById(Integer depart_id);
	/**
	 * 添加部门
	 */
	int addDepart(Department depart);
	/**
	 * 修改部门信息
	 */
	int updateDepart(Department depart);
	/**
	 * 删除部门信息
	 */
	int delDepart(Integer depart_id);
}
