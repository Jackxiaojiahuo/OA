package model;

import java.io.Serializable;

/**
 *外出 表
 * @author caohaoran
 *
 */
public class Egress implements Serializable{
	/**
	 *编号 
	 */
	private Integer eg_id;
	/**
	 * 主题
	 */
	private String eg_theme;
	/**
	 * 结束时间
	 */
	private String eg_shopdate;
	/**
	 * 申请时间
	 */
	private String eg_applydate;
	/**
	 * 外出时间
	 */
	private String eg_egress;
	/**
	 * 返回时间
	 */
	private String eg_return;
	/**
	 * 小时
	 */
	private String eg_hour;
	/**
	 * 天
	 */
	private String eg_day;
	/**
	 * 外出地点
	 */
	private String eg_site;
	/**
	 * 事由及说明
	 */
	private String eg_reason;
	/**
	 * 是否需要派车
	 */
	private String eg_send;
	/**
	 * 是否提前申请
	 */
	private String eg_advance;
	/**
	 * 部门的编号
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
	 * 员工的编号
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
	public Integer getEg_id() {
		return eg_id;
	}
	public void setEg_id(Integer eg_id) {
		this.eg_id = eg_id;
	}
	public String getEg_theme() {
		return eg_theme;
	}
	public void setEg_theme(String eg_theme) {
		this.eg_theme = eg_theme;
	}
	public String getEg_shopdate() {
		return eg_shopdate;
	}
	public void setEg_shopdate(String eg_shopdate) {
		this.eg_shopdate = eg_shopdate;
	}
	public String getEg_applydate() {
		return eg_applydate;
	}
	public void setEg_applydate(String eg_applydate) {
		this.eg_applydate = eg_applydate;
	}
	public String getEg_egress() {
		return eg_egress;
	}
	public void setEg_egress(String eg_egress) {
		this.eg_egress = eg_egress;
	}
	public String getEg_return() {
		return eg_return;
	}
	public void setEg_return(String eg_return) {
		this.eg_return = eg_return;
	}
	public String getEg_hour() {
		return eg_hour;
	}
	public void setEg_hour(String eg_hour) {
		this.eg_hour = eg_hour;
	}
	public String getEg_day() {
		return eg_day;
	}
	public void setEg_day(String eg_day) {
		this.eg_day = eg_day;
	}
	public String getEg_site() {
		return eg_site;
	}
	public void setEg_site(String eg_site) {
		this.eg_site = eg_site;
	}
	public String getEg_reason() {
		return eg_reason;
	}
	public void setEg_reason(String eg_reason) {
		this.eg_reason = eg_reason;
	}
	public String getEg_send() {
		return eg_send;
	}
	public void setEg_send(String eg_send) {
		this.eg_send = eg_send;
	}
	public String getEg_advance() {
		return eg_advance;
	}
	public void setEg_advance(String eg_advance) {
		this.eg_advance = eg_advance;
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
	public Egress(Integer eg_id, String eg_theme, String eg_shopdate, String eg_applydate,
			String eg_egress, String eg_return, String eg_hour, String eg_day, String eg_site, String eg_reason,
			String eg_send, String eg_advance, Integer depart_id, Department dept, Employee em, Integer emp_id,Integer eaa_state,String eaa_conclusion,String eaa_date) {
		super();
		this.eg_id = eg_id;
		this.eg_theme = eg_theme;
		this.eg_shopdate = eg_shopdate;
		this.eg_applydate = eg_applydate;
		this.eg_egress = eg_egress;
		this.eg_return = eg_return;
		this.eg_hour = eg_hour;
		this.eg_day = eg_day;
		this.eg_site = eg_site;
		this.eg_reason = eg_reason;
		this.eg_send = eg_send;
		this.eg_advance = eg_advance;
		this.depart_id = depart_id;
		this.dept = dept;
		this.em = em;
		this.emp_id = emp_id;
		this.eaa_state=eaa_state;
		this.eaa_conclusion=eaa_conclusion;
		this.eaa_date=eaa_date;
	}
	public Egress() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
