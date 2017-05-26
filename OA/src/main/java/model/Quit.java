package model;
/*
 * 离职实体类 
 * 
 */
public class Quit {
	private Integer q_id;//id
	private String q_theme;//主题
	private String q_priority;//优先级
	private String q_shopdate;//结束时间
	private String q_applydate;//申请时间
	private String q_post;//工作岗位
	private String q_joindate;//入职日期
	private String q_quit;//预计离职日期
	private String q_type;//离职类型
	private String q_reason;//离职原因
	private String q_transfer;//工作交接
	private String q_opinion;//主管意见
	public Department dept;
	public Employee em;//员工
	private Integer emp_id;
	private Integer depart_id;//部门
	
	public Quit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Quit(Integer q_id, String q_theme, String q_priority, String q_shopdate, String q_applydate, String q_post,
			String q_joindate, String q_quit, String q_type, String q_reason, String q_transfer, String q_opinion,
			Department dept, Employee em, Integer emp_id, Integer depart_id) {
		super();
		this.q_id = q_id;
		this.q_theme = q_theme;
		this.q_priority = q_priority;
		this.q_shopdate = q_shopdate;
		this.q_applydate = q_applydate;
		this.q_post = q_post;
		this.q_joindate = q_joindate;
		this.q_quit = q_quit;
		this.q_type = q_type;
		this.q_reason = q_reason;
		this.q_transfer = q_transfer;
		this.q_opinion = q_opinion;
		this.dept = dept;
		this.em = em;
		this.emp_id = emp_id;
		this.depart_id = depart_id;
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
	public Integer getQ_id() {
		return q_id;
	}
	public void setQ_id(Integer q_id) {
		this.q_id = q_id;
	}
	public String getQ_theme() {
		return q_theme;
	}
	public void setQ_theme(String q_theme) {
		this.q_theme = q_theme;
	}
	public String getQ_priority() {
		return q_priority;
	}
	public void setQ_priority(String q_priority) {
		this.q_priority = q_priority;
	}
	public String getQ_shopdate() {
		return q_shopdate;
	}
	public void setQ_shopdate(String q_shopdate) {
		this.q_shopdate = q_shopdate;
	}
	public String getQ_applydate() {
		return q_applydate;
	}
	public void setQ_applydate(String q_applydate) {
		this.q_applydate = q_applydate;
	}
	public String getQ_post() {
		return q_post;
	}
	public void setQ_post(String q_post) {
		this.q_post = q_post;
	}
	public String getQ_joindate() {
		return q_joindate;
	}
	public void setQ_joindate(String q_joindate) {
		this.q_joindate = q_joindate;
	}
	public String getQ_quit() {
		return q_quit;
	}
	public void setQ_quit(String q_quit) {
		this.q_quit = q_quit;
	}
	public String getQ_type() {
		return q_type;
	}
	public void setQ_type(String q_type) {
		this.q_type = q_type;
	}
	public String getQ_reason() {
		return q_reason;
	}
	public void setQ_reason(String q_reason) {
		this.q_reason = q_reason;
	}
	public String getQ_transfer() {
		return q_transfer;
	}
	public void setQ_transfer(String q_transfer) {
		this.q_transfer = q_transfer;
	}
	public String getQ_opinion() {
		return q_opinion;
	}
	public void setQ_opinion(String q_opinion) {
		this.q_opinion = q_opinion;
	}
	
}
