package dao;

import java.util.List;
import java.util.Map;
import model.Prospectus;

/**
 * 全部工作计划dao接口
 */
public interface ProspectusDao {
	/**
	 *  显示所有全部工作计划
	 * @param map
	 * @return
	 */
	List<Prospectus> findAllprospectus(Map map);

	/**
	 *  查询总数
	 * @param map
	 * @return
	 */
	int findAllprospectus_count(Map map);

	/**
	 *  id查询 （计划展示）
	 * @param prospectus_id
	 * @return
	 */
	Prospectus findprospectusById(int prospectus_id);

	/**
	 *  制定工作计划（新增）
	 * @param prospectus
	 * @return
	 */
	int addProspectus(Prospectus prospectus);

	/**
	 * 根据计划名称  模糊查询()findprospectusBylike
	 * @param prospectus
	 * @return
	 */
	List<Prospectus> findprospectusBylike(Prospectus prospectus);

	/**
	 *  根据计划状态查询
	 * @param map
	 * @return
	 */
	List<Prospectus> findProspectusState(Map map);

	/**
	 *  根据计划分类查询（年度计划）
	 * @param map
	 * @return
	 */
	List<Prospectus> findProspectusClassify(Map map);
	
}
