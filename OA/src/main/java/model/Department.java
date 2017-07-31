package model;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author Jack
 *	部门表
 */
public class Department implements Serializable {
	/**
	 * 部门编号
	 */
	private Integer depart_id;
	/**
	 * 部门名称
	 */
	private String depart_name;
	/**
	 * 部门描述
	 */
	private String depart_description;
	/**
	 * 上级部门编号
	 */
	private Integer depart_pid;
	/**
	 * 部门状态
	 */
	private Integer depart_statu;
	/**
	 * 上级部门对象
	 */
	private Department depart_parent;
	/**
	 * 下级部门集合
	 */
	private List<Department> childrenList;

	public Department() {
		super();
	}
	
	public Department(Integer depart_id, String depart_name) {
		super();
		this.depart_id = depart_id;
		this.depart_name = depart_name;
	}
	
	public Department(Integer depart_id, Integer depart_statu) {
		super();
		this.depart_id = depart_id;
		this.depart_statu = depart_statu;
	}

	public Department(Integer depart_id, String depart_name, String depart_description, Integer depart_pid) {
		super();
		this.depart_id = depart_id;
		this.depart_name = depart_name;
		this.depart_description = depart_description;
		this.depart_pid = depart_pid;
	}
	
	public Department(Integer depart_id, String depart_name, String depart_description, Integer depart_pid,
			Integer depart_statu) {
		super();
		this.depart_id = depart_id;
		this.depart_name = depart_name;
		this.depart_description = depart_description;
		this.depart_pid = depart_pid;
		this.depart_statu = depart_statu;
	}

	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public String getDepart_description() {
		return depart_description;
	}
	public void setDepart_description(String depart_description) {
		this.depart_description = depart_description;
	}
	public Integer getDepart_pid() {
		return depart_pid;
	}
	public void setDepart_pid(Integer depart_pid) {
		this.depart_pid = depart_pid;
	}

	public List<Department> getChildrenList() {
		return childrenList;
	}

	public void setChildrenList(List<Department> childrenList) {
		this.childrenList = childrenList;
	}

	public Department getDepart_parent() {
		return depart_parent;
	}

	public void setDepart_parent(Department depart_parent) {
		this.depart_parent = depart_parent;
	}

	public Integer getDepart_statu() {
		return depart_statu;
	}

	public void setDepart_statu(Integer depart_statu) {
		this.depart_statu = depart_statu;
	}
	
}
