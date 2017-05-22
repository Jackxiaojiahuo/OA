package filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;

public class ResourceCheckFilter extends AccessControlFilter {
	
	private String errorUrl;
	
	public String getErrorUrl() {
		return errorUrl;
	}

	public void setErrorUrl(String errorUrl) {
		this.errorUrl = errorUrl;
	}
	/**
	 * 判断当前用户是否具备某个资源访问权限
	 */
	@Override
	protected boolean isAccessAllowed(ServletRequest request,
			ServletResponse response, Object mappedValue) throws Exception {
		Subject subject = getSubject(request, response);
		String url = getPathWithinApplication(request);//得到url
		System.out.println("filter:"+url);
		HttpServletRequest r =(HttpServletRequest) request;
		System.out.println("参数:"+request.getParameter("action"));
		return subject.isPermitted(url+"?action="+request.getParameter("action"));//是否具备相应的权限,比如此url,调用UrlPermission类的implies方法
	}
	/**
	 * 判断当前用户是否具备某个资源访问权限,不具备访问此方法
	 */
	@Override
	protected boolean onAccessDenied(ServletRequest request,
			ServletResponse response) throws Exception {
		HttpServletResponse hsp = (HttpServletResponse)response;
		HttpServletRequest hReq = (HttpServletRequest)request;
		System.out.println("没有权限");
		hsp.sendRedirect(hReq.getContextPath()+"/"+this.errorUrl);
		return false;
	}

}
