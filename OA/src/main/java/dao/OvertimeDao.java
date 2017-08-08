package dao;

import java.util.List;
import java.util.Map;

import model.Overtime;
/**
 * 加班接口
 * @author caohaoran
 *
 */
public interface OvertimeDao {
	/**
	 * 显示全部的加班申请单
	 * @param map
	 * @return
	 */
	List<Overtime> findAllOvertime(Map map);
	int findAllOvertime_count(Map map);
	/**
	 * 加班申请
	 * @param o
	 * @return
	 */
	int addOvertime(Overtime ot);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateOvertime(Overtime ot);
	/**
	 * 展示加班申请单
	 * @param oi_id
	 * @return
	 */
	Overtime findOvertimeById(int oi_id);
	/**
	 * 根据提供的条件进行查询
	 * @param map
	 * @return
	 */
	List<Overtime> findOvertimeBylike(Map map);
	int findOvertimeBylike_count(Map map);
}
