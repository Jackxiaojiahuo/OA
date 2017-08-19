package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.EmailBoxBiz;
import biz.EmployeeBiz;
import biz.NoticeBiz;
import model.Employee;
import model.Inbox;
import model.Notice;
import model.Page;

@Controller
@RequestMapping("nbtxl.do")
public class NbtxlController {
	/**
	 * 员工信息
	 */
	@Autowired
	private EmployeeBiz emp;
	/**
	 * 收件信息
	 */
	@Autowired
	private EmailBoxBiz email;
	/**
	 * 公告
	 */
	@Autowired
	private NoticeBiz noticeBiz;
	
	@RequestMapping(params ="action=ss")
	public String findByNbtxlShow(ModelMap model,Integer index,Integer depart_id, String emp_code,
			String emp_name){
		index=index==null?1:index;
		Map map = new HashMap();
		Page page = new Page(index, 24);
		map.put("emp_code", emp_code);
		map.put("emp_name", emp_name);
		map.put("index", (index - 1) * 24);
		map.put("size", 24);
		map.put("depart_id", depart_id);
		List<Employee> empList = emp.findAllEmployeeRight(map);
		page.setCount(emp.findAllEmployeeRight_count(map));
		model.put("list", empList);
		model.put("page", page);
		model.put("emp_code", emp_code);
		model.put("emp_name", emp_name);
		System.out.println(emp_name);
		if((emp_name==null || emp_code==null)){
			return "info/nbtxl";
		}else{
			return "info/info/nbtxl_cx";
			
		}
	}
	@RequestMapping(params="action=findByDialogEmail")
	@ResponseBody
	public Integer findByDialogEmail(ModelMap model,HttpSession session){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		SimpleDateFormat sp=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date=sp.format(new Date());
		Inbox inbox=new Inbox();
		inbox.setInbox_receiver(e.getEmp_code());
		inbox.setInbox_date(date);
		List<Inbox> list = email.inboxDate(inbox);
		return list.size();
	}
	@RequestMapping(params="action=findByDialogNotice")
	@ResponseBody
	public Integer findByDialogNotice(ModelMap model,HttpSession session){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		List<Notice> list = noticeBiz.NoticeUpdateDate(null);
		return list.size();
	}
}