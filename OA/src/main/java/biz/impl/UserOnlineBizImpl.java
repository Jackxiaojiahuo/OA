package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.UserOnlineBiz;
import dao.UserOnlineDao;
import model.UserOnline;
@Service
public class UserOnlineBizImpl implements UserOnlineBiz {
	@Autowired
	private UserOnlineDao uoDao;
	/**
	 * 添加在线用户
	 * @param uo
	 * @return
	 */
	@Override
	public int addUserOnline(UserOnline uo){
		return uoDao.addUserOnline(uo);
	}
	/**
	 * 删除在线用户
	 * @param id
	 * @return
	 */
	@Override
	public int delUserOnline(String sessionId) {
		return uoDao.delUserOnline(sessionId);
	}
	/**
	 * 获取所有在线用户
	 * @return
	 */
	@Override
	public List<UserOnline> findAllUserOnline() {
		return uoDao.findAllUserOnline();
	}
}
