package model;

import java.io.Serializable;

/**
 * 出差
 * @author caohaoran
 *
 */
public class Travel implements Serializable{
	/**
	 * 编号
	 */
	private Integer tv_id;
	/**
	 * 主题
	 */
	private String tv_theme;
	/**
	 * 结束时间
	 */
	private String tv_shopdate;
	/**
	 * 申请时间
	 */
	private String tv_applydate;
	/**
	 *出差：从 
	 */
	private String tv_cdate;
	/**
	 * 出差：到
	 */
	private String tv_ddate;
	/**
	 * 目的地
	 */
	private String tv_termini;
	/**
	 * 出差事由
	 */
	private String tv_reason;
	/**
	 * 交通工具
	 */
	private String tv_traffic;
	/**
	 * 出差报告
	 */
	private String tv_report;
	/**
	 * 出差结果
	 */
	private String tv_result;
	/**
	 * 部门编号
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
	public Travel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Travel(Integer tv_id, String tv_theme,String tv_shopdate,String tv_applydate, String tv_cdate,
			String tv_ddate, String tv_termini, String tv_reason, String tv_traffic, String tv_report, String tv_result,
			Integer depart_id, Department dept, Employee em, Integer emp_id,Integer eaa_state,String eaa_conclusion,String eaa_date) {
		super();
		this.tv_id = tv_id;
		this.tv_theme = tv_theme;
		this.tv_shopdate=tv_shopdate;
		this.tv_applydate = tv_applydate;
		this.tv_cdate = tv_cdate;
		this.tv_ddate = tv_ddate;
		this.tv_termini = tv_termini;
		this.tv_reason = tv_reason;
		this.tv_traffic = tv_traffic;
		this.tv_report = tv_report;
		this.tv_result = tv_result;
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
	public Integer getTv_id() {
		return tv_id;
	}
	public void setTv_id(Integer tv_id) {
		this.tv_id = tv_id;
	}
	public String getTv_theme() {
		return tv_theme;
	}
	public void setTv_theme(String tv_theme) {
		this.tv_theme = tv_theme;
	}
	public String getTv_applydate() {
		return tv_applydate;
	}
	public void setTv_applydate(String tv_applydate) {
		this.tv_applydate = tv_applydate;
	}
	public String getTv_cdate() {
		return tv_cdate;
	}
	public void setTv_cdate(String tv_cdate) {
		this.tv_cdate = tv_cdate;
	}
	public String getTv_ddate() {
		return tv_ddate;
	}
	public void setTv_ddate(String tv_ddate) {
		this.tv_ddate = tv_ddate;
	}
	public String getTv_termini() {
		return tv_termini;
	}
	public void setTv_termini(String tv_termini) {
		this.tv_termini = tv_termini;
	}
	public String getTv_reason() {
		return tv_reason;
	}
	public void setTv_reason(String tv_reason) {
		this.tv_reason = tv_reason;
	}
	public String getTv_traffic() {
		return tv_traffic;
	}
	public void setTv_traffic(String tv_traffic) {
		this.tv_traffic = tv_traffic;
	}
	public String getTv_report() {
		return tv_report;
	}
	public void setTv_report(String tv_report) {
		this.tv_report = tv_report;
	}
	public String getTv_result() {
		return tv_result;
	}
	public void setTv_result(String tv_result) {
		this.tv_result = tv_result;
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
	public Employee getEm() {
		return em;
	}
	public void setEm(Employee em) {
		this.em = em;
	}
	public String getTv_shopdate() {
		return tv_shopdate;
	}
	public void setTv_shopdate(String tv_shopdate) {
		this.tv_shopdate = tv_shopdate;
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

	
}
