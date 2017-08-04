package model;
/**
 *请休假
 * @author caohaoran
 *
 */
public class Furlough {
	/**
	 * 编号
	 */
	private Integer fg_id;
	/**
	 * 主题
	 */
	private String fg_theme;
	/**
	 * 优先级
	 */
	private String fg_priority;
	/**
	 * 结束时间
	 */
	private String fg_shopdate;
	/**
	 * 申请时间
	 */
	private String fg_applydate;
	/**
	 * 休假：从
	 */
	private String fg_cdate;
	/**
	 * 休假：到
	 */
	private String fg_ddate;
	/**
	 * 小时
	 */
	private String fg_hour;
	/**
	 *天
	 */
	private String fg_day;
	/**
	 * 请休假类型
	 */
	private String fg_type;
	/**
	 *请休假事由 
	 */
	private String fg_reason;
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
	 *员工编号
	 */
	private Integer emp_id;
	public Furlough(Integer fg_id, String fg_theme, String fg_priority, String fg_shopdate,
			String fg_applydate, String fg_cdate, String fg_ddate, String fg_hour, String fg_day, String fg_type,
			String fg_reason, Integer depart_id, Department dept, Employee em, Integer emp_id) {
		super();
		this.fg_id = fg_id;
		this.fg_theme = fg_theme;
		this.fg_priority = fg_priority;
		this.fg_shopdate = fg_shopdate;
		this.fg_applydate = fg_applydate;
		this.fg_cdate = fg_cdate;
		this.fg_ddate = fg_ddate;
		this.fg_hour = fg_hour;
		this.fg_day = fg_day;
		this.fg_type = fg_type;
		this.fg_reason = fg_reason;
		this.depart_id = depart_id;
		this.dept = dept;
		this.em = em;
		this.emp_id = emp_id;
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
	public Integer getFg_id() {
		return fg_id;
	}
	public void setFg_id(Integer fg_id) {
		this.fg_id = fg_id;
	}
	public String getFg_theme() {
		return fg_theme;
	}
	public void setFg_theme(String fg_theme) {
		this.fg_theme = fg_theme;
	}
	public String getFg_priority() {
		return fg_priority;
	}
	public void setFg_priority(String fg_priority) {
		this.fg_priority = fg_priority;
	}
	public String getFg_shopdate() {
		return fg_shopdate;
	}
	public void setFg_shopdate(String fg_shopdate) {
		this.fg_shopdate = fg_shopdate;
	}
	public String getFg_applydate() {
		return fg_applydate;
	}
	public void setFg_applydate(String fg_applydate) {
		this.fg_applydate = fg_applydate;
	}
	public String getFg_cdate() {
		return fg_cdate;
	}
	public void setFg_cdate(String fg_cdate) {
		this.fg_cdate = fg_cdate;
	}
	public String getFg_ddate() {
		return fg_ddate;
	}
	public void setFg_ddate(String fg_ddate) {
		this.fg_ddate = fg_ddate;
	}
	public String getFg_hour() {
		return fg_hour;
	}
	public void setFg_hour(String fg_hour) {
		this.fg_hour = fg_hour;
	}
	public String getFg_day() {
		return fg_day;
	}
	public void setFg_day(String fg_day) {
		this.fg_day = fg_day;
	}
	public String getFg_type() {
		return fg_type;
	}
	public void setFg_type(String fg_type) {
		this.fg_type = fg_type;
	}
	public String getFg_reason() {
		return fg_reason;
	}
	public void setFg_reason(String fg_reason) {
		this.fg_reason = fg_reason;
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
	public Furlough() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
