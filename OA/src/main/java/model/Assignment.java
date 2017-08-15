package model;

import java.io.Serializable;
/**
 * 工作任务
 * @author Administrator
 *
 */
public class Assignment implements Serializable{
	private Integer assignment_id ;//任务id
	private String assi_state;//工作任务状态
	private String assignment_name ;//任务名称
	private String assignment_create_name ;//创建人姓名
	private Integer depart_id; //外键 所属部门  （从属于）
	private String assignment_create_time;//开始时间
	private String assignment_terminal_time	;//结束时间
	private String assignment_executor_name	 ;//任务执行人
	private String assignment_workload;//工作量（实际天数）
	private String assignment_budget;//预估天数
	private String assignment_classify;//工作任务分类
	private String assignment_explain;//任务说明
	private String assignment_executor_fruit ;//执行结果
	private Department dept;//引用部门表
	
	
	public Assignment(){
		super();
	}
	
	
	


	public Assignment(Integer assignment_id, String assi_state, String assignment_name, String assignment_create_name,
			Integer depart_id, String assignment_create_time, String assignment_terminal_time,
			String assignment_executor_name, String assignment_workload, String assignment_budget,
			String assignment_classify, String assignment_explain, String assignment_executor_fruit) {
		super();
		this.assignment_id = assignment_id;
		this.assi_state = assi_state;
		this.assignment_name = assignment_name;
		this.assignment_create_name = assignment_create_name;
		this.depart_id = depart_id;
		this.assignment_create_time = assignment_create_time;
		this.assignment_terminal_time = assignment_terminal_time;
		this.assignment_executor_name = assignment_executor_name;
		this.assignment_workload = assignment_workload;
		this.assignment_budget = assignment_budget;
		this.assignment_classify = assignment_classify;
		this.assignment_explain = assignment_explain;
		this.assignment_executor_fruit = assignment_executor_fruit;
	}





	public Integer getAssignment_id() {
		return assignment_id;
	}
	public void setAssignment_id(Integer assignment_id) {
		this.assignment_id = assignment_id;
	}
	
	public String getAssi_state() {
		return assi_state;
	}

	public void setAssi_state(String assi_state) {
		this.assi_state = assi_state;
	}

	public String getAssignment_name() {
		return assignment_name;
	}
	public void setAssignment_name(String assignment_name) {
		this.assignment_name = assignment_name;
	}
	public String getAssignment_create_name() {
		return assignment_create_name;
	}
	public void setAssignment_create_name(String assignment_create_name) {
		this.assignment_create_name = assignment_create_name;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getAssignment_create_time() {
		return assignment_create_time;
	}
	public void setAssignment_create_time(String assignment_create_time) {
		this.assignment_create_time = assignment_create_time;
	}
	public String getAssignment_terminal_time() {
		return assignment_terminal_time;
	}
	public void setAssignment_terminal_time(String assignment_terminal_time) {
		this.assignment_terminal_time = assignment_terminal_time;
	}
	public String getAssignment_executor_name() {
		return assignment_executor_name;
	}
	public void setAssignment_executor_name(String assignment_executor_name) {
		this.assignment_executor_name = assignment_executor_name;
	}
	public String getAssignment_workload() {
		return assignment_workload;
	}
	public void setAssignment_workload(String assignment_workload) {
		this.assignment_workload = assignment_workload;
	}
	public String getAssignment_budget() {
		return assignment_budget;
	}
	public void setAssignment_budget(String assignment_budget) {
		this.assignment_budget = assignment_budget;
	}
	public String getAssignment_classify() {
		return assignment_classify;
	}
	public void setAssignment_classify(String assignment_classify) {
		this.assignment_classify = assignment_classify;
	}
	public String getAssignment_explain() {
		return assignment_explain;
	}
	public void setAssignment_explain(String assignment_explain) {
		this.assignment_explain = assignment_explain;
	}
	
	public String getAssignment_executor_fruit() {
		return assignment_executor_fruit;
	}
	public void setAssignment_executor_fruit(String assignment_executor_fruit) {
		this.assignment_executor_fruit = assignment_executor_fruit;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	
	
	
}
