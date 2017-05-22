package realm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ByteSource;

import biz.EmployeeBiz;
import kit.ShiroKit;
import model.Employee;
import model.Resource;
import util.InitServlet;

public class UserRealm extends AuthorizingRealm {
	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		Employee emp = ((Employee)principals.getPrimaryPrincipal());
		int eid = emp.getEmp_id();
		System.out.println(emp.getEmp_id()+","+emp.getEmp_name());
		EmployeeBiz empService = (EmployeeBiz)InitServlet.getBean("empService");
		List<String> roles = empService.listRoleSnByUser(eid);
		List<Resource> reses = empService.listAllResource(eid);
		List<String> permissions = new ArrayList<String>();
		for(Resource r:reses) {
			System.out.println(r.getR_url()+">>>>>>>>>>>>>>>>>>>>>>>r.getR_url()");
			permissions.add(r.getR_url());//添加的是自定义的userpermission,调用UrlPermissionResovler类的resolvePermission方法
		}
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setRoles(new HashSet<String>(roles));
		info.setStringPermissions(new HashSet<String>(permissions));
		System.out.println("userRealMMMMMMMMMMMMMMMMM");
		return info;//调用ResourceCheckFilter类的isAccessAllowed方法
	}
		
	/**
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		EmployeeBiz userService = (EmployeeBiz)InitServlet.getBean("empService");
		String username = token.getPrincipal().toString();//获取用户登录名(工号)
		String password = new String((char[])token.getCredentials());//因为密码是char数组,所以转换为String
		Employee emp = userService.login(username, password);//验证用户登录名和密码
		if(emp==null) throw new UnknownAccountException("用户名或者密码出错");
		if(!emp.getEmp_pwd().equals(ShiroKit.md5(password, username)))
			throw new IncorrectCredentialsException("用户名或者密码出错");
		if(emp.getEmp_state().equals("离职")) throw new LockedAccountException("用户已经被锁定");
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(emp, emp.getEmp_pwd(), this.getName());
		info.setCredentialsSalt(ByteSource.Util.bytes(emp.getEmp_code()));//创建盐值
		return info;
	}

	/**
	 * 清除缓存
	 */
	@Override
	protected void clearCachedAuthorizationInfo(PrincipalCollection principals) {
		//System.out.println("清除授权的缓存");
		Cache c = this.getAuthorizationCache();
		Set<Object> keys = c.keys();
		for(Object o:keys) {
			System.out.println("授权缓存:"+o+"-----"+c.get(o)+"----------");
		}
		
		super.clearCachedAuthorizationInfo(principals);
	}

	@Override
	protected void clearCachedAuthenticationInfo(PrincipalCollection principals) {
		//System.out.println("清除认证的缓存");
		Cache c = this.getAuthenticationCache();
		Set<Object> keys = c.keys();
		for(Object o:keys) {
			System.out.println("认证缓存:"+o+"----------"+c.get(o)+"----------");
		}
		Employee emp = ((Employee)principals.getPrimaryPrincipal());
		SimplePrincipalCollection spc = new SimplePrincipalCollection(emp.getEmp_name(), getName());
		super.clearCachedAuthenticationInfo(spc);
	}
	
	

}
