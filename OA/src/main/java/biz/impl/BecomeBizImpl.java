package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.BecomeBiz;
import dao.BecomeDao;
import model.Become;
/**
 * 转正实现类
 * @author caohaoran
 *
 */
@Service
public class BecomeBizImpl implements BecomeBiz{
	@Autowired
	private BecomeDao beDao;
	/**
	 * 显示全部转正申请的申请信息
	 */
  	@Override
	public List<Become> findAllBecome(Map map) {
		return beDao.findAllBecome(map);
	}
	@Override
	public int findAllBecome_count(Map map) {
		return beDao.findAllBecome_count(map);
	}
  	/**
  	 * 转正申请
  	 */
	@Override
	public int addBecome(Become b) {
		return beDao.addBecome(b);
	}
	/**
	 * 展示转正的详细申请单
	 */
	@Override
	public Become findBecomeById(int b_id) {
		return beDao.findBecomeById(b_id);
	}
	/**
	 * 审批处理
	 */
	@Override
	public int updateBecome(Become b) {
		// TODO Auto-generated method stub
		return beDao.updateBecome(b);
	}

}
