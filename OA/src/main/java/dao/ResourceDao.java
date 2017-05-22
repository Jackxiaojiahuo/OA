package dao;

import java.util.List;

import model.Resource;
/**
 * 资源dao接口
 * @author Jack
 *
 */
public interface ResourceDao {
	/**
	 * 查询所有资源
	 * @return
	 */
	List<Resource> findAllRes(Integer r_type);
}
