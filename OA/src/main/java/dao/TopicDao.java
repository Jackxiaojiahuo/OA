package dao;

import java.util.List;
import java.util.Map;

import model.Click;
import model.Reply;
import model.Topic;

public interface TopicDao {
	//主页查询
	List<Topic> TopicShow(Map map);
	Integer TopicShowCount(Map map);
	
	//添加帖子
	int TopicAdd(Topic t);
	//根据id查询
	Topic TopicShowId(int id);
	List<Reply> ReplyShowId(Map map);
	
	//置顶查询
	List<Topic> TopicShowTop(Topic t);
	//根据主题查询
	List<Topic> TopicTitle(Map map);
	Integer TopicTitleCount(Map map);
	
	//根据作者查询
	List<Topic> TopicUId(Map map);
	Integer TopicUIdCount(Map map);
	
	//根据标签查询
	List<Topic> TopicLabel(Map map);
	Integer TopicLabelCount(Map map);
	
	//修改主贴信息
	int TopicUp(Topic t);
	//删除主帖
	int TopicDel(int id);
	//主贴的点击率
	int ClickShow(int tid);
	//查询点击率存在吗
	int ClickUid(Click c);
	//添加点击率
	int ClickAdd(Click c);
	//回复数
	int ReplyHf(Topic t);
	//添加回帖
	int ReplyAdd(Reply r);
	
}
