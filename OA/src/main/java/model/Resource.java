package model;

import java.util.List;

/**
 * 资源类
 * @author Jack
 *
 */
public class Resource {
	/**
	 * 资源编号
	 */
	private Integer r_id;
	/**
	 * 资源名称
	 */
	private String r_name;
	/**
	 * 资源url地址
	 */
	private String r_url;
	/**
	 * 资源类型
	 */
	private Integer r_type;
	/**
	 * 是否基本资源
	 */
	private Integer r_check;
	/**
	 * 资源父编号
	 */
	private Integer r_pid;
	/**
	 * 资源子资源列表
	 */
	private List<Resource> childrenList;
	public Resource() {
		super();
	}
	public Resource(Integer r_id, String r_name, String r_url, Integer r_type, Integer r_check, Integer r_pid,
			List<Resource> childrenList) {
		super();
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_url = r_url;
		this.r_type = r_type;
		this.r_check = r_check;
		this.r_pid = r_pid;
		this.childrenList = childrenList;
	}
	public Integer getR_id() {
		return r_id;
	}
	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_url() {
		return r_url;
	}
	public void setR_url(String r_url) {
		this.r_url = r_url;
	}
	public Integer getR_type() {
		return r_type;
	}
	public void setR_type(Integer r_type) {
		this.r_type = r_type;
	}
	public Integer getR_check() {
		return r_check;
	}
	public void setR_check(Integer r_check) {
		this.r_check = r_check;
	}
	public Integer getR_pid() {
		return r_pid;
	}
	public void setR_pid(Integer r_pid) {
		this.r_pid = r_pid;
	}
	public List<Resource> getChildrenList() {
		return childrenList;
	}
	public void setChildrenList(List<Resource> childrenList) {
		this.childrenList = childrenList;
	}
	
	
	
}
