package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.EmployeeBiz;
import biz.EmployeeRoleBiz;
import kit.ShiroKit;
import model.Employee;
import model.EmployeeRole;
import model.Page;

@Controller
@RequestMapping("emp.do")
public class EmployeeController {
	/**
	 * 员工业务接口对象
	 */
	@Autowired
	private EmployeeBiz empBiz;
	@Autowired
	private EmployeeRoleBiz empRoleBiz;

	/**
	 * 查询所有非离职的员工
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(params = "action=findEmpRight")
	public String findAllEmployeeRight(ModelMap model, Integer index, Integer depart_id, String emp_code,
			String emp_name) {
		Map map = new HashMap();
		index = index == null ? 1 : index;
		Page page = new Page(index, 24);
		map.put("emp_code", emp_code);
		map.put("emp_name", emp_name);
		map.put("depart_id", depart_id);
		map.put("index", (index - 1) * 24);
		map.put("size", 24);
		List<Employee> empList = empBiz.findAllEmployeeRight(map);
		page.setCount(empBiz.findAllEmployeeRight_count(map));
		model.put("empList", empList);
		model.put("page", page);
		model.put("emp_code", emp_code);
		model.put("emp_name", emp_name);
		return "sysManager/yhgl";
	}

	/**
	 * 初始化密码ajax请求
	 * 
	 * @param emp_id
	 * @return
	 */
	@RequestMapping(params = "action=initPwd")
	@ResponseBody
	public String updatePwdInit(Integer emp_id, String emp_code) {
		String result = "初始化密码失败";
		Employee emp = new Employee();
		emp.setEmp_id(emp_id);
		emp.setEmp_pwd(ShiroKit.md5("000000", emp_code));
		if (empBiz.updatePwdInit(emp) > 0) {
			result = "初始化密码成功";
		}
		return result;
	}

	/**
	 * 获取用户和角色信息
	 * 
	 * @param model
	 * @param emp_id
	 * @return
	 */
	@RequestMapping(params = "action=findAllRoleForEmp")
	public String findAllRole(ModelMap model, Integer emp_id) {
		model.put("map", empBiz.toJsForEmp(emp_id));
		model.put("empRole", empRoleBiz.findAllEmployeeRole(emp_id));
		return "sysManager/addJsForEmp";
	}

	/**
	 * 为员工修改角色
	 * 
	 * @param model
	 * @param emp_id
	 * @param role_ids
	 * @return
	 */
	@RequestMapping(params = "action=updateRoleForEmp")
	public String updateRoleForEmp(ModelMap model, Integer emp_id, String[] role_ids) {
		List<EmployeeRole> list = new ArrayList<EmployeeRole>();
		for (String role_id : role_ids) {
			list.add(new EmployeeRole(emp_id, Integer.valueOf(role_id)));
		}
		if (empRoleBiz.updateRoleForEmp(emp_id, list) > 0) {
			return "redirect:emp.do?action=findEmpRight";
		} else {
			return "sysManager/addJsForEmp";
		}
	}
}
