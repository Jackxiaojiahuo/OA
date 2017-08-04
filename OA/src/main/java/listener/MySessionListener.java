package listener;

import org.apache.shiro.session.Session;
import org.apache.shiro.session.SessionListener;
import org.springframework.beans.factory.annotation.Autowired;

import biz.UserOnlineBiz;
/**
 * session监听器
 * @author Jack
 *
 */
public class MySessionListener implements SessionListener {
	@Autowired
	private UserOnlineBiz uoBiz;
	@Override
	public void onStop(Session session) {
		System.out.println("session销毁"+session.getId());
		destory(session);
		System.out.println("销毁成功");
	}

	@Override
	public void onStart(Session session) {
		System.out.println("session创建:"+session.getId());
	}

	@Override
	public void onExpiration(Session session) {
		System.out.println("session过期:"+session.getId());
		destory(session);
	}
	/**
	 * 删除在线用户表数据
	 * @param session
	 */
	public void destory(Session session){
		uoBiz.delUserOnline(session.getId()+"");
	}
}
