package model;
//员工
public class Employee {
	private Integer emp_id;//编号
	private String emp_code;//工号
	private String emp_name;//姓名
	private String emp_sex;//性别
	private String emp_state;//在职状态
	private String emp_mobile;//手机号
	private String emp_email;//电子邮件
	private String emp_birth;//出生日期
	private String emp_join;//入职日期
	private String emp_formal;//转正日期
	private String emp_leave;//离职日期
	private String emp_description;//描述
	private String emp_icon;//头像
	private Integer depart_id;//部门
	private String emp_pwd;//密码
	private String emp_status;//个人状态
	private String emp_phone;
	private String emp_qq;
	public Department dept;
	public String getEmp_status() {
		return emp_status;
	}
	public void setEmp_status(String emp_status) {
		this.emp_status = emp_status;
	}
	public String getEmp_phone() {
		return emp_phone;
	}
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getEmp_qq() {
		return emp_qq;
	}
	public void setEmp_qq(String emp_qq) {
		this.emp_qq = emp_qq;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(Integer emp_id, String emp_code, String emp_name, String emp_sex, String emp_state,
			String emp_mobile, String emp_email, String emp_birth, String emp_join, String emp_formal, String emp_leave,
			String emp_description, String emp_icon, Integer depart_id, String emp_pwd,String emp_status,String emp_phone,String emp_qq) {
		super();
		this.emp_id = emp_id;
		this.emp_code = emp_code;
		this.emp_name = emp_name;
		this.emp_sex = emp_sex;
		this.emp_state = emp_state;
		this.emp_mobile = emp_mobile;
		this.emp_email = emp_email;
		this.emp_birth = emp_birth;
		this.emp_join = emp_join;
		this.emp_formal = emp_formal;
		this.emp_leave = emp_leave;
		this.emp_description = emp_description;
		this.emp_icon = emp_icon;
		this.depart_id = depart_id;
		this.emp_pwd = emp_pwd;
		this.emp_status=emp_status;
		this.emp_phone=emp_phone;
		this.emp_qq=emp_qq;
	}
	public String getEmp_pwd() {
		return emp_pwd;
	}
	public void setEmp_pwd(String emp_pwd) {
		this.emp_pwd = emp_pwd;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_code() {
		return emp_code;
	}
	public void setEmp_code(String emp_code) {
		this.emp_code = emp_code;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_sex() {
		return emp_sex;
	}
	public void setEmp_sex(String emp_sex) {
		this.emp_sex = emp_sex;
	}
	public String getEmp_state() {
		return emp_state;
	}
	public void setEmp_state(String emp_state) {
		this.emp_state = emp_state;
	}
	public String getEmp_mobile() {
		return emp_mobile;
	}
	public void setEmp_mobile(String emp_mobile) {
		this.emp_mobile = emp_mobile;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	public String getEmp_birth() {
		return emp_birth;
	}
	public void setEmp_birth(String emp_birth) {
		this.emp_birth = emp_birth;
	}
	public String getEmp_join() {
		return emp_join;
	}
	public void setEmp_join(String emp_join) {
		this.emp_join = emp_join;
	}
	public String getEmp_formal() {
		return emp_formal;
	}
	public void setEmp_formal(String emp_formal) {
		this.emp_formal = emp_formal;
	}
	public String getEmp_leave() {
		return emp_leave;
	}
	public void setEmp_leave(String emp_leave) {
		this.emp_leave = emp_leave;
	}
	public String getEmp_description() {
		return emp_description;
	}
	public void setEmp_description(String emp_description) {
		this.emp_description = emp_description;
	}
	public String getEmp_icon() {
		return emp_icon;
	}
	public void setEmp_icon(String emp_icon) {
		this.emp_icon = emp_icon;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
}