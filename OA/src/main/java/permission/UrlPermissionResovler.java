package permission;

import org.apache.shiro.authz.Permission;
import org.apache.shiro.authz.permission.PermissionResolver;
import org.apache.shiro.authz.permission.WildcardPermission;

public class UrlPermissionResovler implements PermissionResolver {

	@Override
	public Permission resolvePermission(String permissionString) {
		if(permissionString.startsWith("/")) {//如果url是/开头,返回自定义permission
			System.out.println("url>>>>>>>>>>>>>");
			return new UrlPermission(permissionString);
		}
		System.out.println("wild>>>>>>>>>>>>>");
		return new WildcardPermission(permissionString);
	}

}
