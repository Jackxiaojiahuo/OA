package dao;

import java.util.List;

import model.UserOnline;

/**
 * 在线用户接口
 * @author Jack
 *
 */
public interface UserOnlineDao {
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
	/**
	 * 清空表
	 */
	void delAll();
}
