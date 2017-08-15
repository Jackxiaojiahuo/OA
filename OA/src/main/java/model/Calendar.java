package model;

import java.io.Serializable;

/**
 * 工作日程
 * 
 * @author Administrator
 *
 */
public class Calendar implements Serializable {
	private Integer calendar_id; //日程id
	private Integer depart_id; //外键 所属部门  
	private String calendar_starttime; //开始时间
	private String calendar_endtime; //结束时间
	private String calendar_create_name; //日程创建人
	private String calendar_title; //日程主题
	private String calendar_content; //日程内容
	private String calendar_annex; //附件
	private Department dept;//引用部门表
	
	
	public Calendar(){
		super();
	}
	public Calendar(Integer calendar_id, Integer depart_id, String calendar_starttime, String calendar_endtime,
			String calendar_create_name, String calendar_title, String calendar_content, String calendar_annex) {
		super();
		this.calendar_id = calendar_id;
		this.depart_id = depart_id;
		this.calendar_starttime = calendar_starttime;
		this.calendar_endtime = calendar_endtime;
		this.calendar_create_name = calendar_create_name;
		this.calendar_title = calendar_title;
		this.calendar_content = calendar_content;
		this.calendar_annex = calendar_annex;
	}
	public Integer getCalendar_id() {
		return calendar_id;
	}
	public void setCalendar_id(Integer calendar_id) {
		this.calendar_id = calendar_id;
	}
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getCalendar_starttime() {
		return calendar_starttime;
	}
	public void setCalendar_starttime(String calendar_starttime) {
		this.calendar_starttime = calendar_starttime;
	}
	public String getCalendar_endtime() {
		return calendar_endtime;
	}
	public void setCalendar_endtime(String calendar_endtime) {
		this.calendar_endtime = calendar_endtime;
	}
	public String getCalendar_create_name() {
		return calendar_create_name;
	}
	public void setCalendar_create_name(String calendar_create_name) {
		this.calendar_create_name = calendar_create_name;
	}
	public String getCalendar_title() {
		return calendar_title;
	}
	public void setCalendar_title(String calendar_title) {
		this.calendar_title = calendar_title;
	}
	public String getCalendar_content() {
		return calendar_content;
	}
	public void setCalendar_content(String calendar_content) {
		this.calendar_content = calendar_content;
	}
	public String getCalendar_annex() {
		return calendar_annex;
	}
	public void setCalendar_annex(String calendar_annex) {
		this.calendar_annex = calendar_annex;
	}
	public Department getDept() {
		return dept;
	}
	public void setDept(Department dept) {
		this.dept = dept;
	}
	
	

}
