package biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.ResourceBiz;
import dao.ResourceDao;
import model.Resource;
/**
 * 资源业务实现类
 * @author Jack
 *
 */
@Service
public class ResourceBizImpl implements ResourceBiz {
	@Autowired
	private ResourceDao resDao;
	/**
	 * 查询所有资源
	 * @return
	 */
	@Override
	public List<Resource> findAllRes(Integer r_type) {
		return resDao.findAllRes(r_type);
	}

}
