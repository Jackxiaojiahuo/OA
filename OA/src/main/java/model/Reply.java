package model;

import java.io.Serializable;
import java.util.Date;

/**
 * 知识社区
 * 回帖跟帖
 * @author wuyuan
 *
 */
public class Reply implements Serializable{
	private int rId     ;//回帖编号
	private String rUId    ;//回帖用户编号
	private int rTId    ;//发帖的编号
	private String rContent;//回帖的内容
	private Date rTime   ;//回帖的时间
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getrUId() {
		return rUId;
	}
	public void setrUId(String rUId) {
		this.rUId = rUId;
	}
	public int getrTId() {
		return rTId;
	}
	public void setrTId(int rTId) {
		this.rTId = rTId;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getrTime() {
		return rTime;
	}
	public void setrTime(Date rTime) {
		this.rTime = rTime;
	}

	

}
