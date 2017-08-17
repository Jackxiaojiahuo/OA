package biz;

import java.util.List;
import java.util.Map;

import model.Reply;
import model.Topic;

public interface TopicBiz {
	/**
	 * 主页查询
	 * @param map
	 * @return
	 */
	List<Topic> TopicShow(Map map);
	Integer TopicShowCount(Map map);
	
	/**
	 * 根据id查询
	 * @param map
	 * @param uid
	 * @return
	 */
	Topic TopicShowId(Map map,String uid);
	
	/**
	 * 根据主题查询
	 * @param map
	 * @return
	 */
	List<Topic> TopicTitle(Map map);
	Integer TopicTitleCount(Map map);
	
	/**
	 * 根据作者查询
	 * @param map
	 * @return
	 */
	List<Topic> TopicUId(Map map);
	Integer TopicUIdCount(Map map);
	
	/**
	 * 根据标签查询
	 * @param map
	 * @return
	 */
	List<Topic> TopicLabel(Map map);
	Integer TopicLabelCount(Map map);
		
	/**
	 * 添加帖子
	 * @param t
	 * @return
	 */
	int TopicAdd(Topic t);
	/**
	 * 修改主贴信息
	 * @param t
	 * @return
	 */
	int TopicUp(Topic t);
	/**
	 * 删除贴子
	 * @param id
	 * @return
	 */
	int TopicDel(int id);
	/**
	 * 添加回帖
	 * @param r
	 * @return
	 */
	int ReplyAdd(Reply r);
}
