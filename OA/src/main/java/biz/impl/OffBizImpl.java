package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.OffBiz;
import dao.OffDao;
import model.Off;
/**
 * 调休实现类
 * @author caohaoran
 *
 */
@Service
public class OffBizImpl implements OffBiz{
	@Autowired
	private OffDao offDao;
	/**
	 * 显示全部调休人员的申请单
	 */
	@Override
	public List<Off> findAllOff(Map map) {
		return offDao.findAllOff(map);
	}
	@Override
	public int findAllOff_count(Map map) {
		return offDao.findAllOff_count(map);
	}
	/**
	 * 调休申请
	 */
	@Override
	public int addOff(Off o) {
	return offDao.addOff(o);
	}
	/**
	 * 展示调休人员的详细申请单
	 */
	@Override
	public Off findOffById(int of_id) {
		return offDao.findOffById(of_id);
	}
	/**
	 * 根据提供的条件进行查询
	 */
	@Override
	public List<Off> findOffBylike(Map map) {
		return offDao.findOffBylike(map);
	}
	@Override
	public int findOffBylike_count(Map map) {
		// TODO Auto-generated method stub
		return offDao.findOffBylike_count(map);
	}

}
