package dao;

import java.util.List;
import java.util.Map;

import model.Become;

public interface BecomeDao {
	List<Become> findAllBecome(Map map);//全部查询
	int findAllBecome_count(Map map);
	int addBecome(Become b);//转正申请
	Become findBecomeById(int b_id);//id查询
}
