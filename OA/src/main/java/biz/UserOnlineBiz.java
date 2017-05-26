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
	int delUserOnline(Integer id);
	/**
	 * 获取所有在线用户
	 * @return
	 */
	List<UserOnline> findAllUserOnline();
	/**
	 * 统计所有在线用户数量
	 * @return
	 */
	int findAllUserOnline_count();
}
