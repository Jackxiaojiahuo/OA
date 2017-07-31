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
	List<Furlough> findAllFurlough(Map map);//全部查询
	int findAllFurlough_count(Map map);
	int addFurlough(Furlough f);// 请休假申请
	Furlough findFurloughById(int fg_id);// id查询
	List<Furlough> findFurloughBylike(Furlough f);//根据模糊查询
}