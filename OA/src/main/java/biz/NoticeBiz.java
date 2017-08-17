
package biz;

import java.util.List;
import java.util.Map;

import model.Department;
import model.Notice;

public interface NoticeBiz {
	/**
	 * 主页面根据公告管理类别查询或全查
	 * @param map
	 * @return
	 */
	List<Notice> NoticeShow(Map map);
	Integer NoticeShowCount(Map map);
	
	/**
	 * 查询不同的类别的行数
	 * @return
	 */
	List NoticeNum();
	
	/**
	 * 根据Id查询数据
	 * @param id
	 * @return
	 */
	Notice Noticeid(int id);
	
	/**
	 * 添加公告
	 * @param n
	 * @return
	 */
	int NoticeAdd(Notice n);
	
	/**
	 * 删除公告
	 * @param id
	 * @return
	 */
	int NoticeDel(int id);
	
	/**
	 * 按主题查询 
	 * @param map
	 * @return
	 */
	List<Notice> NoticTitle(Map map);
	Integer NoticTitleCount(Map map);
	
	/**
	 * 按创建时间查询
	 * @param map
	 * @return
	 */
	List<Notice> NoticDate(Map map);
	Integer NoticDateCount(Map map);
	
	/**
	 * 按更新时间查询
	 * @param map
	 * @return
	 */
	List<Notice> NoticDay(Map map);
	Integer NoticDayCount(Map map);
	
	/**
	 * 按关键字查询
	 * @param map
	 * @return
	 */
	List<Notice> NoticeKeyword(Map map);
	Integer NoticeKeywordCount(Map map);
	
	/**
	 * 修改公告
	 * @param notice
	 * @return
	 */
	int NoticeUpdate(Notice notice);
	
	/**
	 * 查询是否更新公告
	 * @param notice
	 * @return
	 */
	List<Notice> NoticeUpdateDate(Notice notice);
}
