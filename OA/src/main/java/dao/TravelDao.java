package dao;

import java.util.List;
import java.util.Map;

import model.Travel;
/**
 * 出差接口
 * @author caohaoran
 *
 */
public interface TravelDao {
	/**
	 * 显示所有得出差的申请单
	 * @param map
	 * @return
	 */
	List<Travel> findAllTravel(Map map);
	/**
	 * 出差申请单的总计
	 * @param map
	 * @return
	 */
	int findAllTravel_count(Map map);
	/**
	 * 出差的申请
	 * @param t
	 * @return
	 */
	int addTravel(Travel t);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateTravel(Travel t);
	/**
	 * 展示出差申请单
	 * @param tv_id
	 * @return
	 */
	Travel findTravelById(int tv_id);//id查询
	/**
	 * 根据提供的条件查询
	 * @param map
	 * @return
	 */
	List<Travel> findTravelBylike(Map map);
	int findTravelBylike_count(Map map);
}
