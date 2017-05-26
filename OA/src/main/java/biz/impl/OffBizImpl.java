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
	//全部查询
	@Override
	public List<Off> findAllOff(Map map) {
		return offDao.findAllOff(map);
	}
	@Override
	public int findAllOff_count(Map map) {
		return offDao.findAllOff_count(map);
	}
	//申请
	@Override
	public int addOff(Off o) {
	return offDao.addOff(o);
	}
	//根据id查询
	@Override
	public Off findOffById(int of_id) {
		return offDao.findOffById(of_id);
	}
	//根据模糊条件查询
	@Override
	public List<Off> findOffBylike(Off o) {
		return offDao.findOffBylike(o);
	}

}
