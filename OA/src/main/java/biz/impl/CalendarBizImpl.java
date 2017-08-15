package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.CalendarBiz;
import dao.CalendarDao;
import model.Calendar;
@Service
public class CalendarBizImpl implements CalendarBiz{
	@Autowired
	private CalendarDao calendarDao;
	//显示全部工作日程
	@Override
	public List<Calendar> findAllCalendar(Map map) {
		// TODO Auto-generated method stub
		return calendarDao.findAllCalendar(map);
	}
	// 查询总数
	@Override
	public int findAllCalendar_count(Map map) {
		// TODO Auto-generated method stub
		return calendarDao.findAllCalendar_count(map);
	}
	// 根据部门id分类查询
	@Override
	public Calendar findCalendarById(String depart_id) {
		// TODO Auto-generated method stub
		return calendarDao.findCalendarById(depart_id);
	}

}
