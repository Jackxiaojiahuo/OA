package biz.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.TopicBiz;
import dao.TopicDao;
import model.Click;
import model.Reply;
import model.Topic;
@Service
public class TopicBizImpl implements TopicBiz{
	/**知识社区*/
	@Autowired
	private TopicDao topicDao;
	/**
	 * 主页查询
	 */
	@Override
	public List<Topic> TopicShow(Map map) {
		return topicDao.TopicShow(map);
	}
	@Override
	public Integer TopicShowCount(Map map) {
		return topicDao.TopicShowCount(map);
	}
	
	/**
	 * 根据id查询
	 */
	@Override
	public Topic TopicShowId(Map map,String uid) {
		Topic t = topicDao.TopicShowId((int) map.get("id"));
		Click c=new Click();
		c.setuId(uid);
		c.settId(t.gettId());
		//点击率
		int clickUid = topicDao.ClickUid(c);
		System.out.println(clickUid);
		if(clickUid==0){
			topicDao.ClickAdd(c);
		}
		int clickShow = topicDao.ClickShow(t.gettId());
		t.settClickCoount(clickShow);
		//回复数
		int replyHf = topicDao.ReplyHf(t);
		List<Reply> replyShowId = topicDao.ReplyShowId(map);
		t.setR(replyShowId);
		t.settReplyCount(replyHf);
		TopicUp(t);
		return t;
	}
	/**
	 * 根据主题查询
	 */
	@Override
	public List<Topic> TopicTitle(Map map) {
		return topicDao.TopicTitle(map);
	}
	@Override
	public Integer TopicTitleCount(Map map) {
		return topicDao.TopicTitleCount(map);
	}
	
	/**
	 * 根据作者查询
	 */
	@Override
	public List<Topic> TopicUId(Map map) {
		return topicDao.TopicUId(map);
	}
	@Override
	public Integer TopicUIdCount(Map map) {
		return topicDao.TopicUIdCount(map);
	}
	
	/**
	 * 根据标签查询
	 */
	@Override
	public List<Topic> TopicLabel(Map map) {
		return topicDao.TopicLabel(map);
	}
	@Override
	public Integer TopicLabelCount(Map map) {
		return topicDao.TopicLabelCount(map);
	}
	
	/**
	 * 添加帖子
	 */
	@Override
	public int TopicAdd(Topic t) {
		int topicAdd = topicDao.TopicAdd(t);
		return topicAdd;
	}
	/**
	 * 修改主贴信息
	 */
	@Override
	public int TopicUp(Topic t) {
		int topicUp = topicDao.TopicUp(t);
		return topicUp;
	}
	/**
	 * 删除帖子
	 */
	@Override
	public int TopicDel(int id) {
		int topicDel = topicDao.TopicDel(id);
		return topicDel;
	}
	/**
	 * 添加回帖
	 */
	@Override
	public int ReplyAdd(Reply r) {
		int replyAdd = topicDao.ReplyAdd(r);
		return replyAdd;
	}
	
}
