package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.DepartmentBiz;
import biz.EmailBoxBiz;
import biz.EmployeeBiz;
import biz.impl.DepartmentBizImpl;
import model.Department;
import model.Employee;
import model.Inbox;
import model.Outbox;
import model.Page;

@Controller
@RequestMapping("email.do")
public class EmailController {
	/**
	 * 员工业务接口对象
	 */
	@Autowired
	private EmployeeBiz emp;
	/**
	 * 邮箱
	 */
	@Autowired
	private EmailBoxBiz ebb;
	/**
	 * 部门编号
	 */
	@Autowired
	private ParamController db;
	
	/**
	 * 查询全部的邮件
	 * @param session
	 * @param model
	 * @param type
	 * @param index
	 * @return
	 */
	@RequestMapping(params = "action=ss")
	public String findByEmailShow(HttpSession session,ModelMap model,Integer type,Integer index){
		//获得当前的用户
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		List<Outbox> olist=null;
		List<Inbox> ilist =null;
		//分页查询当前的页数
		index=index==null?1:index;
		//1草稿箱  2已发送消息  3未读消息   4已读消息
		type=type==null?3:type;
		//声明一个map接受分页的参数
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		//查询记录数
		int cg = ebb.outboxCount(new Outbox(e.getEmp_code(),0));
		int yfs = ebb.outboxCount(new Outbox(e.getEmp_code(),1));
		int wd = ebb.inboxCount(new Inbox(e.getEmp_code(), 0));
		int yd = ebb.inboxCount(new Inbox(e.getEmp_code(), 1));
		if(type==1){// 1 草稿箱  			
			map.put("outbox_sender", e.getEmp_code());
			map.put("send_state", 0);				
			page.setCount(cg);
			olist = ebb.outboxShow(map);
		}else if(type==2){// 2 已发送信息
			map.put("outbox_sender", e.getEmp_code());
			map.put("send_state", 1);
			page.setCount(yfs);
			olist = ebb.outboxShow(map);
		}else if(type==3){// 3 未读信息
			map.put("inbox_receiver", e.getEmp_code());
			map.put("email_state", 0);
			page.setCount(wd);
			ilist= ebb.inboxShow(map);
		}else if(type==4){// 4 已读信息
			map.put("inbox_receiver", e.getEmp_code());
			map.put("email_state", 1);
			page.setCount(yd);
			ilist = ebb.inboxShow(map);
		}
		if(olist!=null){
			model.put("olist", olist);//我发送
		}else if(ilist!=null){
			model.put("ilist", ilist);//我接受
		}
		model.put("cg", cg);
		model.put("yfs", yfs);
		model.put("wd", wd);
		model.put("yd", yd);
		model.put("type", type);
		model.put("page", page);
		return "info/dzxx";	
	}
	
	/**
	 * 查询详细信息
	 * @param session
	 * @param model
	 * @param type
	 * @param id
	 * @return
	 */
	@RequestMapping(params = "action=ssid")
	public String findByEmailId(HttpSession session,ModelMap model,Integer type,Integer id){
		//当前用户
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		type=type==null?1:type;
		if(type==0){//我发送
			Outbox outbox1 = ebb.outboxId(id);
			model.put("outbox", outbox1);
			model.put("name", e.getEmp_name());
			if(outbox1.getSend_state()==0){//草稿箱
				return "info/info/ddxx_cgx_ym";
			}
			return "info/info/ddxx_zs";
		}else{//我收件
			Inbox inbox = ebb.inboxId(id);
			model.put("inbox", inbox);
			return "info/info/ddxx_zs";
		}
	}
	
	/**
	 * 发送邮件或添加一条邮件（添加邮箱）
	 * @param session
	 * @param receiverName
	 * @param receiver
	 * @param title
	 * @param content
	 * @param boxType
	 * @return
	 */
	@RequestMapping(params = "action=add")
	public String findByEmailAdd(HttpSession session,String receiverName,String receiver,String title,String content,Integer boxType){
		//当前用户
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		//发件箱
		Outbox outbox=new Outbox();
		outbox.setOutbox_sender(e.getEmp_code());
		outbox.setOutbox_receiver(receiver);
		outbox.setOutbox_receiverName(receiverName);
		outbox.setOutbox_title(title);
		outbox.setOutbox_content(content);
		outbox.setSend_state(boxType);
		String[] rNList = receiverName.split(",");
		String[] rList = receiver.split(",");
		List<Inbox> iList=new ArrayList<Inbox>();
		for (int i = 0; i < rList.length; i++) {
			//收件箱
			Inbox inbox=new Inbox();
			inbox.setInbox_sender(e.getEmp_code());
			inbox.setInbox_senderName(e.getEmp_name());
			inbox.setInbox_receiver(rList[i]);
			inbox.setInbox_receiverName(rNList[i]);
			inbox.setInbox_title(title);
			inbox.setInbox_content(content);
			inbox.setEmail_state(0);
			iList.add(inbox);
		}
		ebb.email(outbox, iList);//添加邮件（发送邮件）
		return "redirect:email.do?action=ss&type=3";
	}
	//查找部门编号
	@RequestMapping(params = "action=bm")
	public String findByEmailBM(ModelMap model){
		List<Department> bm=db.findAllDpeart(null);
		Map map=new HashMap();
		map.put("index", 0);
		map.put("size", 100);
		List<Employee> eList = emp.findAllEmployeeRight(map);
		model.put("bm", bm);
		model.put("eList", eList);
		return "info/info/ddxx_fsxx";
	}
	//修改草稿（保存或发送）
	@RequestMapping(params = "action=update")
	public String findByEmailUpdate(HttpSession session,Integer send_id,String receiverName,String receiver,String title,String content,Integer boxType){
		//当前用户
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		//发件箱
		Outbox outbox=new Outbox();
		outbox.setSend_id(send_id);
		outbox.setOutbox_sender(e.getEmp_code());
		outbox.setOutbox_receiver(receiver);
		outbox.setOutbox_receiverName(receiverName);
		outbox.setOutbox_title(title);
		outbox.setOutbox_content(content);
		outbox.setSend_state(boxType);
		String[] rNList = receiverName.split(",");
		String[] rList = receiver.split(",");
		List<Inbox> iList=new ArrayList<Inbox>();
		for (int i = 0; i < rList.length; i++) {
			//收件箱
			Inbox inbox=new Inbox();
			inbox.setInbox_sender(e.getEmp_code());
			inbox.setInbox_senderName(e.getEmp_name());
			inbox.setInbox_receiver(rList[i]);
			inbox.setInbox_receiverName(rNList[i]);
			inbox.setInbox_title(title);
			inbox.setInbox_content(content);
			inbox.setEmail_state(0);
			iList.add(inbox);
		}
		ebb.emailUp(outbox, iList);//修改邮件
		return "redirect:email.do?action=ss&type=3";
	}
	
	/**
	 * 删除邮件
	 * @param type
	 * @param id
	 * @return
	 */
	@RequestMapping(params = "action=del")
	public String findByEmailDel(Integer type,Integer id){
		type=type==null?1:type;
		if(type==0){
			ebb.outboxDel(id);
		}else if(type==1){
			ebb.inboxDel(id);
		}
		return "redirect:email.do?action=ss&type=3";
	}
	
	/**
	 * 根据条件查询邮件
	 * @param session
	 * @param model
	 * @param index
	 * @param names
	 * @param count
	 * @return
	 */
	@RequestMapping(params = "action=cx")
	public String findByEmailCX(HttpSession session,ModelMap model,Integer index,String names,String count){
		//获取当前用户
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		index=index==null?1:index;
		List<Inbox> ilist=null;
		List<Outbox> olist=null;
		Inbox inbox=new Inbox();
		Outbox outbox=new Outbox();
		inbox.setInbox_receiver(e.getEmp_code());
		outbox.setOutbox_sender(e.getEmp_code());
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		if(count.equals("")){	
			page.setCount(0);
		}else{//输入信息是否为空
			if("title".equals(names)){//根据标题
				map.put("inbox_title", count);
				map.put("inbox_receiver", e.getEmp_code());
				ilist = ebb.inboxCondition(map);
				page.setCount(ebb.inboxConditionCount(map));
			}else if("sender".equals(names)){//按发件人
				map.put("inbox_senderName", count);
				map.put("inbox_receiver", e.getEmp_code());
				ilist = ebb.inboxCondition(map);
				page.setCount(ebb.inboxConditionCount(map));
			}else if("receiver".equals(names)){//按收件人
				map.put("outbox_receiverName", count);
				map.put("outbox_sender", e.getEmp_code());
				page.setCount(ebb.outboxConditionCount(map));
				olist = ebb.outboxCondition(map);
			}
		}
		if(page.getIndex()==0)page.setIndex(1);
		if(ilist!=null){
			model.put("ilist", ilist);
		}else if(olist!=null){
			model.put("olist", olist);
		}
		model.put("page", page);
		model.put("count", count);
		model.put("names", names);
		return "info/info/ddxx_cx";
	}
}
