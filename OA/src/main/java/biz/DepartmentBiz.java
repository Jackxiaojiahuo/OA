package biz;

import java.util.List;

import model.Department;

/**
 * 部门业务接口
 * @author Jack
 *
 */
public interface DepartmentBiz {
	/**
	 * 查询所有部门
	 */
	List<Department> findAllDepart();
	/**
	 * 获取所有部门列表(条件)
	 * @return
	 */
	List<Department> findAllDepart_list();
	/**
	 * 查询所有部门列表展示数据
	 * @return
	 */
	List<Department> findAllDepart_select();
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
