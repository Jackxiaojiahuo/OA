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
	/**
	 * 显示全部出差的申请单
	 */
	@Override
	public List<Travel> findAllTravel(Map map) {
		return traDao.findAllTravel(map);
	}
	@Override
	public int findAllTravel_count(Map map) {
		return traDao.findAllTravel_count(map);
	}
	/**
	 * 出差申请
	 */
	@Override
	public int addTravel(Travel t) {
		return traDao.addTravel(t);
	}
	/**
	 * 展示出差的详细申请单
	 */
	@Override
	public Travel findTravelById(int tv_id) {
		return traDao.findTravelById(tv_id);
	}
	/**
	 * 根据提供的条件进行查询
	 */
	@Override
	public List<Travel> findTravelBylike(Map map) {
		return traDao.findTravelBylike(map);
	}
	@Override
	public int findTravelBylike_count(Map map) {
		// TODO Auto-generated method stub
		return traDao.findTravelBylike_count(map);
	}

}
