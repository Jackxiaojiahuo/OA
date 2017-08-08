package controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import biz.DepartmentBiz;
import biz.EmployeeBiz;
import biz.RoleBiz;
import kit.ShiroKit;
import model.Department;
import model.Employee;
import model.Role;
import util.FileIO;

@Controller
@RequestMapping("param.do")
public class ParamController {
	@Autowired
	private DepartmentBiz departmentBiz;
	@Autowired
	private RoleBiz roleBiz;
	@Autowired
	private EmployeeBiz empBiz;
	/**
	 * 获取所有部门列表
	 * @param model
	 * @return
	 */
	@RequestMapping(params="action=findAllDpeart")
	@ResponseBody
	public List<Department> findAllDpeart(ModelMap model){
		List<Department> list=departmentBiz.findAllDepart();
		return list; 
	}
	/**
	 * ajax判断部门名称
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping(params = "action=checkDname")
	@ResponseBody
	public String checkDname(String name) {
		String result = "";
		Department dept = new Department();
		dept.setDepart_name(name);
		if (departmentBiz.findDepartByName(dept)!=null) {
			result = "部门已存在";
		}
		return result;
	}
	/**
	 * ajax判断部门名称
	 * 
	 * @param 
	 * @return
	 */
	@RequestMapping(params = "action=checkRname")
	@ResponseBody
	public String checkRname(String name) {
		String result = "";
		Role role=new Role();
		role.setRole_name(name);
		if (roleBiz.findRoleByName(role)!=null) {
			result = "角色已存在";
		}
		return result;
	}
	/**
	 * ajax上传图片
	 * @param request
	 * @param file
	 * @return
	 */
	@ResponseBody
	@RequestMapping(params="action=upload")
	public String upload(HttpServletRequest request, @RequestParam MultipartFile file ) {
		String fileName=file.getOriginalFilename();
		try {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			Random random = new Random();
			int nextInt = random.nextInt(1000);
			fileName=sdf.format(date)+nextInt+fileName;
			File toFile = FileIO.createFile(fileName, request);
			FileIO.writeFile(file.getBytes(), toFile);
			System.out.println("文件名:"+file.getOriginalFilename());
		} catch (Exception e) {
			e.printStackTrace();
			fileName=e.getMessage();
		}
		return "{\"fileName\":\""+fileName+"\"}";
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
		if (empBiz.updatePwd(emp) > 0) {
			result = "初始化密码成功";
		}
		return result;
	}
}
