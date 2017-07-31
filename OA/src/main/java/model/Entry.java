package model;
//入职
public class Entry {
	private Integer et_id;//id
	private String et_theme;//主题
	private String et_priority;//状态
	private String et_shopdate;//结束时间
	private String et_name;//申请人
	private String et_joindate;//入职日期
	private String et_post;//入职岗位
	private String et_birth;//出生日期
	private String et_sex;//性别
	private String et_life;//工作年限
	private String et_remarks;// 备注
	public Department dept;
	private Integer depart_id;//部门
	public Entry(Integer et_id, String et_theme, String et_priority, String et_shopdate,String et_name, String et_joindate,
			String et_post, String et_birth, String et_sex, String et_life, String et_remarks, Department dept,Integer depart_id) {
		super();
		this.et_id = et_id;
		this.et_theme = et_theme;
		this.et_priority = et_priority;
		this.et_shopdate = et_shopdate;
		this.et_name = et_name;
		this.et_joindate = et_joindate;
		this.et_post = et_post;
		this.et_birth = et_birth;
		this.et_sex = et_sex;
		this.et_life = et_life;
		this.et_remarks = et_remarks;
		this.dept = dept;
		this.depart_id = depart_id;
	}
	public String getEt_name() {
		return et_name;
	}
	public void setEt_name(String et_name) {
		this.et_name = et_name;
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