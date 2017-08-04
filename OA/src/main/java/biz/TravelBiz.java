package biz;

import java.util.List;
import java.util.Map;

import model.Travel;
/**
 * 出差业务接口
 * @author caohaoran
 *
 */
public interface TravelBiz {
	/**
	 * 显示全部出差人员的申请信息
	 * @param map
	 * @return
	 */
	List<Travel> findAllTravel(Map map);
	int findAllTravel_count(Map map);
	/**
	 * 出差申请
	 * @param t
	 * @return
	 */
	int addTravel(Travel t);
	/**
	 * 展示出差人员的详细申请单
	 * @param tv_id
	 * @return
	 */
	Travel findTravelById(int tv_id);
	/**
	 * 根据条件进行模糊查询
	 * @param t
	 * @return
	 */
	List<Travel> findTravelBylike(Map map);
	int findTravelBylike_count(Map map);
}
