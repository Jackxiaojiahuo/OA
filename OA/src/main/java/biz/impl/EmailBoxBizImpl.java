package biz.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EmailBoxBiz;
import dao.EmailBoxDao;
import model.Inbox;
import model.Outbox;
/**
 * 内部通讯录
 * @author wuyuan
 *
 */
@Service
public class EmailBoxBizImpl implements EmailBoxBiz{
	/**
	 * 邮箱
	 */
	@Autowired
	private EmailBoxDao emailDao;
	/**
	 * 查询草稿、已经发送邮件的信息
	 * @return
	 */
	@Override
	public List<Outbox> outboxShow(Map map) {
		// TODO Auto-generated method stub
		return emailDao.outboxShow(map);
	}

	/**
	 * 根据id查询草稿、发信箱信息（查询自己发送的或未发送的信息）
	 * @return
	 */
	@Override
	public Outbox outboxId(int send_id) {
		return emailDao.outboxId(send_id);
	}
	/**
	 * 查询草稿、发信箱的记录数
	 * @return
	 */
	@Override
	public int outboxCount(Outbox o) {
		return emailDao.outboxCount(o);
	}
	/**
	 * 修改草稿箱 
	 * @return
	 */
	@Override
	public int outboxUpdate(Outbox outbox) {
		return emailDao.outboxUpdate(outbox);
	}
	/**
	 * 删除草稿或发件信息
	 */
	@Override
	public int outboxDel(int send_id) {
		return emailDao.outboxDel(send_id);
	}
	/**
	 * 查询已读、未读页面信息
	 * @return
	 */
	@Override
	public List<Inbox> inboxShow(Map map){
		return emailDao.inboxShow(map);
	}
	/**
	 * 根据id查询已读、未读页面信息
	 */
	@Override
	public Inbox inboxId(int receive_id) {
		// TODO Auto-generated method stub
		Inbox inbox = emailDao.inboxId(receive_id);//查询已读或未读的信息
		if(inbox.getEmail_state()==0){//0是未读信息/1是已读信息
			inbox.setEmail_state(1);
			int inboxUp = emailDao.inboxUp(inbox);	
			if(inboxUp>0){
				return inbox;
			}
		}
		return inbox;
	}
	/**
	 * 查询已读、未读页面记录数
	 */
	@Override
	public int inboxCount(Inbox i) {
		// TODO Auto-generated method stub
		return emailDao.inboxCount(i);
	}
	/**
	 * 删除已读、未读
	 */
	@Override
	public int inboxDel(int receive_id) {
		return emailDao.inboxDel(receive_id);
	}
	/**
	 * 发送信息
	 * @param outbox
	 * @param inbox
	 * @return 
	 */
	@Override
	public int email(Outbox outbox, List<Inbox> iList) {
		int num=0;
		int outboxAdd = emailDao.outboxAdd(outbox);//添加到发件箱（把数据添加到数据库）
		if(outboxAdd>0){
			if(outbox.getSend_state()==1){
				num = util(iList);	
			}else{
				num=1;
			}
		}else{
			num=0;
		}
		return num;
	}
	/**
	 * 收件箱
	 * @param iList
	 * @return
	 */
	public int util(List<Inbox> iList){
		int num=0;
		for (int i = 0; i < iList.size(); i++) {
			Inbox inbox=iList.get(i);
			int inboxAdd = emailDao.inboxAdd(inbox);
			if(inboxAdd>0){
				num++;
			}
		}
		return num;
	}
	/**
	 * 修改草稿箱
	 */
	@Override
	public int emailUp(Outbox outbox, List<Inbox> iList) {
		int num=0;
		int update = emailDao.outboxUpdate(outbox);//发件箱
		if(update>0){
			if(outbox.getSend_state()==1){
				num = util(iList);	
			}else{
				num=1;
			}
		}else{
			num=0;
		}
		return num;
	}
	
	/**
	 *  按主题和发件人查询收件箱 
	 */
	@Override
	public List<Outbox> outboxCondition(Map map) {
		return emailDao.outboxCondition(map);
	}
	/**
	 *  按主题和发件人查询收件箱的记录数 
	 */
	@Override
	public Integer outboxConditionCount(Map map) {
		return emailDao.outboxConditionCount(map);
	}
	
	/**
	 * 按收件人查询发件箱 
	 */
	@Override
	public List<Inbox> inboxCondition(Map map) {
		return emailDao.inboxCondition(map);
	}
	/**
	 *  按收件人查询发件箱 的记录数 
	 */
	@Override
	public Integer inboxConditionCount(Map map) {
		return emailDao.inboxConditionCount(map);
	}

	@Override
	public List<Inbox> inboxDate(Inbox inbox) {
		// TODO Auto-generated method stub
		return emailDao.inboxDate(inbox);
	}

}
