package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.OvertimeBiz;
import dao.OvertimeDao;
import model.Overtime;
/**
 * 加班实现类
 * @author caohaoran
 *
 */
@Service
public class OvertimeBizImpl implements OvertimeBiz{
	@Autowired
	private OvertimeDao overtimeDao;
	/**
	 * 显示全部加班人员的申请单
	 */
	@Override
	public List<Overtime> findAllOvertime(Map map) {
		return overtimeDao.findAllOvertime(map);
	}
	@Override
	public int findAllOvertime_count(Map map) {
		return overtimeDao.findAllOvertime_count(map);
	}
	/**
	 * 加班申请
	 */
	@Override
	public int addOvertime(Overtime o) {
		return overtimeDao.addOvertime(o);
	}
	/**
	 * 展示加班人员的详细申请单
	 */
	@Override
	public Overtime findOvertimeById(int oi_id) {
		return overtimeDao.findOvertimeById(oi_id);
	}
	/**
	 * 根据提供的条件进行查询
	 */
	@Override
	public List<Overtime> findOvertimeBylike(Map map) {
		return overtimeDao.findOvertimeBylike(map);
	}
	@Override
	public int findOvertimeBylike_count(Map map) {
		// TODO Auto-generated method stub
		return overtimeDao.findOvertimeBylike_count(map);
	}

}
