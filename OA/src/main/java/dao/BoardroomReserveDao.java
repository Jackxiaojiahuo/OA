package dao;

import java.util.List;

import model.BoardroomReserve;

public interface BoardroomReserveDao {
	/**
	 * 获取会议室预定记录
	 * @param boardroom
	 * @return
	 */
	public List<BoardroomReserve> findBoardroomReserve(BoardroomReserve boardroom);
	/**
	 * 分页
	 * @param boardroom
	 * @return
	 */
	public Integer findAllCount(BoardroomReserve boardroom);
	/**
	 * 添加会议室预定
	 * @param boardroom
	 * @return
	 */
	public Integer addBoardroomReserve(BoardroomReserve boardroom);
	/**
	 * 会议室预定修改
	 * @param boardroom
	 * @return
	 */
	public Integer updateBoardroomReserve(BoardroomReserve boardroom);
}
