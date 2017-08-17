package model;

import java.io.Serializable;
import java.util.Date;

/**
 * 发件箱
 * @author wuyuan
 *
 */
public class Outbox implements Serializable{
	private int send_id         ;//发件编号
	private String outbox_sender   ;//发信人编号
	private String outbox_receiver ;//收信人
	private String outbox_receiverName ;//收信人
	private String outbox_title    ;//主题
	private String outbox_content  ;//内容
	private Date outbox_date;
	private int send_state      ;//发送还是保存草稿 ：草稿0 发送1
	private int stateDel;//删除
	

	
	public int getStateDel() {
		return stateDel;
	}
	public void setStateDel(int stateDel) {
		this.stateDel = stateDel;
	}
	public String getOutbox_receiver() {
		return outbox_receiver;
	}
	public void setOutbox_receiver(String outbox_receiver) {
		this.outbox_receiver = outbox_receiver;
	}
	public int getSend_id() {
		return send_id;
	}
	public void setSend_id(int send_id) {
		this.send_id = send_id;
	}
	public String getOutbox_sender() {
		return outbox_sender;
	}
	public void setOutbox_sender(String outbox_sender) {
		this.outbox_sender = outbox_sender;
	}
	public String getOutbox_receiverName() {
		return outbox_receiverName;
	}
	public void setOutbox_receiverName(String outbox_receiverName) {
		this.outbox_receiverName = outbox_receiverName;
	}
	public String getOutbox_title() {
		return outbox_title;
	}
	public void setOutbox_title(String outbox_title) {
		this.outbox_title = outbox_title;
	}
	public String getOutbox_content() {
		return outbox_content;
	}
	public void setOutbox_content(String outbox_content) {
		this.outbox_content = outbox_content;
	}
	public Date getOutbox_date() {
		return outbox_date;
	}
	public void setOutbox_date(Date outbox_date) {
		this.outbox_date = outbox_date;
	}
	public int getSend_state() {
		return send_state;
	}
	public void setSend_state(int send_state) {
		this.send_state = send_state;
	}
	public Outbox() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Outbox(String outbox_sender, int send_state) {
		super();
		this.outbox_sender = outbox_sender;
		this.send_state = send_state;
	}
}
