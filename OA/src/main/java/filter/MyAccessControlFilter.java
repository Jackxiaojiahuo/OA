package filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.web.filter.AccessControlFilter;

public class MyAccessControlFilter extends AccessControlFilter {
	/**
	 * 判断当前用户是否具备某个资源访问权限
	 */
	@Override
	protected boolean isAccessAllowed(ServletRequest request,
			ServletResponse response, Object mappedValue) throws Exception {
		System.out.println("check auth");
		return false;
	}
	/**
	 * 判断当前用户是否具备某个资源访问权限,不具备访问此方法
	 */
	@Override
	protected boolean onAccessDenied(ServletRequest request,
			ServletResponse response) throws Exception {
		System.out.println("find error!");
		return true;
	}

}
