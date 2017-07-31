package dao;

import java.util.List;

import model.Boardroom;

/**
 * 会议室dao接口
 * @author Jack
 *
 */
public interface BoardroomDao {
	/**
	 * 查询会议室
	 * @return
	 */
	List<Boardroom> findBoardroom(Boardroom boardroom);
	/**
	 * 查询会议室分页
	 * @return
	 */
	Integer findBoardroomCount(Boardroom boardroom);
	/**
	 * 添加会议室
	 * @param boardroom
	 * @return
	 */
	int addBoardroom(Boardroom boardroom);
	/**
	 * 修改会议室
	 */
	int updateBoardroom(Boardroom boardroom);
}
