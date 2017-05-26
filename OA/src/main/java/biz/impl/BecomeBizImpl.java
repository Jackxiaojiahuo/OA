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
	//全部查询
  	@Override
	public List<Become> findAllBecome(Map map) {
		return beDao.findAllBecome(map);
	}
	@Override
	public int findAllBecome_count(Map map) {
		return beDao.findAllBecome_count(map);
	}
  	//转正申请
	@Override
	public int addBecome(Become b) {
		return beDao.addBecome(b);
	}
	//根据id查询
	@Override
	public Become findBecomeById(int b_id) {
		return beDao.findBecomeById(b_id);
	}

}
