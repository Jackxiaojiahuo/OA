package biz;

import java.util.List;
import java.util.Map;

import model.Become;
/**
 * 转正业务接口
 * @author caohaoran
 *
 */
public interface BecomeBiz{
	/**
	 * 显示全部转正人员的申请单
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
	 * 展示转正人员的详细申请单
	 * @param b_id
	 * @return
	 */
	Become findBecomeById(int b_id);
}
