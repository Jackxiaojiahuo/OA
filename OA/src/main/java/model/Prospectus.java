package model;

import java.io.Serializable;
/**
 * 工作计划
 * @author Administrator
 *
 */
public class Prospectus implements Serializable {
	private Integer prospectus_id; //计划id
	private String pros_state; // 工作计划状态
	private String prospectus_name; //计划名称
	private String prospectus_create_name; //计划创建人
	private Integer depart_id; //外键 所属部门  （从属于）
	private String prospectus_create_time; //开始时间
	private String prospectus_terminal_time;//结束时间
	private String prospectus_review_name; //计划评审人
	private String prospectus_executor_name;//计划执行人
	private String prospectus_executor_time;//执行时间
	private String prospectus_classify;//工作计划分类（年度计划）
	private Integer prospectus_content_id; //计划内容id
	private String prospectus_content; //计划内容
	private Department dept;//引用部门表
	
	
	public Prospectus(){
		super();	
	}

	public Prospectus(Integer prospectus_id, String pros_state, String prospectus_name, String prospectus_create_name,
			Integer depart_id, String prospectus_create_time, String prospectus_terminal_time,
			String prospectus_review_name, String prospectus_executor_name, String prospectus_executor_time,
			String prospectus_classify, Integer prospectus_content_id, String prospectus_content) {
		super();
		this.prospectus_id = prospectus_id;
		this.pros_state = pros_state;
		this.prospectus_name = prospectus_name;
		this.prospectus_create_name = prospectus_create_name;
		this.depart_id = depart_id;
		this.prospectus_create_time = prospectus_create_time;
		this.prospectus_terminal_time = prospectus_terminal_time;
		this.prospectus_review_name = prospectus_review_name;
		this.prospectus_executor_name = prospectus_executor_name;
		this.prospectus_executor_time = prospectus_executor_time;
		this.prospectus_classify = prospectus_classify;
		this.prospectus_content_id = prospectus_content_id;
		this.prospectus_content = prospectus_content;
	}







	public Department getDept() {
		return dept;
	}

	public void setDept(Department dept) {
		this.dept = dept;
	}

	public Integer getProspectus_id() {
		return prospectus_id;
	}
	public void setProspectus_id(Integer prospectus_id) {
		this.prospectus_id = prospectus_id;
	}
	
	

	public String getPros_state() {
		return pros_state;
	}

	public void setPros_state(String pros_state) {
		this.pros_state = pros_state;
	}

	public String getProspectus_name() {
		return prospectus_name;
	}
	public void setProspectus_name(String prospectus_name) {
		this.prospectus_name = prospectus_name;
	}
	public String getProspectus_create_name() {
		return prospectus_create_name;
	}
	public void setProspectus_create_name(String prospectus_create_name) {
		this.prospectus_create_name = prospectus_create_name;
	}
	
	public Integer getDepart_id() {
		return depart_id;
	}

	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}

	public String getProspectus_create_time() {
		return prospectus_create_time;
	}
	public void setProspectus_create_time(String prospectus_create_time) {
		this.prospectus_create_time = prospectus_create_time;
	}
	public String getProspectus_terminal_time() {
		return prospectus_terminal_time;
	}
	public void setProspectus_terminal_time(String prospectus_terminal_time) {
		this.prospectus_terminal_time = prospectus_terminal_time;
	}
	public String getProspectus_review_name() {
		return prospectus_review_name;
	}
	public void setProspectus_review_name(String prospectus_review_name) {
		this.prospectus_review_name = prospectus_review_name;
	}
	public String getProspectus_executor_name() {
		return prospectus_executor_name;
	}
	public void setProspectus_executor_name(String prospectus_executor_name) {
		this.prospectus_executor_name = prospectus_executor_name;
	}
	public String getProspectus_executor_time() {
		return prospectus_executor_time;
	}
	public void setProspectus_executor_time(String prospectus_executor_time) {
		this.prospectus_executor_time = prospectus_executor_time;
	}
	public Integer getProspectus_content_id() {
		return prospectus_content_id;
	}
	public void setProspectus_content_id(Integer prospectus_content_id) {
		this.prospectus_content_id = prospectus_content_id;
	}
	public String getProspectus_content() {
		return prospectus_content;
	}
	public void setProspectus_content(String prospectus_content) {
		this.prospectus_content = prospectus_content;
	}
	public String getProspectus_classify() {
		return prospectus_classify;
	}
	public void setProspectus_classify(String prospectus_classify) {
		this.prospectus_classify = prospectus_classify;
	}
	

	

}
