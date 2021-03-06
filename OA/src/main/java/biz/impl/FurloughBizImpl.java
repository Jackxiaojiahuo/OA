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
	/**
	 * 显示全部请休假人员的申请单
	 */
	@Override
	public List<Furlough> findAllFurlough(Map map) {
		return furDao.findAllFurlough(map);
	}
	@Override
	public int findAllFurlough_count(Map map) {
		return furDao.findAllFurlough_count(map);
	}
	/**
	 * 请休假申请
	 */
	@Override
	public int addFurlough(Furlough f) {
		return furDao.addFurlough(f);
	}
	/**
	 * 展示请休假人员的详细申请单
	 */
	@Override
	public Furlough findFurloughById(int fg_id) {
		return furDao.findFurloughById(fg_id);
	}
	/**
	 * 根据提供的条件进行查询
	 */
	@Override
	public List<Furlough> findFurloughBylike(Map map) {
		return furDao.findFurloughBylike(map);
	}
	@Override
	public int findFurloughBylike_count(Map map) {
		// TODO Auto-generated method stub
		return furDao.findFurloughBylike_count(map);
	}
	/**
	 * 审批处理
	 */
	@Override
	public int updateFurlough(Furlough f) {
		// TODO Auto-generated method stub
		return furDao.updateFurlough(f);
	}

}
