package dao;

import java.util.List;
import java.util.Map;

import model.Assignment;
import model.Calendar;

/**
 * 全部工作日程dao
 * 
 * @author Administrator
 *
 */
public interface CalendarDao {
	/**
	 *  显示所有全部工作日程
	 * @param map
	 * @return
	 */
	List<Calendar> findAllCalendar(Map map);

	/**
	 *  查询总数
	 * @param map
	 * @return
	 */
	int findAllCalendar_count(Map map);

	/**
	 *  根据部门id分类查询
	 * @param depart_id
	 * @return
	 */
    Calendar findCalendarById(String depart_id);
}
