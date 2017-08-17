package dao;

import java.util.List;
import java.util.Map;

import model.Inbox;
import model.Outbox;

public interface EmailBoxDao {
	
	
	//发件箱
	
	/**
	 * 查询草稿、发信箱页面信息
	 * @return
	 */
	List<Outbox> outboxShow(Map map);
	/**
	 * 根据id查询草稿、发信箱信息
	 * @return
	 */
	Outbox outboxId(int send_id);
	/**
	 * 查询草稿、发信箱的记录数
	 * @return
	 */
	int outboxCount(Outbox o);
	/**
	 * 添加一条草稿、发送一条信件
	 */
	int outboxAdd(Outbox outbox);
	/**
	 * 修改草稿箱 
	 * @return
	 */
	int outboxUpdate(Outbox outbox);
	/**
	 * 删除草稿或发件信息
	 */
	int outboxDel(int send_id);
	
	//收件箱
	
	/**
	 * 查询已读、未读页面信息
	 * @return
	 */
	List<Inbox> inboxShow(Map map);
	/**
	 * 根据id查询已读、未读页面信息
	 */
	Inbox inboxId(int receive_id);
	/**
	 * 查询已读、未读页面记录数
	 */
	int inboxCount(Inbox i);
	/**
	 * 添加已读、未读
	 * @return
	 */
	int inboxAdd(Inbox inbox);
	/**
	 * 修改状态
	 * @return
	 */
	int inboxUp(Inbox inbox);
	/**
	 * 删除已读、未读
	 */
	int inboxDel(int receive_id);
	/**
	 *  按主题和发件人查询收件箱 
	 */
	List<Outbox> outboxCondition(Map map);
	Integer outboxConditionCount(Map map);
	/**
	 * 按收件人查询发件箱 
	 */
	List<Inbox> inboxCondition(Map map);
	Integer inboxConditionCount(Map map);
	
	List<Inbox> inboxDate(Inbox inbox);
}