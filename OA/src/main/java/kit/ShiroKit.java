package kit;

import org.apache.shiro.crypto.hash.Md5Hash;
/**
 * shiro工具
 * @author Jack
 *
 */
public class ShiroKit {
	/**
	 * MD5盐值加密
	 * @param password
	 * @param salt
	 * @return
	 */
	public static String md5(String password,String salt) {
		return new Md5Hash(password, salt).toHex();//16进制编码
		 
	}
	/**
	 * 判断对象是否为空
	 * @param obj
	 * @return
	 */
	public static boolean isEmpty(Object obj) {
		
		if(obj instanceof String) //判断是否是空字符串
			return "".equals(obj);
		
		if(obj instanceof Integer) //判断是否是0
			return (Integer)obj==0;
		
		if(obj==null) return true;//判断是否是空对象
		else return false;
	}
}
