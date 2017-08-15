package biz.impl;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.ProspectusBiz;
import dao.ProspectusDao;
import model.Prospectus;
/**
 * 全部工作计划BIZimpl
 * @author Administrator
 *
 */
@Service
public class ProspectusBizImpl implements ProspectusBiz{
	@Autowired
	private ProspectusDao prospectusDao;
	//显示所有全部工作计划
	@Override
	public List<Prospectus> findAllprospectus(Map map) {
		// TODO Auto-generated method stub
		return prospectusDao.findAllprospectus(map);
	}
	//查询总数
	@Override
	public int findAllprospectus_count(Map map) {
		// TODO Auto-generated method stub
		return prospectusDao.findAllprospectus_count(map);
	}
	//id查询 （计划展示）
	@Override
	public Prospectus findprospectusById(int prospectus_id) {
		// TODO Auto-generated method stub
		return prospectusDao.findprospectusById(prospectus_id);
	}
	//制定工作计划（新增）
	@Override
	public int addProspectus(Prospectus prospectus) {
		// TODO Auto-generated method stub
		return prospectusDao.addProspectus(prospectus);
	}
	//查找工作计划模糊查询
	@Override
	public List<Prospectus> findprospectusBylike(Prospectus prospectus) {
		// TODO Auto-generated method stub
		return prospectusDao.findprospectusBylike(prospectus);
	}
	//根据计划状态查询
	@Override
	public List<Prospectus> findProspectusState(Map map) {
		// TODO Auto-generated method stub
		return prospectusDao.findProspectusState(map);
	}
	//根据计划分类查询（年度计划）
	@Override
	public List<Prospectus> findProspectusClassify(Map map) {
		// TODO Auto-generated method stub
		return prospectusDao.findProspectusClassify(map);
	}
//	@Override
//	public int pszstate(String pros_state) {
//		// TODO Auto-generated method stub
//		return prospectusDao.pszstate(pros_state);
//	}
//	@Override
//	public int fbzxstate(String pros_state) {
//		// TODO Auto-generated method stub
//		return prospectusDao.fbzxstate(pros_state);
//	}
//	@Override
//	public int ygbstate(String pros_state) {
//		// TODO Auto-generated method stub
//		return prospectusDao.ygbstate(pros_state);
//	}
	
	
	
	
	
	

}
