package dao;

import java.util.List;
import java.util.Map;

import model.Recruit;

public interface RecruitDao {
	List<Recruit> findAllRecruit(Map map);//全部查询
	int findAllRecruit_count(Map map);//全部查询
	int addRecruit(Recruit r);//招聘申请
	Recruit findRecruiteById(int re_id);//id查询
}
