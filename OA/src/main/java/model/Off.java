package model;

import java.io.Serializable;

/**
 *调休 
 * @author caohaoran
 *
 */
public class Off implements Serializable {
	/**
	 * 编号
	 */
	private Integer of_id;
	/**
	 * 主题
	 */
	private String of_theme;
	/**
	 * 结束时间
	 */
	private String of_shopdate;
	/**
	 * 申请时间
	 */
	private String of_applydate;
	/**
	 * 调休：从
	 */
	private String of_cdate;
	/**
	 * 调休：到
	 */
	private String of_ddate;
	/**
	 * 小时
	 */
	private String of_hour;
	/**
	 * 天
	 */
	private String of_day;
	/**
	 * 调休事由
	 */
	private String of_reason;
	/**
	 * 工作代理人
	 */
	private String of_agent;
	/**
	 * 部门编号
	 */
	private Integer depart_id;
	/**
	 * 部门表
	 */
	public Department dept;
	/**
	 * 员工表
	 */
	public Employee em;
	/**
	 * 员工编号
	 */
	private Integer emp_id;
	/**
	 * 审批状态
	 */
	private Integer eaa_state;
	/**
	 * 审批结局
	 */
	private String eaa_conclusion;
	/**
	 * 审批时间
	 */
	private String eaa_date;
	public Off(Integer of_id, String of_theme, String of_shopdate, String of_applydate,
			String of_cdate, String of_ddate, String of_hour, String of_day, String of_reason, String of_agent,
			Integer depart_id, Department dept, Employee em, Integer emp_id,Integer eaa_state,String eaa_conclusion,String eaa_date) {
		super();
		this.of_id = of_id;
		this.of_theme = of_theme;
		this.of_shopdate = of_shopdate;
		this.of_applydate = of_applydate;
		this.of_cdate = of_cdate;
		this.of_ddate = of_ddate;
		this.of_hour = of_hour;
		this.of_day = of_day;
		this.of_reason = of_reason;
		this.of_agent = of_agent;
		this.depart_id = depart_id;
		this.dept = dept;
		this.em = em;
		this.emp_id = emp_id;
		this.eaa_state=eaa_state;
		this.eaa_conclusion=eaa_conclusion;
		this.eaa_date=eaa_date;
	}
	
	public Integer getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}

	public Employee getEm() {
		return em;
	}
	public void setEm(Employee em) {
		this.em = em;
	}
	public Integer getOf_id() {
		return of_id;
	}
	public void setOf_id(Integer of_id) {
		this.of_id = of_id;
	}
	public String getOf_theme() {
		return of_theme;
	}
	public void setOf_theme(String of_theme) {
		this.of_theme = of_theme;
	}
	public String getOf_shopdate() {
		return of_shopdate;
	}
	public void setOf_shopdate(String of_shopdate) {
		this.of_shopdate = of_shopdate;
	}
	public String getOf_applydate() {
		return of_applydate;
	}
	public void setOf_applydate(String of_applydate) {
		this.of_applydate = of_applydate;
	}
	public String getOf_cdate() {
		return of_cdate;
	}
	public void setOf_cdate(String of_cdate) {
		this.of_cdate = of_cdate;
	}
	public String getOf_ddate() {
		return of_ddate;
	}
	public void setOf_ddate(String of_ddate) {
		this.of_ddate = of_ddate;
	}
	public String getOf_hour() {
		return of_hour;
	}
	public void setOf_hour(String of_hour) {
		this.of_hour = of_hour;
	}
	public String getOf_day() {
		return of_day;
	}
	public void setOf_day(String of_day) {
		this.of_day = of_day;
	}
	public String getOf_reason() {
		return of_reason;
	}
	public void setOf_reason(String of_reason) {
		this.of_reason = of_reason;
	}
	public String getOf_agent() {
		return of_agent;
	}
	public void setOf_agent(String of_agent) {
		this.of_agent = of_agent;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	public Integer getEaa_state() {
		return eaa_state;
	}

	public void setEaa_state(Integer eaa_state) {
		this.eaa_state = eaa_state;
	}

	public String getEaa_conclusion() {
		return eaa_conclusion;
	}

	public void setEaa_conclusion(String eaa_conclusion) {
		this.eaa_conclusion = eaa_conclusion;
	}

	public String getEaa_date() {
		return eaa_date;
	}

	public void setEaa_date(String eaa_date) {
		this.eaa_date = eaa_date;
	}

	public Off() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
