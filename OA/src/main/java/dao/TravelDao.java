package dao;

import java.util.List;
import java.util.Map;

import model.Travel;

public interface TravelDao {
	List<Travel> findAllTravel(Map map);//全部查询
	int findAllTravel_count(Map map);
	int addTravel(Travel t);//出差申请
	Travel findTravelById(int tv_id);//id查询
	List<Travel> findTravelBylike(Travel t);//根据模糊查询
}
