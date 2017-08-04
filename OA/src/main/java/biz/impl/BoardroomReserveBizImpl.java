package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.BoardroomReserveBiz;
import dao.BoardroomReserveDao;
import model.BoardroomReserve;
@Service
public class BoardroomReserveBizImpl implements BoardroomReserveBiz {
	@Autowired
	private BoardroomReserveDao boardroomReserveDao;
	/**
	 * 获取记录列表
	 * @param boardreserve
	 * @return
	 */
	@Override
	public List<BoardroomReserve> findBoardroomReserve(BoardroomReserve boardreserve) {
		boardreserve.setMaxpage(this.findAllCount(boardreserve));
		return boardroomReserveDao.findBoardroomReserve(boardreserve);
	}
	/**
	 * 分页记录
	 */
	@Override
	public Integer findAllCount(BoardroomReserve boardreserve) {
		return boardroomReserveDao.findAllCount(boardreserve);
	}
	/**
	 * 添加
	 */
	@Override
	public Integer addBoardroomReserve(BoardroomReserve boardreserve) {
		return boardroomReserveDao.addBoardroomReserve(boardreserve);
	}
	/**
	 * 修改
	 */
	@Override
	public Integer updateBoardroomReserve(BoardroomReserve boardreserve) {
		return boardroomReserveDao.updateBoardroomReserve(boardreserve);
	}
	/**
	 * 查询具体
	 */
	@Override
	public BoardroomReserve selectBoardroomReserve(BoardroomReserve boardreserve) {
		return boardroomReserveDao.findBoardroomReserve(boardreserve).get(0);
	}

}
