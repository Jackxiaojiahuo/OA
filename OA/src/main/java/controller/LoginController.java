package controller;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import kit.ShiroKit;
import model.Employee;

@Controller
@RequestMapping("login.do")
public class LoginController {
	/**
	 * 员工登录
	 */
	@RequestMapping(params="action=login")
	public String login(String username, String password, ModelMap model,HttpSession session) {
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
}
