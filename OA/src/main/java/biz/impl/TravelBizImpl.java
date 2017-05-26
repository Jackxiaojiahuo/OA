package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.TravelBiz;
import dao.TravelDao;
import model.Travel;
/**
 * 出差实现类
 * @author caohaoran
 *
 */
@Service
public class TravelBizImpl implements TravelBiz{
	@Autowired
	private TravelDao traDao;
	//全部查询
	@Override
	public List<Travel> findAllTravel(Map map) {
		return traDao.findAllTravel(map);
	}
	@Override
	public int findAllTravel_count(Map map) {
		return traDao.findAllTravel_count(map);
	}
	//出差申请
	@Override
	public int addTravel(Travel t) {
		return traDao.addTravel(t);
	}
	//根据id查询出差
	@Override
	public Travel findTravelById(int tv_id) {
		return traDao.findTravelById(tv_id);
	}
	//根据模糊条件查询
	@Override
	public List<Travel> findTravelBylike(Travel t) {
		return traDao.findTravelBylike(t);
	}

}
