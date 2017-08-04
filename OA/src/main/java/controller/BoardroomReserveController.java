package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.BoardroomReserveBiz;
import model.BoardroomReserve;

@Controller
@RequestMapping("bs.do")
public class BoardroomReserveController {
	@Autowired
	private BoardroomReserveBiz boardroomReserveBiz;
	@RequestMapping(params="action=findBs")
	public String findBoard(ModelMap model,BoardroomReserve boardroomreserve,Integer curpage){
		if(boardroomreserve.getId()==null){
			BoardroomReserve boardroomReserve=new BoardroomReserve();
			curpage=curpage==null?1:curpage;
			boardroomReserve.setCurpage((curpage-1)*boardroomReserve.getPagesize());
			model.put("list", boardroomReserveBiz.findBoardroomReserve(boardroomReserve));
			boardroomReserve.setCurpage(curpage);
			model.put("page", boardroomReserve);
			return "xz/hyyd";
		}
		model.put("bs", boardroomReserveBiz.selectBoardroomReserve(boardroomreserve));
		return "xz/info/hysydzs";
	}
	@RequestMapping(params="action=addBs")
	public String addBoard(ModelMap model,BoardroomReserve boardroomreserve,HttpServletRequest request){
		if(boardroomReserveBiz.addBoardroomReserve(boardroomreserve)>0){
			request.getSession().setAttribute("msg", "添加成功");
			return "redirect:bs.do?action=findBoard";
		}
		model.put("msg", "添加失败");
		return "xz/info/hydj";
	}
	@RequestMapping(params="action=updateBs")
	public String updateBoard(BoardroomReserve boardroomreserve,HttpServletRequest request){
		if(boardroomReserveBiz.updateBoardroomReserve(boardroomreserve)>0){
			request.getSession().setAttribute("msg", "修改成功");
			return "redirect:bs.do?action=findBs";
		}
		Integer id=boardroomreserve.getId();
		request.getSession().setAttribute("msg", "修改失败");
		return "redirect:board.do?action=findBs?id="+id;
	}
}
