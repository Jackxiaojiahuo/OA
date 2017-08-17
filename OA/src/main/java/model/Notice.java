package model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * 公告管理
 * 
 * @author wuyuan
 *
 */
public class Notice implements Serializable{
	private int noticeId;// 编号
	private String noticeState;// 发布状态
	private String noticePerson;// 负责人
	private String noticePartake;// 负责人工号
	private String noticeType;// 优先级
	private Integer noticeClassify;// 类别
	private String noticeKeyword;// 关键字
	private String noticeTitle;// 主题
	private String noticeContent;// 内容
	private String noticDate;// 创建时间
	private String noticDay;// 修改时间
	private int stateDel;// 删除
	private Department d;

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public String getNoticeState() {
		return noticeState;
	}

	public void setNoticeState(String noticeState) {
		this.noticeState = noticeState;
	}

	public String getNoticePerson() {
		return noticePerson;
	}

	public void setNoticePerson(String noticePerson) {
		this.noticePerson = noticePerson;
	}

	public String getNoticePartake() {
		return noticePartake;
	}

	public void setNoticePartake(String noticePartake) {
		this.noticePartake = noticePartake;
	}

	public String getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}

	public Integer getNoticeClassify() {
		return noticeClassify;
	}

	public void setNoticeClassify(Integer noticeClassify) {
		this.noticeClassify = noticeClassify;
	}

	public String getNoticeKeyword() {
		return noticeKeyword;
	}

	public void setNoticeKeyword(String noticeKeyword) {
		this.noticeKeyword = noticeKeyword;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getStateDel() {
		return stateDel;
	}

	public void setStateDel(int stateDel) {
		this.stateDel = stateDel;
	}

	public Department getD() {
		return d;
	}

	public void setD(Department d) {
		this.d = d;
	}

	public String getNoticDate() {
		return noticDate;
	}

	public void setNoticDate(String noticDate) {
		this.noticDate = noticDate.substring(0, noticDate.length() - 5);
	}

	public String getNoticDay() {
		return noticDay;
	}

	public void setNoticDay(String noticDay) {
		this.noticDay = noticDay.substring(0, noticDay.length() - 5);
	}

	public Notice(String noticeState, String noticePerson, String noticePartake, String noticeType, int noticeClassify,
			String noticeKeyword, String noticeTitle, String noticeContent, String noticDate) {
		super();
		this.noticeState = noticeState;
		this.noticePerson = noticePerson;
		this.noticePartake = noticePartake;
		this.noticeType = noticeType;
		this.noticeClassify = noticeClassify;
		this.noticeKeyword = noticeKeyword;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticDate = noticDate;
	}


	public Notice(int noticeId, String noticeState, String noticePerson, String noticePartake, String noticeType,
			int noticeClassify, String noticeKeyword, String noticeTitle, String noticeContent, String noticDate) {
		super();
		this.noticeId = noticeId;
		this.noticeState = noticeState;
		this.noticePerson = noticePerson;
		this.noticePartake = noticePartake;
		this.noticeType = noticeType;
		this.noticeClassify = noticeClassify;
		this.noticeKeyword = noticeKeyword;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticDate = noticDate;
	}

	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}

}
