package model;

import java.io.Serializable;

/**
 * 会议室实体
 * @author Jack
 *
 */
public class Boardroom extends PageBean implements Serializable {
	/**
	 * 会议室编号
	 */
	private Integer id;
	/**
	 * 会议室名称
	 */
	private String name;
	/**
	 * 会议室容量
	 */
	private String capacity;
	/**
	 * 会议室位置
	 */
	private String location;
	/**
	 * 会议室设备
	 */
	private String device;
	/**
	 * 会议室状态
	 */
	private String status;
	/**
	 * 会议室描述
	 */
	private String description;
	/**
	 * 会议室图片
	 */
	private String pic;
	public Boardroom() {
		super();
	}

	public Boardroom(Integer id, String name, String capacity, String location, String device, String status,
			String description, String pic) {
		super();
		this.id = id;
		this.name = name;
		this.capacity = capacity;
		this.location = location;
		this.device = device;
		this.status = status;
		this.description = description;
		this.pic = pic;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
	
}

