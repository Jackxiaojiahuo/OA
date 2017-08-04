package biz;

import java.util.List;
import java.util.Map;

import model.Overtime;
/**
 * 加班业务接口
 * @author caohaoran
 *
 */
public interface OvertimeBiz {
	/**
	 * 显示全部加班人员的申请单
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
	int addOvertime(Overtime o);
	/**
	 * 展示加班的详细申请单
	 * @param oi_id
	 * @return
	 */
	Overtime findOvertimeById(int oi_id);
	/**
	 * 根据条件进行模糊查询
	 * @param o
	 * @return
	 */
	List<Overtime> findOvertimeBylike(Map map);
	int findOvertimeBylike_count(Map map);
}
