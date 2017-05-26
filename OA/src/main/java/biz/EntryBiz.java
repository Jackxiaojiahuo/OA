package biz;

import java.util.List;
import java.util.Map;

import model.Entry;
/**
 * 入职业务接口
 * @author caohaoran
 *
 */
public interface EntryBiz {
	List<Entry> findAllEntry(Map map);//全部查询
	int findAllEntry_count(Map map);
	int addEntry(Entry e);//入职申请
	Entry findEntryById(int et_id);//id查询
	
}
