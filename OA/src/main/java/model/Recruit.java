package model;

import java.io.Serializable;

/**
 * 招聘
 * @author caohaoran
 *
 */
public class Recruit implements Serializable{
	/**
	 * 编号
	 */
	private Integer re_id;
	/**
	 * 主题
	 */
	private String re_theme;
	/**
	 * 结束时间
	 */
	private String re_shopdate;
	/**
	 * 申请人
	 */
	private Integer emp_id;
	/**
	 * 需求岗位
	 */
	private String re_post;
	/**
	 * 申请时间
	 */
	private String re_applydate;
	/**
	 * 需求人数
	 */
	private Integer re_number;
	/**
	 * 希望到岗日期
	 */
	private String re_positiondate;
	/**
	 * 招聘原因说明
	 */
	private String re_reason;
	/**
	 *工作内容及职责 
	 */
	private String re_duty;
	/**
	 * 年龄
	 */
	private String re_age;
	/**
	 * 性别
	 */
	private String re_sex;
	/**
	 * 工作经验
	 */
	private String re_experience;
	/**
	 * 行业背景
	 */
	private String re_lb;
	/**
	 *其他要求 
	 */
	private String re_req;
	/**
	 *部门编号
	 */
	private Integer depart_id;
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
	/**
	 *部门实体类 
	 */
	public Department dept;
	/**
	 * 员工表
	 */
	public Employee em;
	public Recruit(Integer re_id, String re_theme, String re_shopdate,Integer emp_id,
			String re_post, String re_applydate, Integer re_number, String re_positiondate, String re_reason,
			String re_duty, String re_age, String re_sex, String re_experience, String re_lb, String re_req,
			Integer depart_id, Department dept,Integer eaa_state,String eaa_conclusion,String eaa_date,Employee em) {
		super();
		this.re_id = re_id;
		this.re_theme = re_theme;
		this.re_shopdate=re_shopdate;
		this.emp_id = emp_id;
		this.re_post = re_post;
		this.re_applydate = re_applydate;
		this.re_number = re_number;
		this.re_positiondate = re_positiondate;
		this.re_reason = re_reason;
		this.re_duty = re_duty;
		this.re_age = re_age;
		this.re_sex = re_sex;
		this.re_experience = re_experience;
		this.re_lb = re_lb;
		this.re_req = re_req;
		this.depart_id = depart_id;
		this.dept = dept;
		this.eaa_state=eaa_state;
		this.eaa_conclusion=eaa_conclusion;
		this.eaa_date=eaa_date;
		this.em=em;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
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
	public Recruit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getRe_id() {
		return re_id;
	}
	public void setRe_id(Integer re_id) {
		this.re_id = re_id;
	}
	public String getRe_theme() {
		return re_theme;
	}
	public void setRe_theme(String re_theme) {
		this.re_theme = re_theme;
	}
	
	public String getRe_shopdate() {
		return re_shopdate;
	}
	public void setRe_shopdate(String re_shopdate) {
		this.re_shopdate = re_shopdate;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getRe_post() {
		return re_post;
	}
	public void setRe_post(String re_post) {
		this.re_post = re_post;
	}
	public String getRe_applydate() {
		return re_applydate;
	}
	public void setRe_applydate(String re_applydate) {
		this.re_applydate = re_applydate;
	}
	public Integer getRe_number() {
		return re_number;
	}
	public void setRe_number(Integer re_number) {
		this.re_number = re_number;
	}
	public String getRe_positiondate() {
		return re_positiondate;
	}
	public void setRe_positiondate(String re_positiondate) {
		this.re_positiondate = re_positiondate;
	}
	public String getRe_reason() {
		return re_reason;
	}
	public void setRe_reason(String re_reason) {
		this.re_reason = re_reason;
	}
	public String getRe_duty() {
		return re_duty;
	}
	public void setRe_duty(String re_duty) {
		this.re_duty = re_duty;
	}
	public String getRe_age() {
		return re_age;
	}
	public void setRe_age(String re_age) {
		this.re_age = re_age;
	}
	public String getRe_sex() {
		return re_sex;
	}
	public void setRe_sex(String re_sex) {
		this.re_sex = re_sex;
	}
	public String getRe_experience() {
		return re_experience;
	}
	public void setRe_experience(String re_experience) {
		this.re_experience = re_experience;
	}
	public String getRe_lb() {
		return re_lb;
	}
	public void setRe_lb(String re_lb) {
		this.re_lb = re_lb;
	}
	public String getRe_req() {
		return re_req;
	}
	public void setRe_req(String re_req) {
		this.re_req = re_req;
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