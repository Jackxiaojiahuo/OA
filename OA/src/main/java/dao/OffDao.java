package dao;

import java.util.List;
import java.util.Map;

import model.Off;

/**
 *调休接口
 * @author caohaoran
 *
 */
public interface OffDao {
	/**
	 * 显示全部调休的申请单
	 * @param map
	 * @return
	 */
	List<Off> findAllOff(Map map);
	int findAllOff_count(Map map);
	/**
	 * 调休申请
	 * @param o
	 * @return
	 */
	int addOff(Off o);
	/**
	 * 展示调休的申请单
	 * @param of_id
	 * @return
	 */
	Off findOffById(int of_id);
	/**
	 * 根据提供的条件进行查询
	 * @param o
	 * @return
	 */
	List<Off> findOffBylike(Map map);
	int findOffBylike_count(Map map);
}
