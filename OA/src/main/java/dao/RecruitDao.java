package dao;

import java.util.List;
import java.util.Map;

import model.Recruit;
/**
 * 招聘接口
 * @author caohaoran
 *
 */
public interface RecruitDao {
	/**
	 * 显示全部招聘的申请单
	 * @param map
	 * @return
	 */
	List<Recruit> findAllRecruit(Map map);
	int findAllRecruit_count(Map map);
	/**
	 * 招聘申请
	 * @param r
	 * @return
	 */
	int addRecruit(Recruit r);
	/**
	 * 审批处理
	 * @param r
	 * @return
	 */
	int updateRecruit(Recruit r);
	/**
	 * 展示招聘的详细申请单
	 * @param re_id
	 * @return
	 */
	Recruit findRecruiteById(int re_id);
}
