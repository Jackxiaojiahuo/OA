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
	 * 初始化密码
	 * @param emp
	 * @return
	 */
	int updatePwdInit(Employee emp);
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
	Employee login(String emp_code,String emp_pwd);
	/**
	 * 根据员工编号查询所有资源
	 * @return
	 */
	List<Resource> listAllResource(Integer emp_id);
	
	
	/**
	 * 曹浩然代码
	 */
	List<Employee> findAllEmployee(Map map);//全部查询
	int findAllEmployee_count(Map map);
	Employee findEmployeeById(int emp_id);//id查询
	List<Employee> findEmployeeState(String emp_state);//根据在职状态查询
	int findBycode(String emp_code);
	int addEmp(Employee emp);//新增员工
	int delEmployee(int emp_id);//删除员工
	int updateEmployee(Employee e);//修改
	//查询行数
	int zzstate(String emp_state);
	int systate(String emp_state);
	int txstate(String emp_state);
	int lzstate(String emp_state);
	List<Employee> findEmployeeBylike(Employee emp);//根据模糊查询
}
