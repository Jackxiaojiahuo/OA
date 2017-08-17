package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 知识社区
 * 发帖方
 * @author wuyuan
 *
 */
public class Topic implements Serializable{
	private int tId            ;//发帖编号
	private String tUId           ;//发帖用户编号
	private int tSId           ;//版块编号
	private String tLabel      ;//发帖标签
	private String tTitle         ;//发帖主题
	private String tContent       ;//发帖内容
	private int tType          ;//发帖状态0普通 1精华
	private Date tTime          ;//发帖时间
	private int tReplyCount    ;//回复数
	private int tClickCoount   ;//记录数
	private int tLastReplyUseID;//最后发帖人编号
	private Date tLastReplayTime;//最后发帖人时间
	private int stateDel;
	
	public int getStateDel() {
		return stateDel;
	}
	public void setStateDel(int stateDel) {
		this.stateDel = stateDel;
	}
	private Employee epy;
	public Employee getEpy() {
		return epy;
	}
	public void setEpy(Employee epy) {
		this.epy = epy;
	}
	private List<Reply> r;//回帖信息集合
	public List<Reply> getR() {
		return r;
	}
	public void setR(List<Reply> r) {
		this.r = r;
	}
	public String gettLabel() {
		return tLabel;
	}
	public void settLabel(String tLabel) {
		this.tLabel = tLabel;
	}
	public int gettId() {
		return tId;
	}
	public void settId(int tId) {
		this.tId = tId;
	}
	
	public String gettUId() {
		return tUId;
	}
	public void settUId(String tUId) {
		this.tUId = tUId;
	}
	public int gettSId() {
		return tSId;
	}
	public void settSId(int tSId) {
		this.tSId = tSId;
	}
	public String gettTitle() {
		return tTitle;
	}
	public void settTitle(String tTitle) {
		this.tTitle = tTitle;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	public int gettType() {
		return tType;
	}
	public void settType(int tType) {
		this.tType = tType;
	}
	public Date gettTime() {
		return tTime;
	}
	public void settTime(Date tTime) {
		this.tTime = tTime;
	}
	public int gettReplyCount() {
		return tReplyCount;
	}
	public void settReplyCount(int tReplyCount) {
		this.tReplyCount = tReplyCount;
	}
	public int gettClickCoount() {
		return tClickCoount;
	}
	public void settClickCoount(int tClickCoount) {
		this.tClickCoount = tClickCoount;
	}
	public int gettLastReplyUseID() {
		return tLastReplyUseID;
	}
	public void settLastReplyUseID(int tLastReplyUseID) {
		this.tLastReplyUseID = tLastReplyUseID;
	}
	public Date gettLastReplayTime() {
		return tLastReplayTime;
	}
	public void settLastReplayTime(Date tLastReplayTime) {
		this.tLastReplayTime = tLastReplayTime;
	}
 }
