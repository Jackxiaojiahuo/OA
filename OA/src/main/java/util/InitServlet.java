package util;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import biz.UserOnlineBiz;

public class InitServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static WebApplicationContext wc;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		//初始化spring的工厂
		wc = WebApplicationContextUtils.getWebApplicationContext(this.getServletContext());
		UserOnlineBiz uo=(UserOnlineBiz)wc.getBean("uoService");
		uo.delAll();
	}
	
	public static WebApplicationContext getWc() {
		return wc;
	}
	
	public static Object getBean(String name) {
		return wc.getBean(name);
	}

}
