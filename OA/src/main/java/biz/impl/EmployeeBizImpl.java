package biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EmployeeBiz;
import dao.EmployeeDao;
import dao.RoleDao;
import kit.ShiroKit;
import model.Employee;
import model.Resource;
@Service("empService")
public class EmployeeBizImpl implements EmployeeBiz {
	@Autowired
	private EmployeeDao empDao;
	@Autowired
	private RoleDao roleDao;
	@Override
	public List<Employee> findAllEmployee() {
		return empDao.findAllEmployee();
	}

	@Override
	public Employee findEmployeeById(int emp_id) {
		return empDao.findEmployeeById(emp_id);
	}

	@Override
	public List<Employee> findEmployeeState(String emp_state) {
		return empDao.findEmployeeState(emp_state);
	}

	@Override
	public List<Employee> findEmployeeByname(Employee emp) {
		return empDao.findEmployeeByname(emp);
	}

	@Override
	public List<Employee> findEmployeeBycode(Employee emp) {
		return empDao.findEmployeeBycode(emp);
	}

	@Override
	public int addEmp(Employee emp) {
		emp.setEmp_pwd(ShiroKit.md5(emp.getEmp_pwd(), emp.getEmp_code()));
		return empDao.addEmp(emp);
	}

	@Override
	public int delEmployee(int emp_id) {
		return empDao.delEmployee(emp_id);
	}

	@Override
	public int updateEmployee(Employee emp) {
		emp.setEmp_pwd(ShiroKit.md5(emp.getEmp_pwd(), emp.getEmp_code()));
		return empDao.updateEmployee(emp);
	}

	@Override
	public int zzstate(String emp_state) {
		return empDao.zzstate(emp_state);
	}

	@Override
	public int systate(String emp_state) {
		return empDao.systate(emp_state);
	}

	@Override
	public int txstate(String emp_state) {
		return empDao.txstate(emp_state);
	}

	@Override
	public int lzstate(String emp_state) {
		return empDao.lzstate(emp_state);
	}
	/**
	 * 查询全部非离职员工
	 * @return
	 */
	@Override
	public List<Employee> findAllEmployeeRight(Map map) {
		return empDao.findAllEmployeeRight(map);
	}
	/**
	 * 查询全部非离职员工数量
	 * @return
	 */
	@Override
	public Integer findAllEmployeeRight_count(Map map) {
		return empDao.findAllEmployeeRight_count(map);
	}
	/**
	 * 初始化密码
	 */
	@Override
	public int updatePwdInit(Employee emp) {
		return empDao.updatePwdInit(emp);
	}
	/**
	 * 跳转到增加岗位角色页面
	 */
	@Override
	public Map toJsForEmp(Integer emp_id) {
		Map map=new HashMap();
//		map.put("index", null);
		map.put("roleList", roleDao.findAllRole(map));//角色集合
		map.put("emp", empDao.findEmployeeById(emp_id));//员工信息
		return map;
	}
	/**
	 * 用户登录
	 */
	@Override
	public Employee login(String emp_code,String emp_pwd) {
		return empDao.loadByEmpcode(emp_code);
	}
	/**
	 * 根据员工编号查询角色sn
	 * @param emp_id
	 * @return
	 */
	@Override
	public List<String> listRoleSnByUser(Integer emp_id){
		return empDao.listRoleSnByUser(emp_id);
	}
	/**
	 * 根据员工编号查询所有资源
	 * @return
	 */
	@Override
	public List<Resource> listAllResource(Integer emp_id){
		return empDao.listAllResource(emp_id);
	}
	
	
//	private SqlSession session=null;
//	//全部查询
//	public List<Employee> findAllEmployee() {
//		session=MybatisUtil.getSession();
//		EmployeeDao employeeDao = session.getMapper(EmployeeDao.class);
//		List<Employee> list = employeeDao.findAllEmployee();
//		//List<Employee> list= session.selectList(EmployeeDao.class.getName()+".findAllEmployee");
//		MybatisUtil.close();
//		return list;
//	}
//	//根据姓名查询
//	public List<Employee> findEmployeeByname(Employee emp) {
//		session=MybatisUtil.getSession();
//		EmployeeDao employeeDao = session.getMapper(EmployeeDao.class);
//		List<Employee> list = employeeDao.findEmployeeByname(emp);
//		//List<Employee> list= session.selectList(EmployeeDao.class.getName()+".findAllEmployeeByname",emp);
//		MybatisUtil.close();
//		return list;
//	}
//	//根据工号查询
//	public List<Employee> findEmployeeBycode(Employee emp) {
//		session=MybatisUtil.getSession();
//		EmployeeDao employeeDao = session.getMapper(EmployeeDao.class);
//		List<Employee> list = employeeDao.findEmployeeBycode(emp);
//		//List<Employee> list= session.selectList(EmployeeDao.class.getName()+".findAllEmployeeBycode",emp);
//		MybatisUtil.close();
//		return list;
//	}
//	//新增员工
//	public int addEmp(Employee emp) {
//		session=MybatisUtil.getSession();
//		EmployeeDao employeeDao = session.getMapper(EmployeeDao.class);
//		int add = employeeDao.addEmp(emp);
//		//int add = session.insert(EmployeeDao.class.getName()+".addEmp",emp);
//		session.commit();
//		return add;
//	}
//	//根据在职状态查询
//	@Override
//	public List<Employee> findEmployeeState(String emp_state) {
//		session=MybatisUtil.getSession();
//		Employee e=new Employee();
//		e.setEmp_state(emp_state);
//		List<Employee> list= session.selectList(EmployeeDao.class.getName()+".findEmployeeState",e);
//		MybatisUtil.close();
//		return list;
//	}
//	//删除
//	@Override
//	public int delEmployee(int emp_id) {
//		session=MybatisUtil.getSession();
//		int delete=session.delete(EmployeeDao.class.getName()+".delEmployee",emp_id);
//		session.commit();
//		return delete;
//		
//	}
//	//查询行数
//	@Override
//	public int zzstate(String emp_state) {
//		// TODO Auto-generated method stub
//		Employee e=new Employee();
//		e.setEmp_state(emp_state);
//		return MybatisUtil.getSession().selectOne(EmployeeDao.class.getName()+".zzstate",e);
//	}
//
//	@Override
//	public int systate(String emp_state) {
//		Employee e=new Employee();
//		e.setEmp_state(emp_state);
//		return MybatisUtil.getSession().selectOne(EmployeeDao.class.getName()+".systate",e);
//	}
//
//	@Override
//	public int txstate(String emp_state) {
//		Employee e=new Employee();
//		e.setEmp_state(emp_state);
//		return MybatisUtil.getSession().selectOne(EmployeeDao.class.getName()+".txstate",e);
//	}
//
//	@Override
//	public int lzstate(String emp_state) {
//		Employee e=new Employee();
//		e.setEmp_state(emp_state);
//		return MybatisUtil.getSession().selectOne(EmployeeDao.class.getName()+".lzstate",e);
//	}
//	@Override
//	public Employee findEmployeeById(int emp_id) {
//		session=MybatisUtil.getSession();
//		Employee e=new Employee();
//		e.setEmp_id(emp_id);
//		Employee selectOne = session.selectOne(EmployeeDao.class.getName()+".findEmployeeById",e);
//		return selectOne;
//	}
//	@Override
//	public int updateEmployee(Employee e) {
//		session=MybatisUtil.getSession();
//		EmployeeDao employeeDao = session.getMapper(EmployeeDao.class);
//		int update = employeeDao.updateEmployee(e);
//		session.commit();
//		return update;
//	}

	




	
}
