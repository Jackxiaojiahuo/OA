package biz;

import java.util.List;
import java.util.Map;

import model.Assignment;

/**
 * 全部工作任务业务接口
 * 
 * @author Administrator
 *
 */
public interface AssignmentBiz {
	/**
	 *  显示所有全部工作任务
	 * @param map
	 * @return
	 */
	List<Assignment> findAllAssignment(Map map);

	/**
	 *  查询总数
	 * @param map
	 * @return
	 */
	int findAllAssignment_count(Map map);

	/**
	 *  id查询 （任务展示）
	 * @param assignment_id
	 * @return
	 */
	Assignment findAssignmentById(int assignment_id);

	/**
	 *  新增工作任务（新增）
	 * @param assignment
	 * @return
	 */
	int addAssignment(Assignment assignment);

	/**
	 * 根据任务名称   模糊查询()findAssignmentBylike
	 * @param assignment
	 * @return
	 */
	List<Assignment> findAssignmentBylike(Assignment assignment);

	/**
	 *  根据任务状态查询
	 * @param map
	 * @return
	 */
	List<Assignment> findAssignmentState(Map map);

	/**
	 *  根据任务分类查询（常规任务）
	 * @param map
	 * @return
	 */
	List<Assignment> findAssignmentClassify(Map map);
}
