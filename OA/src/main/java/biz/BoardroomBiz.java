package biz;

import java.util.List;

import model.Boardroom;

public interface BoardroomBiz {
	/**
	 * 查看会议室列表
	 * @return
	 */
	public List<Boardroom> findAllBoard(Boardroom boardroom);
	/**
	 * 查看会议室列表分页
	 * @return
	 */
	public Integer findAllBoardCount(Boardroom boardroom);
	/**
	 * 查询会议室
	 * @return
	 */
	public Boardroom findBoard(Boardroom boardroom);
	/**
	 * 会议室登记
	 */
	public int registerBoard(Boardroom boardroom);
	/**
	 * 会议室信息修改
	 */
	public int modifyBoard(Boardroom boardroom);
	/**
	 * 会议室删除
	 */
	public int delBoard(Boardroom boardroom);
}
