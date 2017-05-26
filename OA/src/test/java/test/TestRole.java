package test;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.DepartmentDao;
import kit.ShiroKit;
import model.Department;

public class TestRole {
	@Test
	public void testFindAll() {
//		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//		RoleDao bean = context.getBean(RoleDao.class);
////		int count = bean.findAllRole_count();
////		System.out.println(">>>>>"+count);
//		List<Role> list=bean.findAllRole(new Page(0,14));
//		System.out.println(list.size());
//		ResourceDao bean = context.getBean(ResourceDao.class);
//		List<Resource> list=bean.findAllRes();
		Date d=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss EE");
		System.out.println(sdf.format(d));
//		show(list,"╟");
	}
//	public void show(List<Department> list,String type){
//		for (Department department : list) {
//			System.out.println(type+department.getDepart_name());
//			show(department.getChildrenList(),"    "+type);
//		}
//	}
	@Test
	public void testUpdateEmp(){
		System.out.println(ShiroKit.md5("000000", "admin")+"   1>>>>>>>>>>>>>...");
//		System.out.println(ShiroKit.md5("000000", "oa")+"   2>>>>>>>>>>>>>...");
//		Subject subject = SecurityUtils.getSubject();
//		UsernamePasswordToken token = new UsernamePasswordToken("王伟17", "000000");
//		String emsg = null;
//		try {
//			subject.login(token);
//		} catch (AuthenticationException e) {
//			emsg = e.getMessage();
//		}
//		if(ShiroKit.isEmpty(emsg)) {
//			System.out.println("true>>>>>>>>"+emsg);
//		} else {
//			System.out.println("false>>>>>>>>"+emsg);
//		}
	}
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		DepartmentDao bean = context.getBean(DepartmentDao.class);
		List<Department> list=bean.findAllDepart_list();
		System.out.println("集合长度>>"+list.size());
		Map<Integer,String> map=new HashMap<Integer,String>();
		map.put(0,"<空>");
//		JsonArray ja=new JsonArray();
		for (Department department : list) {
//			JsonObject jo=new JsonObject();
//			jo.put("depart_id", department.getDepart_id());
//			jo.put("df", "dfs");
			System.out.println(department.getDepart_name());
			map.put(department.getDepart_id(),"  ╠"+department.getDepart_name());
//			System.out.println(department.getChildren().getDepart_name()+"<<<<");
			//System.out.println(department.getChildrenList());
			if(department.getChildrenList()!=null){
				for (Department d : department.getChildrenList()) {
					map.put(d.getDepart_id(),"    ╠"+d.getDepart_name());
					System.out.println("    ╠"+d.getDepart_name());
					if(d.getChildrenList()!=null){
						for (Department d1 : d.getChildrenList()) {
							System.out.println("        ╠"+d1.getDepart_name());
							map.put(d.getDepart_id(),"    ╠"+d.getDepart_name());
						}
					}
				}
			}
		}
		System.out.println("info集合>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
		for (int i = 0; i < map.size(); i++) {
		}
	}
}
