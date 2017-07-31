package model;

import java.io.Serializable;
import java.util.Date;

/**
 * 在线用户
 * @author Jack
 *
 */
public class UserOnline implements Serializable{
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 用户登录ip
	 */
	private String ip;
	/**
	 * 用户登录时间
	 */
	private Date startTime;
	/**
	 * 用户编号,外键
	 */
	private Integer emp_id;
	/**
	 * 用户对象
	 */
	private Employee emp;
	/**
	 * jsp显示时间
	 */
	private String intoTime;
	public UserOnline() {
		super();
	}

	public UserOnline(Integer id, String ip, Date startTime, Integer emp_id, Employee emp, String intoTime) {
		super();
		this.id = id;
		this.ip = ip;
		this.startTime = startTime;
		this.emp_id = emp_id;
		this.emp = emp;
		this.intoTime = intoTime;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public Employee getEmp() {
		return emp;
	}
	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public String getIntoTime() {
		return intoTime;
	}

	public void setIntoTime(String intoTime) {
		this.intoTime = intoTime;
	}
	
}
