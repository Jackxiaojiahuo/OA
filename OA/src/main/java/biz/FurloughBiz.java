package biz;

import java.util.List;
import java.util.Map;

import model.Furlough;
/**
 * 请休假业务申请
 * @author caohaoran
 *
 */
public interface FurloughBiz {
	/**
	 * 显示全部请休假人员的申请单
	 * @param map
	 * @return
	 */
	List<Furlough> findAllFurlough(Map map);//全部查询
	int findAllFurlough_count(Map map);
	/**
	 * 请休假的申请
	 * @param f
	 * @return
	 */
	int addFurlough(Furlough f);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateFurlough(Furlough f);
	/**
	 *展示请休假人员的详细申请单
	 * @param fg_id
	 * @return
	 */
	Furlough findFurloughById(int fg_id);
	/**
	 *根据提供的条件进行查询
	 * @param map
	 * @return
	 */
	List<Furlough> findFurloughBylike(Map map);
	int findFurloughBylike_count(Map map);
}
