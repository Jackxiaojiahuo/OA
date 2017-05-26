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
	//全部查询
	@Override
	public List<Egress> findAllEgress(Map map) {
		return egrDao.findAllEgress(map);
	}
	@Override
	public int findAllEgress_count(Map map) {
		return egrDao.findAllEgress_count(map);
	}
	//申请
	@Override
	public int addEgress(Egress e) {
		return egrDao.addEgress(e);
	}
	//根据id查询
	@Override
	public Egress findEgressById(int eg_id) {
		return egrDao.findEgressById(eg_id);
	}
	//根据模糊条件查询
	@Override
	public List<Egress> findEgressBylike(Egress e) {
		return egrDao.findEgressBylike(e);
	}

}
