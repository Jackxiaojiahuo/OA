package model;

import java.io.Serializable;
/**
 * 全部工作报告
 * @author Administrator
 *
 */
public class Report implements Serializable{
	private Integer report_id;//报告id
	private String repo_state;//工作报告状态
	private String report_name;//报告名称
	private String report_classify;//工作报告分类
	private Integer report_content_id;//报告内容id
	private String report_content;//报告内容
	private String report_create_name ;//报告创建人
	private String report_partake;//参与人
	private Integer depart_id; //外键 所属部门  （从属于）
	private String report_review_name ;//评审人
	private String report_create_time;//创建时间
	private Department dept;//引用部门表
	
	public  Report(){
		super();
	}
	
	public Report(Integer report_id, String repo_state, String report_name, String report_classify,
			Integer report_content_id, String report_content, String report_create_name, String report_partake,
			Integer depart_id, String report_review_name, String report_create_time) {
		super();
		this.report_id = report_id;
		this.repo_state = repo_state;
		this.report_name = report_name;
		this.report_classify = report_classify;
		this.report_content_id = report_content_id;
		this.report_content = report_content;
		this.report_create_name = report_create_name;
		this.report_partake = report_partake;
		this.depart_id = depart_id;
		this.report_review_name = report_review_name;
		this.report_create_time = report_create_time;
	}

	public Integer getReport_id() {
		return report_id;
	}
	public void setReport_id(Integer report_id) {
		this.report_id = report_id;
	}
	
	public String getRepo_state() {
		return repo_state;
	}

	public void setRepo_state(String repo_state) {
		this.repo_state = repo_state;
	}

	public String getReport_name() {
		return report_name;
	}
	public void setReport_name(String report_name) {
		this.report_name = report_name;
	}
	public String getReport_classify() {
		return report_classify;
	}
	public void setReport_classify(String report_classify) {
		this.report_classify = report_classify;
	}
	public Integer getReport_content_id() {
		return report_content_id;
	}
	public void setReport_content_id(Integer report_content_id) {
		this.report_content_id = report_content_id;
	}
	public String getReport_content() {
		return report_content;
	}
	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}
	public String getReport_create_name() {
		return report_create_name;
	}
	public void setReport_create_name(String report_create_name) {
		this.report_create_name = report_create_name;
	}
	public String getReport_partake() {
		return report_partake;
	}
	public void setReport_partake(String report_partake) {
		this.report_partake = report_partake;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getReport_review_name() {
		return report_review_name;
	}
	public void setReport_review_name(String report_review_name) {
		this.report_review_name = report_review_name;
	}
	public String getReport_create_time() {
		return report_create_time;
	}
	public void setReport_create_time(String report_create_time) {
		this.report_create_time = report_create_time;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	
	
	

}
