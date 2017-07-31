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
	//全部查询
	@Override
	public List<Quit> findAllQuit(Map map) {
		return quitDao.findAllQuit(map);
	}
		@Override
		public int findAllQuit_count(Map map) {
			return quitDao.findAllQuit_count(map);
		}
	//离职申请
	@Override
	public int addQuit(Quit q) {
		return quitDao.addQuit(q);
	}
	//根据id查询离职名单
	@Override
	public Quit findQuitById(int q_id) {
		return quitDao.findQuitById(q_id);
	}

}