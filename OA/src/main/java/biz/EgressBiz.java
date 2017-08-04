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
	/**
	 * 显示全部外出人员的申请单
	 * @param map
	 * @return
	 */
	List<Egress> findAllEgress(Map map);
	int findAllEgress_count(Map map);
	/**
	 * 外出的申请
	 * @param e
	 * @return
	 */
	int addEgress(Egress e);
	/**
	 * 展示外出人员的详细申请单
	 * @param eg_id
	 * @return
	 */
	Egress findEgressById(int eg_id);
	/**
	 *根据条件进行模糊查询 
	 * @param e
	 * @return
	 */
	List<Egress> findEgressBylike(Map map);
	int findEgressBylike_count(Map map);
}
