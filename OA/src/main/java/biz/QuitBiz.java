package biz;

import java.util.List;
import java.util.Map;

import model.Quit;
/**
 * 离职业务接口
 * @author caohaoran
 *
 */
public interface QuitBiz {
	List<Quit> findAllQuit(Map map);//全部查询
	int findAllQuit_count(Map map);
	int addQuit(Quit q);//离职申请
	Quit findQuitById(int q_id);//id查询
}
