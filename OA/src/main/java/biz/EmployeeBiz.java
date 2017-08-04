package biz;

import java.util.List;
import java.util.Map;

import model.Employee;
import model.Resource;
import model.UserOnline;
/**
 * 员工业务接口
 * @author Jack
 *
 */
public interface EmployeeBiz {
	/**
	 * 查询全部非离职员工
	 * @return
	 */
	List<Employee> findAllEmployeeRight(Map map);
	/**
	 * 查询全部非离职员工数量
	 * @return
	 */
	Integer findAllEmployeeRight_count(Map map);
	/**
	 * 修改密码
	 * @param emp
	 * @return
	 */
	int updatePwd(Employee emp);
	/**
	 * 跳转到增加岗位角色页面
	 * @return
	 */
	Map toJsForEmp(Integer emp_id);
	/**
	 * 用户登录
	 * @param emp
	 * @return
	 */
	Employee login(String emp_code);
	/**
	 * 根据员工编号查询所有资源
	 * @return
	 */
	List<Resource> listAllResource(Integer emp_id);
	/**
	 * 修改员工状态信息
	 * @param emp
	 * @return
	 */
	int upEmp(Employee emp);
	
	
	
	
	
	/**
	 * 曹浩然代码
	 */
	/**
	 *显示全部员工的信息
	 * @param map
	 * @return
	 */
	List<Employee> findAllEmployee(Map map);
	int findAllEmployee_count(Map map);
	/**
	 * 展示员工的详细信息
	 * @param emp_id
	 * @return
	 */
	Employee findEmployeeById(int emp_id);
	/**
	 * 根据员工的工号进行查询
	 * @param emp_code
	 * @return
	 */
	int findBycode(String emp_code);
	/**
	 * 新增员工
	 * @param emp
	 * @return
	 */
	int addEmp(Employee emp);
	/**
	 * 删除员工
	 * @param emp_id
	 * @return
	 */
	int delEmployee(int emp_id);
	/**
	 * 修改员工的信息
	 * @param e
	 * @return
	 */
	int updateEmployee(Employee e);
	/**
	 * 根据在职状态进行查询
	 * @param emp_state
	 * @return
	 */
	List<Employee> findEmployeeState(Map map);
	int findEmployeeState_count(Map map);
	/**
	 * 查询各个在职状态的个数
	 * @param emp_state
	 * @return
	 */
	int zzstate(String emp_state);
	int systate(String emp_state);
	int txstate(String emp_state);
	int lzstate(String emp_state);
	/**
	 * 根据条件进行模糊查询
	 * @param emp
	 * @return
	 */
	List<Employee> findEmployeeBylike(Map map);//根据模糊查询
	int findEmployeeBylike_count(Map map);
}