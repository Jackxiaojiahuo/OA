package dao;

import java.util.List;
import java.util.Map;

import model.Become;
import model.Quit;

public interface QuitDao {
	/**
	 * 显示全部离职的申请单
	 * @param map
	 * @return
	 */
	List<Quit> findAllQuit(Map map);
	int findAllQuit_count(Map map);
	/**
	 * 离职申请
	 * @param q
	 * @return
	 */
	
	int addQuit(Quit q);
	/**
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateQuit(Quit q);
	/**
	 * 展示离职的申请单
	 * @param q_id
	 * @return
	 */
	Quit findQuitById(int q_id);
}
