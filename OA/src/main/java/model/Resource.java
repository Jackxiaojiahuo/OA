package model;
/**
 * 资源类
 * @author Jack
 *
 */
public class Resource {
	private Integer r_id;
	private String r_name;
	/**
	 * 权限地址
	 */
	private String r_url;
	private String r_url1;
	private Integer r_type;
	
	public Resource(Integer r_id, String r_name, String r_url, String r_url1, Integer r_type) {
		super();
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_url = r_url;
		this.r_url1 = r_url1;
		this.r_type = r_type;
	}

	public Resource() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "Resource [r_id=" + r_id + ", r_name=" + r_name + ", r_url=" + r_url + ", r_url1=" + r_url1 + ", r_type="
				+ r_type + "]";
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

	public String getR_url1() {
		return r_url1;
	}

	public void setR_url1(String r_url1) {
		this.r_url1 = r_url1;
	}

	public Integer getR_type() {
		return r_type;
	}

	public void setR_type(Integer r_type) {
		this.r_type = r_type;
	}
	
}
