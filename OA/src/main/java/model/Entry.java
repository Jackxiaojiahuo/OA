package model;
/**
 *入职 
 * @author caohaoran
 *
 */
public class Entry {
	/**
	 *编号
	 */
	private Integer et_id;
	/**
	 * 主题
	 */
	private String et_theme;
	/**
	 * 状态
	 */
	private String et_priority;
	/**
	 * 结束时间
	 */
	private String et_shopdate;
	/**
	 * 申请人
	 */
	private Integer emp_id;
	/**
	 * 入职日期
	 */
	private String et_joindate;
	/**
	 * 入职岗位
	 */
	private String et_post;
	/**
	 * 出生日期
	 */
	private String et_birth;
	/**
	 * 性别
	 */
	private String et_sex;
	/**
	 * 工作年限
	 */
	private String et_life;
	/**
	 * 备注
	 */
	private String et_remarks;
	/**
	 * 部门表
	 */
	public Department dept;
	/**
	 * 员工表
	 */
	public Employee em;
	/**
	 * 部门的编号
	 */
	private Integer depart_id;
	public Entry(Integer et_id, String et_theme, String et_priority, String et_shopdate,Integer emp_id, String et_joindate,
			String et_post, String et_birth, String et_sex, String et_life, String et_remarks, Department dept,Integer depart_id,Employee em) {
		super();
		this.et_id = et_id;
		this.et_theme = et_theme;
		this.et_priority = et_priority;
		this.et_shopdate = et_shopdate;
		this.emp_id = emp_id;
		this.et_joindate = et_joindate;
		this.et_post = et_post;
		this.et_birth = et_birth;
		this.et_sex = et_sex;
		this.et_life = et_life;
		this.et_remarks = et_remarks;
		this.dept = dept;
		this.depart_id = depart_id;
		this.em = em;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
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
	public Entry() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getEt_id() {
		return et_id;
	}
	public void setEt_id(Integer et_id) {
		this.et_id = et_id;
	}
	public String getEt_theme() {
		return et_theme;
	}
	public void setEt_theme(String et_theme) {
		this.et_theme = et_theme;
	}
	public String getEt_priority() {
		return et_priority;
	}
	public void setEt_priority(String et_priority) {
		this.et_priority = et_priority;
	}
	public String getEt_shopdate() {
		return et_shopdate;
	}
	public void setEt_shopdate(String et_shopdate) {
		this.et_shopdate = et_shopdate;
	}
	public String getEt_joindate() {
		return et_joindate;
	}
	public void setEt_joindate(String et_joindate) {
		this.et_joindate = et_joindate;
	}
	public String getEt_post() {
		return et_post;
	}
	public void setEt_post(String et_post) {
		this.et_post = et_post;
	}
	public String getEt_birth() {
		return et_birth;
	}
	public void setEt_birth(String et_birth) {
		this.et_birth = et_birth;
	}
	public String getEt_sex() {
		return et_sex;
	}
	public void setEt_sex(String et_sex) {
		this.et_sex = et_sex;
	}
	public String getEt_life() {
		return et_life;
	}
	public void setEt_life(String et_life) {
		this.et_life = et_life;
	}
	public String getEt_remarks() {
		return et_remarks;
	}
	public void setEt_remarks(String et_remarks) {
		this.et_remarks = et_remarks;
	}

}
