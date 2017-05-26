package dao;

import java.util.List;
import java.util.Map;

import model.Become;
import model.Egress;

public interface EgressDao {
	List<Egress> findAllEgress(Map map);//全部查询
	int findAllEgress_count(Map map);
	int addEgress(Egress e);// 外出申请
	Egress findEgressById(int eg_id);// id查询
	List<Egress> findEgressBylike(Egress e);//根据模糊查询
}
