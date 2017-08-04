package dao;

import java.util.List;
import java.util.Map;

import model.Quit;

public interface QuitDao {
	List<Quit> findAllQuit(Map map);//全部查询
	int findAllQuit_count(Map map);
	int addQuit(Quit q);//离职申请
	Quit findQuitById(int q_id);//id查询
}
