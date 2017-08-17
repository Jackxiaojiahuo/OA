package biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.NoticeBiz;
import dao.DepartmentDao;
import dao.NoticeDao;
import model.Department;
import model.Notice;
/**
 * 发布公告
 * @author wuyuan
 *
 */
@Service
public class NoticeBizImpl implements NoticeBiz{
	@Autowired
	private NoticeDao noticeDao;
		
	/**
	 * 主页面根据公告管理类别查询或全查
	 */
	@Override
	public List<Notice> NoticeShow(Map map) {
		List<Notice> noticeShow = noticeDao.NoticeShow(map);
		return noticeShow;
	}
	@Override
	public Integer NoticeShowCount(Map map) {
		return noticeDao.NoticeShowCount(map);
	}
	
	/**
	 * 查询不同的类别的行数
	 * @return
	 */
	@Override
	public List NoticeNum() {
		int one = noticeDao.one();
		int two = noticeDao.two();
		int three = noticeDao.three();
		int four = noticeDao.four();
		List count=new ArrayList();
		count.add(one);
		count.add(two);
		count.add(three);
		count.add(four);
		return count;
	}
	
	/**
	 * 根据Id查询详细信息
	 */
	@Override
	public Notice Noticeid(int id) {
		Notice noticeid = noticeDao.Noticeid(id);
		return noticeid;
	}
	
	/**
	 * 添加公告
	 */
	@Override
	public int NoticeAdd(Notice n) {
		int noticeAdd = noticeDao.NoticeAdd(n);
		return noticeAdd;
	}
	
	/**
	 * 删除公告
	 */
	@Override
	public int NoticeDel(int id) {
		int noticeDel = noticeDao.NoticeDel(id);
		return noticeDel;
	}
	
	/**
	 * 按主题查询 
	 */
	@Override
	public List<Notice> NoticTitle(Map map) {
		List<Notice> noticTitle = noticeDao.NoticTitle(map);
		return noticTitle;
	}
	@Override
	public Integer NoticTitleCount(Map map) {
		return noticeDao.NoticTitleCount(map);
	}
	
	/**
	 * 按创建时间查询
	 */
	@Override
	public List<Notice> NoticDate(Map map) {
		List<Notice> noticDate = noticeDao.NoticDate(map);
		return noticDate;
	}
	@Override
	public Integer NoticDateCount(Map map) {
		return noticeDao.NoticDateCount(map);
	}
	
	/**
	 * 按更新时间查询
	 */
	@Override
	public List<Notice> NoticDay(Map map) {
		List<Notice> noticDay = noticeDao.NoticDay(map);
		return noticDay;
	}
	@Override
	public Integer NoticDayCount(Map map) {
		return noticeDao.NoticDayCount(map);
	}
	
	/**
	 * 按关键字查询
	 */
	@Override
	public List<Notice> NoticeKeyword(Map map) {
		List<Notice> noticeKeyword = noticeDao.NoticeKeyword(map);
		return noticeKeyword;
	}
	@Override
	public Integer NoticeKeywordCount(Map map) {
		return noticeDao.NoticeKeywordCount(map);
	}
	
	/**
	 * 修改公告
	 */
	@Override
	public int NoticeUpdate(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.NoticeUpdate(notice);
	}

	/**
	 * 查询是否更新公告
	 */
	@Override
	public List<Notice> NoticeUpdateDate(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDao.NoticeUpdateDate(notice);
	}	
}