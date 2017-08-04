package biz;

import java.util.List;

import model.BoardroomReserve;

public interface BoardroomReserveBiz {
	public List<BoardroomReserve> findBoardroomReserve(BoardroomReserve boardreserve);
	public Integer findAllCount(BoardroomReserve boardreserve);
	public Integer addBoardroomReserve(BoardroomReserve boardreserve);
	public Integer updateBoardroomReserve(BoardroomReserve boardreserve);
	public BoardroomReserve selectBoardroomReserve(BoardroomReserve boardreserve);
}
