package controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import biz.BoardroomBiz;
import model.Boardroom;

@Controller
@RequestMapping("board.do")
public class BoardroomController {
	@Autowired
	private BoardroomBiz boardroomBiz;
	@RequestMapping(params="action=findBoard")
	public String findBoard(ModelMap model,Boardroom boardroom,Integer curpage){
		if(boardroom.getId()==null){
			Boardroom board=new Boardroom();
			curpage=curpage==null?1:curpage;
			board.setCurpage((curpage-1)*board.getPagesize());
			model.put("list", boardroomBiz.findAllBoard(board));
			board.setCurpage(curpage);
			model.put("board", board);
			return "xz/hylb";
		}
		model.put("board", boardroomBiz.findBoard(boardroom));
		return "xz/info/hyxg";
	}
	@RequestMapping(params="action=addBoard")
	public String addBoard(ModelMap model,Boardroom boardroom,MultipartFile file,HttpServletRequest request){
		String fname = file.getOriginalFilename();// 上传的文件原名
		//接收上传文件的路径
		String basepath = request.getSession().getServletContext()
				.getRealPath("/upload");
		//System.out.println(basepath);
		//上传文件的地址并重新命名
		String newFileName =  UUID.randomUUID().toString() + fname;
		//System.out.println(newFileName);
		try {
			//写入上传文件
			file.transferTo(new File(basepath + "/" +newFileName));
		} catch (Exception e) {
			e.printStackTrace();
		}
		boardroom.setPic("/upload/"+newFileName);
		if(boardroomBiz.registerBoard(boardroom)>0){
			request.getSession().setAttribute("msg", "添加成功");
			return "redirect:board.do?action=findBoard";
		}
		model.put("msg", "添加失败");
		return "xz/info/hydj";
	}
	@RequestMapping(params="action=updateBoard")
	public String updateBoard(Boardroom boardroom,HttpServletRequest request){
		if(boardroomBiz.modifyBoard(boardroom)>0){
			request.getSession().setAttribute("msg", "修改成功");
			return "redirect:board.do?action=findBoard";
		}
		Integer id=boardroom.getId();
		request.getSession().setAttribute("msg", "修改失败");
		return "redirect:board.do?action=findBoard?id="+id;
	}
	@RequestMapping(params="action=delBoard")
	public String delBoard(Boardroom boardroom,HttpServletRequest request){
		boardroom.setStatus("3");
		if(boardroomBiz.delBoard(boardroom)>0){
			request.getSession().setAttribute("msg", "删除成功");
			return "redirect:board.do?action=findBoard";
		}
		request.getSession().setAttribute("msg", "删除失败");
		return "redirect:board.do?action=findBoard";
	}
}
