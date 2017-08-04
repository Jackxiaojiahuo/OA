package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EgressBiz;
import dao.EgressDao;
import model.Egress;
/**
 * 外出实现类
 * @author caohaoran
 *
 */
@Service
public class EgressBizImpl implements EgressBiz{
	@Autowired
	private EgressDao egrDao;
	/**
	 *查看全部外出申请信息 
	 */
	@Override
	public List<Egress> findAllEgress(Map map) {
		return egrDao.findAllEgress(map);
	}
	@Override
	public int findAllEgress_count(Map map) {
		return egrDao.findAllEgress_count(map);
	}
	/**
	 * 外出申请
	 */
	@Override
	public int addEgress(Egress e) {
		return egrDao.addEgress(e);
	}
	/**
	 *展示外出的详细申请单
	 */
	@Override
	public Egress findEgressById(int eg_id) {
		return egrDao.findEgressById(eg_id);
	}
	/**
	 * 根据条件进行模糊查询
	 */
	@Override
	public List<Egress> findEgressBylike(Map map) {
		return egrDao.findEgressBylike(map);
	}
	@Override
	public int findEgressBylike_count(Map map) {
		// TODO Auto-generated method stub
		return egrDao.findEgressBylike_count(map);
	}

}
