package biz;

import java.util.List;
import java.util.Map;

import model.Furlough;
import model.Travel;
/**
 * 出差业务接口
 * @author caohaoran
 *
 */
public interface TravelBiz {
	List<Travel> findAllTravel(Map map);//全部查询
	int findAllTravel_count(Map map);
	int addTravel(Travel t);//出差申请
	Travel findTravelById(int tv_id);//id查询
	List<Travel> findTravelBylike(Travel t);//根据主题查询
}
