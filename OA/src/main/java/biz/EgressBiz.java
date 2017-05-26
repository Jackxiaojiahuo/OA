package biz;

import java.util.List;
import java.util.Map;

import model.Become;
import model.Egress;
/**
 * 外出业务接口
 * @author caohaoran
 *
 */
public interface EgressBiz {
	List<Egress> findAllEgress(Map map);//全部查询
	int findAllEgress_count(Map map);
	int addEgress(Egress e);// 外出申请
	Egress findEgressById(int eg_id);// id查询
	List<Egress> findEgressBylike(Egress e);//根据模糊查询
}
