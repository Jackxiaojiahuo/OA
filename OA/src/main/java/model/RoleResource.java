package model;
/**
 * 角色资源类
 * @author Jack
 *
 */
public class RoleResource {
	/**
	 * 角色编号
	 */
	private Integer role_id;
	/**
	 * 资源编号
	 */
	private Integer res_id;
	public RoleResource() {
		super();
	}
	public RoleResource(Integer role_id, Integer res_id) {
		super();
		this.role_id = role_id;
		this.res_id = res_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public Integer getRes_id() {
		return res_id;
	}
	public void setRes_id(Integer res_id) {
		this.res_id = res_id;
	}

	
}
