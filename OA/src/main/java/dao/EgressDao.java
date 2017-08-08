package dao;

import java.util.List;
import java.util.Map;

import model.Egress;
/**
 * 外出接口
 * @author caohaoran
 *
 */
public interface EgressDao {
	/**
	 * 显示全部外出的申请单
	 * @param map
	 * @return
	 */
	List<Egress> findAllEgress(Map map);
	/**
	 * 外出的申请单的总计
	 * @param map
	 * @return
	 */
	int findAllEgress_count(Map map);
	/**
	 * 外出的申请
	 * @param e
	 * @return
	 */
	int addEgress(Egress e);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateEgress(Egress e);
	/**
	 * 展示外出的申请单
	 * @param eg_id
	 * @return
	 */
	Egress findEgressById(int eg_id);
	/**
	 * 根据提供的条件查询
	 * @param map
	 * @return
	 */
	List<Egress> findEgressBylike(Map map);
	int findEgressBylike_count(Map map);
}
