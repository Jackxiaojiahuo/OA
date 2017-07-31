package model;

import java.io.Serializable;

/**
 * 岗位角色类
 * 
 * @author Jack
 *
 */
public class Role implements Serializable{
	/**
	 * 角色编号
	 */
	private Integer role_id;
	/**
	 * 角色名称
	 */
	private String role_name;
	/**
	 * 角色描述
	 */
	private String role_description;
	/**
	 * 角色状态描述
	 */
	private Integer role_statu;
	
	public Role() {
		super();
	}

	

	public Role(Integer role_id, String role_name, String role_description) {
		super();
		this.role_id = role_id;
		this.role_name = role_name;
		this.role_description = role_description;
	}
	



	public Role(Integer role_id, String role_name, String role_description, Integer role_statu) {
		super();
		this.role_id = role_id;
		this.role_name = role_name;
		this.role_description = role_description;
		this.role_statu = role_statu;
	}



	public Integer getRole_id() {
		return role_id;
	}

	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}




	public String getRole_description() {
		return role_description;
	}

	public void setRole_description(String role_description) {
		this.role_description = role_description;
	}



	public Integer getRole_statu() {
		return role_statu;
	}



	public void setRole_statu(Integer role_statu) {
		this.role_statu = role_statu;
	}

}
