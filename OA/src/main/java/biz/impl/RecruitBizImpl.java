package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.RecruitBiz;
import dao.RecruitDao;
import model.Recruit;
/**
 * 招聘实现类
 * @author caohaoran
 *
 */
@Service
public class RecruitBizImpl implements RecruitBiz {
	@Autowired
	private RecruitDao reDao;
	//全部查询
	@Override
	public List<Recruit> findAllRecruit(Map map) {
		return reDao.findAllRecruit(map);
	}
	@Override
	public int findAllRecruit_count(Map map) {
		return reDao.findAllRecruit_count(map);
	}
	//招聘申请
	@Override
	public int addRecruit(Recruit r) {
		return reDao.addRecruit(r);
	}
	//根据id查询招聘
	@Override
	public Recruit findRecruiteById(int re_id) {
		return reDao.findRecruiteById(re_id);
	}
}
