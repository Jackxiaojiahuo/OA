package model;

import java.io.Serializable;
import java.util.Date;

/**
 * 收件箱
 * @author wuyuan
 *
 */
public class Inbox implements Serializable{
	private int receive_id    ;//收信编号
	private String inbox_sender  ;//发信人 一个用户发送
	private String inbox_senderName;
	private String inbox_receiver;//收件人   一到多个用户接收
	private String inbox_receiverName;
	private String inbox_title   ;//主题 
	private String inbox_date    ;//收信日期
	private String inbox_content ;//内容
	private int email_state   ;//邮件状态	0表示未读，1表示已读
	private int stateDel;//删除
	
	public int getStateDel() {
		return stateDel;
	}
	public void setStateDel(int stateDel) {
		this.stateDel = stateDel;
	}
	public int getReceive_id() {
		return receive_id;
	}
	public void setReceive_id(int receive_id) {
		this.receive_id = receive_id;
	}
	public String getInbox_sender() {
		return inbox_sender;
	}
	public void setInbox_sender(String inbox_sender) {
		this.inbox_sender = inbox_sender;
	}
	public String getInbox_title() {
		return inbox_title;
	}
	public void setInbox_title(String inbox_title) {
		this.inbox_title = inbox_title;
	}
	public String getInbox_senderName() {
		return inbox_senderName;
	}
	public void setInbox_senderName(String inbox_senderName) {
		this.inbox_senderName = inbox_senderName;
	}
	public String getInbox_receiver() {
		return inbox_receiver;
	}
	public void setInbox_receiver(String inbox_receiver) {
		this.inbox_receiver = inbox_receiver;
	}
	public String getInbox_receiverName() {
		return inbox_receiverName;
	}
	public void setInbox_receiverName(String inbox_receiverName) {
		this.inbox_receiverName = inbox_receiverName;
	}
	
	public String getInbox_date() {
		return inbox_date;
	}
	public void setInbox_date(String inbox_date) {
		this.inbox_date = inbox_date;
	}
	public String getInbox_content() {
		return inbox_content;
	}
	public void setInbox_content(String inbox_content) {
		this.inbox_content = inbox_content;
	}
	public int getEmail_state() {
		return email_state;
	}
	public void setEmail_state(int email_state) {
		this.email_state = email_state;
	}
	public Inbox() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Inbox(String inbox_receiver, int email_state) {
		super();
		this.inbox_receiver = inbox_receiver;
		this.email_state = email_state;
	}
	
	
}
