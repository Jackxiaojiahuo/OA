package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 全部查询工作日程Controller控制器
 * @author Administrator
 *
 */

import biz.CalendarBiz;
import model.Assignment;
import model.Calendar;
import model.Page;
@Controller
@RequestMapping("cale.do")
public class CalendarController {
	@Autowired
private CalendarBiz calendarBiz;
	@RequestMapping(params = "action=Calendarlist")
	
	public String findAllCalendar(ModelMap model, Integer num, Integer index, Integer depid/*Integer classify*/) {
		num=num==null ? 0: num;
		model.put("num", num);
		if (num==0) {
			index = index == null ? 1 : index;
			Map map = new HashMap();
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			//查询全部工作日程
			List<Calendar> list =calendarBiz.findAllCalendar(map);
			//查询总数
			page.setCount(calendarBiz.findAllCalendar_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==1){
			String depart_id = null;
			Map map = new HashMap();
			index = index == null ? 1 : index;
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			switch (depid) {
			case 0:
				depart_id="2";
				map.put("depart_id", "2");
				
				System.out.println("-----------------"+depid);
				break;
				
			case 1:
				depart_id="3";
				map.put("depart_id", "3");
				break;
			}
			//根据部门id分类查询
			Calendar list = calendarBiz.findCalendarById(depart_id);
			page.setCount(calendarBiz.findAllCalendar_count(map));
			model.put("page", page);
			model.put("list", list);
		}
		return "goal/qbgzrc";
		
	}
}
