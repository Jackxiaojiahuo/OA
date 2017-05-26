package dao;

import java.util.List;
import java.util.Map;

import model.Off;


public interface OffDao {
	List<Off> findAllOff(Map map);//全部查询
	int findAllOff_count(Map map);
	int addOff(Off o);// 调休申请
	Off findOffById(int of_id);// id查询
	List<Off> findOffBylike(Off o);//根据模糊查询
}
