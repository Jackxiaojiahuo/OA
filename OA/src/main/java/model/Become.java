package model;

public class Become {
	private Integer b_id;//ID
	private String b_theme;//主题
	private String b_priority;//优先级
	private String b_shopdate;//结束时间
	private String b_applydate;//申请日期
	private String b_post;//申请岗位
	private String b_joindate;//入职日期
	private String b_become;//转正日期
	private String b_content;//试用期主要工作内容
	private String b_achievement;//*试用期主要工作成绩
	private String b_problem;//试用期存在的问题
	private String b_imagine;//对存在问题的改进设想
	private String b_comment;//*主管评语
	public Department dept;//部门
	private Integer depart_id;
	private Integer emp_id;
	public Employee em;//员工
	
	public Become() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Become(Integer b_id, String b_theme, String b_priority, String b_shopdate, String b_applydate, String b_post,
			String b_joindate, String b_become, String b_content, String b_achievement, String b_problem,
			String b_imagine, String b_comment, Department dept, Integer depart_id, Integer emp_id, Employee em) {
		super();
		this.b_id = b_id;
		this.b_theme = b_theme;
		this.b_priority = b_priority;
		this.b_shopdate = b_shopdate;
		this.b_applydate = b_applydate;
		this.b_post = b_post;
		this.b_joindate = b_joindate;
		this.b_become = b_become;
		this.b_content = b_content;
		this.b_achievement = b_achievement;
		this.b_problem = b_problem;
		this.b_imagine = b_imagine;
		this.b_comment = b_comment;
		this.dept = dept;
		this.depart_id = depart_id;
		this.emp_id = emp_id;
		this.em = em;
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
	public Integer getB_id() {
		return b_id;
	}
	public void setB_id(Integer b_id) {
		this.b_id = b_id;
	}
	public String getB_theme() {
		return b_theme;
	}
	public void setB_theme(String b_theme) {
		this.b_theme = b_theme;
	}
	public String getB_priority() {
		return b_priority;
	}
	public void setB_priority(String b_priority) {
		this.b_priority = b_priority;
	}
	public String getB_shopdate() {
		return b_shopdate;
	}
	public void setB_shopdate(String b_shopdate) {
		this.b_shopdate = b_shopdate;
	}
	public String getB_applydate() {
		return b_applydate;
	}
	public void setB_applydate(String b_applydate) {
		this.b_applydate = b_applydate;
	}
	public String getB_post() {
		return b_post;
	}
	public void setB_post(String b_post) {
		this.b_post = b_post;
	}
	public String getB_joindate() {
		return b_joindate;
	}
	public void setB_joindate(String b_joindate) {
		this.b_joindate = b_joindate;
	}
	public String getB_become() {
		return b_become;
	}
	public void setB_become(String b_become) {
		this.b_become = b_become;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_achievement() {
		return b_achievement;
	}
	public void setB_achievement(String b_achievement) {
		this.b_achievement = b_achievement;
	}
	public String getB_problem() {
		return b_problem;
	}
	public void setB_problem(String b_problem) {
		this.b_problem = b_problem;
	}
	public String getB_imagine() {
		return b_imagine;
	}
	public void setB_imagine(String b_imagine) {
		this.b_imagine = b_imagine;
	}
	public String getB_comment() {
		return b_comment;
	}
	public void setB_comment(String b_comment) {
		this.b_comment = b_comment;
	}

}
