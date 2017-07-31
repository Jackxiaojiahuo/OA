package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.BoardroomBiz;
import dao.BoardroomDao;
import model.Boardroom;
@Service
public class BoardroomBizImpl implements BoardroomBiz {
	@Autowired
	private BoardroomDao boardroomDao;
	/**
	 * 查看会议室列表
	 */
	@Override
	public List<Boardroom> findAllBoard(Boardroom boardroom) {
		boardroom.setMaxpage(this.findAllBoardCount(boardroom));
		return boardroomDao.findBoardroom(boardroom);
	}
	/**
	 * 查看会议室信息
	 */
	@Override
	public Boardroom findBoard(Boardroom boardroom) {
		return boardroomDao.findBoardroom(boardroom).get(0);
	}
	/**
	 * 会议室登记
	 */
	@Override
	public int registerBoard(Boardroom boardroom) {
		return boardroomDao.addBoardroom(boardroom);
	}
	/**
	 * 会议室信息修改
	 */
	@Override
	public int modifyBoard(Boardroom boardroom) {
		return boardroomDao.updateBoardroom(boardroom);
	}
	/**
	 * 会议室删除
	 */
	@Override
	public int delBoard(Boardroom boardroom) {
		return boardroomDao.updateBoardroom(boardroom);
	}
	@Override
	public Integer findAllBoardCount(Boardroom boardroom) {
		return boardroomDao.findBoardroomCount(boardroom);
	}

}
