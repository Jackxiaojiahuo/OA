package model;

import java.io.Serializable;

/**
 * 加班
 * @author caohaoran
 *
 */
public class Overtime implements Serializable{
	/**
	 * 
	 */
	private Integer oi_id;
	/**
	 * 主题
	 */
	private String oi_theme;
	/**
	 * 结束时间
	 */
	private String oi_shopdate;
	/**
	 * 申请时间
	 */
	private String oi_applydate;
	/**
	 * 加班：从
	 */
	private String oi_cdate;
	/**
	 * 加班：到
	 */
	private String oi_ddate;
	/**
	 * 小时
	 */
	private String oi_hour;
	/**
	 * 天
	 */
	private String oi_day;
	/**
	 * 加班事由
	 */
	private String oi_reason;
	/**
	 * 
	 */
	private Integer depart_id;
	/**
	 * 部门
	 */
	public Department dept;
	/**
	 * 员工
	 */
	public Employee em;
	/**
	 * 
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
	public Integer getOi_id() {
		return oi_id;
	}
	public void setOi_id(Integer oi_id) {
		this.oi_id = oi_id;
	}
	public String getOi_theme() {
		return oi_theme;
	}
	public void setOi_theme(String oi_theme) {
		this.oi_theme = oi_theme;
	}
	public String getOi_shopdate() {
		return oi_shopdate;
	}
	public void setOi_shopdate(String oi_shopdate) {
		this.oi_shopdate = oi_shopdate;
	}
	public String getOi_applydate() {
		return oi_applydate;
	}
	public void setOi_applydate(String oi_applydate) {
		this.oi_applydate = oi_applydate;
	}
	public String getOi_cdate() {
		return oi_cdate;
	}
	public void setOi_cdate(String oi_cdate) {
		this.oi_cdate = oi_cdate;
	}
	public String getOi_ddate() {
		return oi_ddate;
	}
	public void setOi_ddate(String oi_ddate) {
		this.oi_ddate = oi_ddate;
	}
	public String getOi_hour() {
		return oi_hour;
	}
	public void setOi_hour(String oi_hour) {
		this.oi_hour = oi_hour;
	}
	public String getOi_day() {
		return oi_day;
	}
	public void setOi_day(String oi_day) {
		this.oi_day = oi_day;
	}
	public String getOi_reason() {
		return oi_reason;
	}
	public void setOi_reason(String oi_reason) {
		this.oi_reason = oi_reason;
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
	public Overtime() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Overtime(Integer oi_id, String oi_theme, String oi_shopdate, String oi_applydate,
			String oi_cdate, String oi_ddate, String oi_hour, String oi_day, String oi_reason, Integer depart_id,
			Department dept, Employee em, Integer emp_id,Integer eaa_state,String eaa_conclusion,String eaa_date) {
		super();
		this.oi_id = oi_id;
		this.oi_theme = oi_theme;
		this.oi_shopdate = oi_shopdate;
		this.oi_applydate = oi_applydate;
		this.oi_cdate = oi_cdate;
		this.oi_ddate = oi_ddate;
		this.oi_hour = oi_hour;
		this.oi_day = oi_day;
		this.oi_reason = oi_reason;
		this.depart_id = depart_id;
		this.dept = dept;
		this.em = em;
		this.emp_id = emp_id;
		this.eaa_state=eaa_state;
		this.eaa_conclusion=eaa_conclusion;
		this.eaa_date=eaa_date;
	}
	
}
