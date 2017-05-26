package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.FurloughBiz;
import dao.FurloughDao;
import model.Furlough;
/**
 * 请休假实现类
 * @author caohaoran
 *
 */
@Service
public class FurloughBizImpl implements FurloughBiz{
	@Autowired
	private FurloughDao furDao;
	//全部查询
	@Override
	public List<Furlough> findAllFurlough(Map map) {
		return furDao.findAllFurlough(map);
	}
	@Override
	public int findAllFurlough_count(Map map) {
		return furDao.findAllFurlough_count(map);
	}
	//申请
	@Override
	public int addFurlough(Furlough f) {
		return furDao.addFurlough(f);
	}
	//根据id查询
	@Override
	public Furlough findFurloughById(int fg_id) {
		return furDao.findFurloughById(fg_id);
	}
	//根据模糊条件查询
	@Override
	public List<Furlough> findFurloughBylike(Furlough f) {
		return furDao.findFurloughBylike(f);
	}

}
