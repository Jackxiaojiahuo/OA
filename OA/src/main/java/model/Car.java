package model;

import java.io.Serializable;
/**
 * 车辆实体
 * @author Jack
 *
 */
public class Car extends PageBean implements Serializable {
	/**
	 * 车辆编号
	 */
	private Integer id;
	/**
	 * 车名
	 */
	private String name;
	/**
	 * 车牌号
	 */
	private String no;
	/**
	 * 车辆图片
	 */
	private String pic;
	/**
	 * 车辆状态
	 */
	private String status;
	
	public Car() {
		super();
	}


	public Car(Integer id, String name, String no, String pic, String status) {
		super();
		this.id = id;
		this.name = name;
		this.no = no;
		this.pic = pic;
		this.status = status;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}


	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
	
}
