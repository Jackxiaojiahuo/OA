package model;

import java.io.Serializable;

/**
 * 员工角色类
 * @author Jack
 *
 */
public class EmployeeRole implements Serializable {
	/**
	 * 员工编号
	 */
	private Integer emp_id;
	/**
	 * 角色编号
	 */
	private Integer role_id;
	public EmployeeRole() {
		super();
	}
	public EmployeeRole(Integer emp_id, Integer role_id) {
		super();
		this.emp_id = emp_id;
		this.role_id = role_id;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	
}
