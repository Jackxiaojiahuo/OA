package dao;

import java.util.List;
import java.util.Map;

import model.Become;
import model.Entry;
/**
 * 转正的方法的接口类
 * @author caohaoran
 *
 */
public interface BecomeDao {
	/**
	 * 显示全部转正申请单
	 * @param map
	 * @return
	 */
	List<Become> findAllBecome(Map map);
	int findAllBecome_count(Map map);
	/**
	 * 转正申请
	 * @param b
	 * @return
	 */
	int addBecome(Become b);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateBecome(Become b);
	/**
	 * 展示转正的详细申请单
	 * @param b_id
	 * @return
	 */
	Become findBecomeById(int b_id);
}
