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

	/**
	 * 曹浩然代码
	 */
	/**
	 * 展示全部员工的信息
	 */
	@Override
	public List<Employee> findAllEmployee(Map map) {
		return empDao.findAllEmployee(map);
	}
	/**
	 * 员工总计
	 */
	@Override
	public int findAllEmployee_count(Map map) {
		return empDao.findAllEmployee_count(map);
	}
	/**
	 * 根据员工的工号进行查询
	 */
	@Override
	public int findBycode(String emp_code) {
		return empDao.findBycode(emp_code);
	}
	@Override
	public Employee findEmployeeById(int emp_id) {
		return empDao.findEmployeeById(emp_id);
	}

	@Override
	public List<Employee> findEmployeeState(Map map) {
		return empDao.findEmployeeState(map);
	}
	@Override
	public int findEmployeeState_count(Map map) {
		// TODO Auto-generated method stub
		return empDao.findEmployeeState_count(map);
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
//		emp.setEmp_pwd(ShiroKit.md5(emp.getEmp_pwd(), emp.getEmp_code()));
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
	@Override
	public List<Employee> findEmployeeBylike(Map map){
		return empDao.findEmployeeBylike(map);
	}
	@Override
	public int findEmployeeBylike_count(Map map) {
		// TODO Auto-generated method stub
		return empDao.findEmployeeBylike_count(map);
	}
	
	
	
	
	/**
	 * 周志伟代码
	 */
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
	public int updatePwd(Employee emp) {
		return empDao.updatePwd(emp);
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
	public Employee login(String emp_code) {
		return empDao.loadByEmpcode(emp_code);
	}
	/**
	 * 根据员工编号查询所有资源
	 * @return
	 */
	@Override
	public List<Resource> listAllResource(Integer emp_id){
		return empDao.listAllResource(emp_id);
	}
	/**
	 * 修改员工状态信息
	 * @param emp
	 * @return
	 */
	@Override
	public int upEmp(Employee emp) {
		return empDao.upEmp(emp);
	}
	
}
