package biz;

import java.util.List;
import java.util.Map;

import model.Inbox;
import model.Outbox;

public interface EmailBoxBiz {
	/**
	 * 查询草稿、已经发送邮件的信息
	 * @return
	 */
	List<Outbox> outboxShow(Map map);
	
	/**
	 * 根据id查询草稿、发信箱信息（查询自己发送的或未发送的信息）
	 * @return
	 */
	Outbox outboxId(int send_id);
	
	/**
	 * 查询草稿、发信箱的记录数
	 * @return
	 */
	int outboxCount(Outbox o);
	
	/**
	 * 修改草稿箱 
	 * @return
	 */
	int outboxUpdate(Outbox outbox);
	/**
	 * 删除草稿或发件信息
	 */
	int outboxDel(int send_id);

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
	 * 删除已读、未读
	 */
	int inboxDel(int receive_id);
	/**
	 * 添加信息
	 * @param outbox
	 * @param inbox
	 * @return
	 */
	int email(Outbox outbox, List<Inbox> iList);
	/**
	 * 修改信息
	 * @param outbox
	 * @param iList
	 * @return
	 */
	int emailUp(Outbox outbox, List<Inbox> iList);
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
	
	/**
	 * 查询是否更新
	 * @param inbox
	 * @return
	 */
	List<Inbox> inboxDate(Inbox inbox);
}
