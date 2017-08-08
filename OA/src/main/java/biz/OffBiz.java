package biz;

import java.util.List;
import java.util.Map;

import model.Off;
/**
 * 调休业务接口
 * @author caohaoran
 *
 */
public interface OffBiz {
	/**
	 * 显示全部调休人员的申请单
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
	int addOff(Off of);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateOff(Off of);
	/**
	 * 展示调休人员的详细申请单
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
