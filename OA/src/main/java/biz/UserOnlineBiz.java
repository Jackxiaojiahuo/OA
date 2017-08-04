package biz;

import java.util.List;

import model.UserOnline;

public interface UserOnlineBiz {
	/**
	 * 添加在线用户
	 * @param uo
	 * @return
	 */
	int addUserOnline(UserOnline uo);
	/**
	 * 删除在线用户
	 * @param id
	 * @return
	 */
	int delUserOnline(String sessionId);
	/**
	 * 获取所有在线用户
	 * @return
	 */
	List<UserOnline> findAllUserOnline();
}
