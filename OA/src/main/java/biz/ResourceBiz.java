package biz;

import java.util.List;

import model.Resource;
/**
 * 资源业务接口
 * @author Jack
 *
 */
public interface ResourceBiz {
	/**
	 * 查询所有资源
	 * @return
	 */
	List<Resource> findAllRes(Integer r_type);
}
