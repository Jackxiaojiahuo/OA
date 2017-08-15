package biz;

import java.util.List;
import java.util.Map;

import model.Prospectus;

/**
 * 全部工作计划业务接口
 * 
 * @author Administrator
 *
 */
public interface ProspectusBiz {
	// 显示所有全部工作计划
	List<Prospectus> findAllprospectus(Map map);
	//查询总数
	int findAllprospectus_count(Map map);
	//id查询 （计划展示）
	Prospectus findprospectusById(int prospectus_id);
	//制定工作计划（新增）
	int addProspectus(Prospectus prospectus);
	// 模糊查询()findprospectusBylike
	List<Prospectus> findprospectusBylike(Prospectus prospectus);
	// 根据计划状态查询
	List<Prospectus> findProspectusState(Map map);
	// 根据计划分类查询
	List<Prospectus> findProspectusClassify(Map map);
	// 查询行数
//	int pszstate(String pros_state);
//
//	int fbzxstate(String pros_state);
//
//	int ygbstate(String pros_state);
}
