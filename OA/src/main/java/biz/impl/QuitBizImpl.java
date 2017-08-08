package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.QuitBiz;
import dao.QuitDao;
import model.Quit;
/**
 * 离职实现类
 * @author caohaoran
 *
 */
@Service
public class QuitBizImpl implements QuitBiz{
	@Autowired
	private QuitDao quitDao;
	/**
	 * 显示全部离职人员的申请单
	 */
	@Override
	public List<Quit> findAllQuit(Map map) {
		return quitDao.findAllQuit(map);
	}
		@Override
		public int findAllQuit_count(Map map) {
			return quitDao.findAllQuit_count(map);
		}
	/**
	 * 离职申请
	 */
	@Override
	public int addQuit(Quit q) {
		return quitDao.addQuit(q);
	}
	/**
	 * 展示离职人员的详细申请单
	 */
	@Override
	public Quit findQuitById(int q_id) {
		return quitDao.findQuitById(q_id);
	}
	/**
	 * 审批处理
	 */
	@Override
	public int updateQuit(Quit q) {
		// TODO Auto-generated method stub
		return quitDao.updateQuit(q);
	}

}
