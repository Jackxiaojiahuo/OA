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
	List<Overtime> findAllOvertime(Map map);//全部查询
	int findAllOvertime_count(Map map);
	int addOvertime(Overtime o);// 加班申请
	Overtime findOvertimeById(int oi_id);// id查询
	List<Overtime> findOvertimeBylike(Overtime o);//根据模糊查询
}
