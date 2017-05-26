package dao;

import java.util.List;
import java.util.Map;

import model.Become;
import model.Entry;

/*
 * 入职方法接口类
 */
public interface EntryDao {
	List<Entry> findAllEntry(Map map);//全部查询
	int findAllEntry_count(Map map);
	int addEntry(Entry e);//入职申请
	Entry findEntryById(int q_id);//id查询
}
