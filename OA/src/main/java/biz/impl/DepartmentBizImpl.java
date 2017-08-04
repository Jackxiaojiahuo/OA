package biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.DepartmentBiz;
import dao.DepartmentDao;
import model.Department;
/**
 * 部门业务实现类
 * @author Jack
 *
 */
@Service
public class DepartmentBizImpl implements DepartmentBiz {
	/**
	 * 部门接口对象
	 */
	@Autowired
	private DepartmentDao departDao;
	@Override
	public List<Department> findAllDepart() {
		return departDao.findAllDepart();
	}
	/**
	 * 获取所有部门列表
	 */
	@Override
	public List<Department> findAllDepart_list() {
		return departDao.findAllDepart_list();
	}
	/**
	 * 获取所有部门下拉列表展示数据
	 */
	@Override
	public List<Department> findAllDepart_select() {
		List<Department> list=departDao.findAllDepart_list();
		List<Department> infoList=new ArrayList<Department>();
		for (Department department : list) {
			infoList.add(new Department(department.getDepart_id(),"&nbsp;&nbsp;"+department.getDepart_name()));
			if(department.getChildrenList()!=null){
				for (Department d : department.getChildrenList()) {
					infoList.add(new Department(d.getDepart_id(),"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+d.getDepart_name()));
					if(d.getChildrenList()!=null){
						for (Department d1 : d.getChildrenList()) {
							infoList.add(new Department(d1.getDepart_id(),"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+d1.getDepart_name()));
						}
					}
				}
			}
		}
		return infoList;
	}
	/**
	 * 根据id查找部门
	 */
	@Override
	public Department findDepartById(Department depart) {
		return departDao.findDepartById(depart);
	}
	/**
	 * 添加部门
	 */
	@Override
	public int addDepart(Department depart) {
		return departDao.addDepart(depart);
	}
	/**
	 * 修改部门信息
	 */
	@Override
	public int updateDepart(Department depart) {
		return departDao.updateDepart(depart);
	}
	/**
	 * 删除部门信息
	 */
	@Override
	public int delDepart(Department depart) {
		return departDao.updateDepart(depart);
	}
	
	@Override
	public Department findDepartByName(Department depart) {
		return departDao.findDepartById(depart);
	}
	

}
