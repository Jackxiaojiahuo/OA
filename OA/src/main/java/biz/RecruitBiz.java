package biz;

import java.util.List;
import java.util.Map;

import model.Recruit;
/**
 * 招聘业务接口
 * @author caohaoran
 *
 */
public interface RecruitBiz {
	List<Recruit> findAllRecruit(Map map);//全部查询
	int findAllRecruit_count(Map map);
	int addRecruit(Recruit r);//招聘申请
	Recruit findRecruiteById(int re_id);//id查询
}
