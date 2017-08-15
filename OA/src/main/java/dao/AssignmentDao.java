package dao;

import java.util.List;
import java.util.Map;

import model.Assignment;
import model.Prospectus;

/**
 * 全部工作任务dao接口
 * 
 * @author Administrator
 *
 */
public interface AssignmentDao {
	// 显示所有全部工作任务
	List<Assignment> findAllAssignment(Map map);

	// 查询总数
	int findAllAssignment_count(Map map);

	// id查询 （任务展示）
	Assignment findAssignmentById(int assignment_id);

	// 新增工作任务（新增）
	int addAssignment(Assignment assignment);

	// 模糊查询()findAssignmentBylike
	List<Assignment> findAssignmentBylike(Assignment assignment);

	// 根据任务状态查询
	List<Assignment> findAssignmentState(Map map);

	// 根据任务分类查询（常规任务）
	List<Assignment> findAssignmentClassify(Map map);
}
