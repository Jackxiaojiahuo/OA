package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.AssignmentBiz;
import dao.AssignmentDao;
import model.Assignment;

@Service
public class AssignmentBizImpl implements AssignmentBiz{
	@Autowired
	private AssignmentDao assignmentDao;
	//显示所有全部工作任务
	public List<Assignment>findAllAssignment(Map map) {
		return assignmentDao.findAllAssignment(map);
		
	}
	//查询总数
	public int findAllAssignment_count(Map map) {
		// TODO Auto-generated method stub
		return assignmentDao.findAllAssignment_count(map);
	}
	//id查询（任务展示）
	@Override
	public Assignment findAssignmentById(int assignment_id) {
		// TODO Auto-generated method stub
		return assignmentDao.findAssignmentById(assignment_id);
	}
	//新增工作任务
	@Override
	public int addAssignment(Assignment assignment) {
		// TODO Auto-generated method stub
		return assignmentDao.addAssignment(assignment);
	}
	// 模糊查询()findAssignmentBylike
	@Override
	public List<Assignment> findAssignmentBylike(Assignment assignment) {
		// TODO Auto-generated method stub
		return assignmentDao.findAssignmentBylike(assignment);
	}
	// 根据任务状态查询
	@Override
	public List<Assignment> findAssignmentState(Map map) {
		// TODO Auto-generated method stub
		return assignmentDao.findAssignmentState(map);
	}
	// 根据任务分类查询（常规任务）
	@Override
	public List<Assignment> findAssignmentClassify(Map map) {
		// TODO Auto-generated method stub
		return assignmentDao.findAssignmentClassify(map);
	}
	

}
