package dao;

import java.util.List;
import java.util.Map;

import model.Notice;

public interface NoticeDao {
	//主页面根据公告管理类别查询或全查
	List<Notice> NoticeShow(Map map);
	Integer NoticeShowCount(Map map);
	
	//查询不同的类别的行数
	int one();
	int two();
	int three();
	int four();
	
	//根据Id查询数据
	Notice Noticeid(int id);
	
	//添加公告
	int NoticeAdd(Notice n);
	
	//删除公告
	int NoticeDel(int id);
	
	//按主题查询 
	List<Notice> NoticTitle(Map map);
	Integer NoticTitleCount(Map map);
	
	//按创建时间查询
	List<Notice> NoticDate(Map map);
	Integer NoticDateCount(Map map);
	
	//按更新时间查询
	List<Notice> NoticDay(Map map);
	Integer NoticDayCount(Map map);
	
	
	//按关键字查询
	List<Notice> NoticeKeyword(Map map);
	Integer NoticeKeywordCount(Map map);
	
	//修改公告
	int NoticeUpdate(Notice notice);
	
	//查询是否更新公告
	List<Notice> NoticeUpdateDate(Notice notice);
}
