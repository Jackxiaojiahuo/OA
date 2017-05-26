package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.DepartmentBiz;
import biz.UserOnlineBiz;
import kit.ShiroKit;
import model.Department;
import model.Employee;
import model.UserOnline;

@Controller
@RequestMapping("login.do")
public class LoginController {
	@Autowired
	private UserOnlineBiz uoBiz;
	@Autowired
	private DepartmentBiz departBiz;
	/**
	 * 员工登录
	 */
	@RequestMapping(params="action=login")
	public String login(String username, String password, ModelMap model,HttpSession session,HttpServletRequest request) {
		if(username==null||"".equals(username)||"".equals(password)||password==null){
			return "login/login";
		}else{
			System.out.println("登录中>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
			Subject subject = SecurityUtils.getSubject();
			UsernamePasswordToken token = new UsernamePasswordToken(username, password);
			String emsg = null;
			try {
				subject.login(token);// 登录
			} catch (AuthenticationException e) {
				emsg = e.getMessage();
			}
			Employee emp=(Employee)subject.getPrincipal();
			//System.out.println(emp.getEmp_name());
			session.setAttribute("s_emp", emp);
			if (ShiroKit.isEmpty(emsg)) {// 如果错误字符串为空
				System.out.println("ip>>>>>>>>:"+request.getRemoteAddr());
				UserOnline uo=new UserOnline();
				uo.setIp(request.getRemoteAddr());
				uo.setEmp_id(emp.getEmp_id());
				System.out.println("登录用户的id>>>"+emp.getEmp_id());
				uoBiz.delUserOnline(emp.getEmp_id());
				uoBiz.addUserOnline(uo);
				Session session2 = subject.getSession();
				List<Department> bm = departBiz.findAllDepart_select();
				session.setAttribute("bm", bm);
				System.out.println("sessionId>>>>>>>>>>>"+session2.getId());
				System.out.println("登录成功");
				return "index";
//				return "redirect:/admin/index.do?action=index";
			} else {
				model.addAttribute("emsg", emsg);
				System.out.println("登录失败");
				return "login/login";
			}
		}
	}
	@RequestMapping(params="action=exit")
	public String logout(){
		Subject subject = SecurityUtils.getSubject();
		Employee emp=(Employee)subject.getPrincipal();
		System.out.println("退出用户的编号>>>>>>>>"+emp.getEmp_id());
		Session session = subject.getSession();
		System.out.println("退出的用户>>>>>>>>>>>"+session.getId());
		uoBiz.delUserOnline(emp.getEmp_id());
		subject.logout();
		return "redirect:login/login.jsp";
	}
	@RequestMapping(params="action=uo")
	public String findAllUo(ModelMap model){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		List<UserOnline> list = uoBiz.findAllUserOnline();
		for (UserOnline userOnline : list) {
			userOnline.setIntoTime(sdf.format(userOnline.getStartTime()));
		}
		model.put("uoList", list);
		model.put("uoCount", uoBiz.findAllUserOnline_count());
		return "sysManager/zxyh";
	}
}
