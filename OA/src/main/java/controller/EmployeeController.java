package controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import biz.EmployeeBiz;
import biz.EmployeeRoleBiz;
import kit.ShiroKit;
import model.Employee;
import model.EmployeeRole;
import model.Page;
import util.FileIO;

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
	 * 修改密码
	 * @param model
	 * @param session
	 * @param pwdOld
	 * @param pwd1
	 * @return
	 */
	@RequestMapping(params = "action=updatePwd")
	public String updatePwd(ModelMap model,HttpSession session, String pwdOld, String pwd1) {
		Employee emp = (Employee) session.getAttribute("s_emp");
		System.out.println("输入的旧密码:"+ShiroKit.md5(pwdOld, emp.getEmp_code()));
		System.out.println("登录用户名:"+emp.getEmp_code());
		System.out.println("登录密码:"+emp.getEmp_pwd());
		if (ShiroKit.md5(pwdOld, emp.getEmp_code()).equals(emp.getEmp_pwd()) ) {
			emp.setEmp_pwd(ShiroKit.md5(pwd1, emp.getEmp_code()));
			if(empBiz.updatePwd(emp) > 0){
				model.put("pwdmsg", "密码修改成功");
				return "grsz/grsz";
			}else{
				model.put("pwdmsg", "密码修改失败");
				return "grsz/klxg";
			}
		} else {
			model.put("pwdmsg", "密码修改失败");
			return "grsz/klxg";
		}
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
		EmployeeRole er=new EmployeeRole();
		er.setEmp_id(emp_id);
		model.put("empRole", empRoleBiz.findAllEmployeeRole(er));
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
	public String updateRoleForEmp(ModelMap model, Integer emp_id, String[] role_ids,HttpServletRequest request) {
		List<EmployeeRole> list = new ArrayList<EmployeeRole>();
		for (String role_id : role_ids) {
			list.add(new EmployeeRole(emp_id, Integer.valueOf(role_id)));
		}
		if (empRoleBiz.updateRoleForEmp(emp_id, list) > 0) {
			request.getSession().setAttribute("msg", "角色修改成功");
			return "redirect:emp.do?action=findEmpRight";
		} else {
			request.getSession().setAttribute("msg", "角色修改失败");
			return "sysManager/addJsForEmp";
		}
	}
	/**
	 * 进入个人设置页面
	 */
	@RequestMapping(params="action=showInfo")
	public String showInfo(ModelMap model,Integer emp_id,HttpSession session){
		Employee e = empBiz.findEmployeeById(emp_id);
		model.put("EMP",e);
		session.setAttribute("s_emp", e);
		return "grsz/grsz";
	}
	/**
	 * 修改员工状态信息
	 * @param emp
	 * @return
	 */
	@RequestMapping(params="action=updateZT")
	public String updateZT(ModelMap model,String emp_icon,String status,
			String description,String phone,String mobile,String email,String qq,String emp_id,HttpServletRequest request){
		Employee emp=new Employee();
		emp.setEmp_id(Integer.valueOf(emp_id));
		emp.setEmp_icon(emp_icon);
		emp.setEmp_status(status);
		emp.setEmp_description(description);
		emp.setEmp_phone(phone);
		emp.setEmp_mobile(mobile);
		emp.setEmp_email(email);
		emp.setEmp_qq(qq);
		if(empBiz.upEmp(emp)>0){
			request.getSession().setAttribute("msg", "修改信息成功");
			return "redirect:emp.do?action=showInfo&emp_id="+emp_id;
		}else{
			request.getSession().setAttribute("msg", "修改信息失败");
			return "redirect:emp.do?action=showInfo&emp_id="+emp_id;
		}
	}
	
	
	
	/**
	 * 曹浩然代码
	 */
	/**
	 * 显示全部员工的信息
	 * @param model
	 * @param num
	 * @param index
	 * @param state
	 * @return
	 */
	@RequestMapping(params="action=Emplist")
	public String findAllEmp(ModelMap model,Integer num,Integer index,Integer state){
		int zzstate = empBiz.zzstate("在职");
		model.put("zzstate", zzstate);
		int systate = empBiz.systate("试用期");
		model.put("systate", systate);
		int txstate = empBiz.txstate("退休");
		model.put("txstate", txstate);
		int lzstate = empBiz.lzstate("离职");
		model.put("lzstate", lzstate);
		num=num==null?0:num;
		model.put("num",num);
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		String emp_state=null;
		List<Employee> list=null;
		if(num==0){
			list=empBiz.findAllEmployee(map);
			page.setCount(empBiz.findAllEmployee_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==1){
				map.put("emp_state", "在职");
				list = empBiz.findEmployeeState(map);
				page.setCount(empBiz.findEmployeeState_count(map));
				model.put("page", page);
				model.put("list", list);
		}else if(num==2){
				map.put("emp_state", "试用期");
				list = empBiz.findEmployeeState(map);
				page.setCount(empBiz.findEmployeeState_count(map));
				model.put("page", page);
				model.put("list", list);
		}else if(num==3){
				map.put("emp_state", "退休");
				list = empBiz.findEmployeeState(map);
				page.setCount(empBiz.findEmployeeState_count(map));
				model.put("page", page);
				model.put("list", list);
		}else if(num==4){
				map.put("emp_state", "离职");
				list = empBiz.findEmployeeState(map);
				page.setCount(empBiz.findEmployeeState_count(map));
				model.put("page", page);
				model.put("list", list);
			}
		return "hr/yggl";
	}
	/**
	 * 新增员工
	 * @param emp_code
	 * @param emp_name
	 * @param emp_sex
	 * @param emp_state
	 * @param emp_mobile
	 * @param emp_email
	 * @param emp_birth
	 * @param emp_join
	 * @param emp_formal
	 * @param emp_leave
	 * @param emp_description
	 * @param emp_icon
	 * @param emp_status
	 * @param emp_phone
	 * @param emp_qq
	 * @param state_id
	 * @return
	 */
	@RequestMapping(params="action=add")
	public String addEmp(String emp_code,String emp_name,String emp_sex,
			String emp_state,String emp_mobile,String emp_email,String emp_birth,
			String emp_join,String emp_formal,String emp_leave,String emp_description,
			String emp_icon,String emp_status,String emp_phone,String emp_qq,Integer state_id,Integer depart_id){
		Employee e=new Employee(null, emp_code,emp_name,emp_sex,
				emp_state,emp_mobile,emp_email,emp_birth==""?null:emp_birth,emp_join==""?null:emp_join,
				emp_formal==""?null:emp_formal,emp_leave==""?null:emp_leave,emp_description,emp_icon,depart_id,"000000",
				emp_status,emp_phone,emp_qq,0);
		empBiz.addEmp(e);
		return "redirect:emp.do?action=Emplist";
	}
	/**
	 * 根据提供的条件进行查询
	 * @param model
	 * @param names
	 * @param count
	 * @param index
	 * @return
	 */
	@RequestMapping(params="action=cz")
	public String findEmpLike(ModelMap model,String names,String count,Integer index){
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		List<Employee> list=null;
		if(count.equals("")){
			page.setCount(0);
		}else{
		//姓名
		if(names.equals("emp_name")){
			map.put("emp_name", count);
			page.setCount(empBiz.findEmployeeBylike_count(map));
			//工号
		}else if(names.equals("emp_code")){
			map.put("emp_code", count);
			page.setCount(empBiz.findEmployeeBylike_count(map));
		}
		list=empBiz.findEmployeeBylike(map);
		}
		model.put("page", page);
		model.put("names", names);
		model.put("count", count);
		model.put("list", list);
		return "hr/info/czyg";
	}
	/**
	 * 删除员工
	 * @param emp_id
	 * @return
	 */
	@RequestMapping(params="action=del")
	public String delEmp(Integer emp_id){
		empBiz.delEmployee(emp_id);
		return "redirect:emp.do?action=Emplist";
	}
	/**
	 * 修改员工的信息
	 * @param emp_id
	 * @param emp_code
	 * @param emp_name
	 * @param emp_sex
	 * @param emp_state
	 * @param emp_mobile
	 * @param emp_email
	 * @param emp_birth
	 * @param emp_join
	 * @param emp_formal
	 * @param emp_leave
	 * @param emp_description
	 * @param emp_icon
	 * @param emp_status
	 * @param emp_phone
	 * @param emp_qq
	 * @param state_id
	 * @return
	 */
	@RequestMapping(params="action=update")
	public String updateEmp(Integer emp_id,String emp_code,String emp_name,String emp_sex,
			String emp_state,String emp_mobile,String emp_email,String emp_birth,
			String emp_join,String emp_formal,String emp_leave,String emp_description,
			String emp_icon,String emp_status,String emp_phone,String emp_qq,Integer state_id,Integer depart_id){
		
		Employee e=new Employee(emp_id, emp_code,emp_name,emp_sex,
				emp_state,emp_mobile,emp_email,emp_birth==""?null:emp_birth,emp_join==""?null:emp_join,
				emp_formal==""?null:emp_formal,emp_leave==""?null:emp_leave,emp_description,emp_icon,depart_id,null,
				emp_status,emp_phone,emp_qq,0);
		empBiz.updateEmployee(e);
		return "redirect:emp.do?action=zs&emp_id="+emp_id;
	}
	/**
	 * 展示员工的信息
	 * @param model
	 * @param emp_id
	 * @param id
	 * @return
	 */
	@RequestMapping(params="action=zs")
	public String zsEmp(ModelMap model,Integer emp_id,String id){
		emp_id=emp_id==null?0:emp_id;
		id=id==null?null:id;
		Employee e = empBiz.findEmployeeById(emp_id);
		model.put("e", e);
		if("id".equals(id)){		
			return "hr/info/xgyg";
		}else{
			return "hr/info/zsyg";
		}
	}
	/**
	 * 判断工号是否已存在
	 * @param emp_code
	 * @return
	 */
	@RequestMapping(params="action=gh")
	@ResponseBody
	public String ghEmp(String emp_code){
		if(empBiz.findBycode(emp_code)>0){
			return "1";
		}else{
			return "0";
		}
	}
}