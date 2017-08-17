package util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.beans.factory.annotation.Autowired;

import biz.EmployeeBiz;
import biz.EmployeeRoleBiz;
import biz.RoleBiz;
import dao.RoleDao;
import model.Employee;
import model.EmployeeRole;
import model.Page;
import model.Role;

@SuppressWarnings("serial")
public class NoticeUtil implements TaskListener {
	@Autowired
	private RoleDao dao;
	@Autowired
	private EmployeeRoleBiz erb;
	@Autowired
	private EmployeeBiz empb;

	/**用来指定任务的办理人*/
	@Override
	public void notify(DelegateTask delegateTask) {
		//指定个人任务的办理人，也可以指定组任务的办理人
		/*Role r=new Role();
		r.setRole_name("人事总监");
		System.out.println(r.getRole_name());
		Role findRoleById = dao.findRoleByPara(r);
		Map map=new HashMap();
		Integer index=1;
		Page page=new Page(index,100000);
		map.put("index", 1);
		map.put("size", 1000000);
		List<Employee> list=empb.findAllEmployeeRight(map);
		EmployeeRole employeeRole=new EmployeeRole();
		employeeRole.setRole_id(4);
		for (Employee e : list) {
			List<EmployeeRole> erList=erb.findAllEmployeeRole(e.getEmp_id());
			EmployeeRole er=erList.get(0);
			if(er.getRole_id()==findRoleById.getRole_id()){
				
			}
		}*/
		delegateTask.setAssignee("阿哥");
	
	}

}
