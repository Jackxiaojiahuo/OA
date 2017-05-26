package model;
//招聘
public class Recruit {
	private Integer re_id;//id
	private String re_theme;//主题
	private String re_priority;//等级
	private String re_shopdate;//结束时间
	private String re_name;//申请人
	private String re_post;//需求岗位
	private String re_applydate;//申请时间
	private Integer re_number;//需求人数
	private String re_positiondate;//希望到岗日期
	private String re_reason;//招聘原因说明
	private String re_duty;//工作内容及职责
	private String re_age;//年龄
	private String re_sex;//性别
	private String re_experience;//工作经验
	private String re_lb;//行业背景
	private String re_req;//其他要求
	private Integer depart_id;//部门
	public Department dept;
	
	public Recruit(Integer re_id, String re_theme, String re_priority, String re_shopdate, String re_name,
			String re_post, String re_applydate, Integer re_number, String re_positiondate, String re_reason,
			String re_duty, String re_age, String re_sex, String re_experience, String re_lb, String re_req,
			Integer depart_id, Department dept) {
		super();
		this.re_id = re_id;
		this.re_theme = re_theme;
		this.re_priority = re_priority;
		this.re_shopdate = re_shopdate;
		this.re_name = re_name;
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
	}
	public String getRe_name() {
		return re_name;
	}
	public void setRe_name(String re_name) {
		this.re_name = re_name;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
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
	public String getRe_priority() {
		return re_priority;
	}
	public void setRe_priority(String re_priority) {
		this.re_priority = re_priority;
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
	
}                                