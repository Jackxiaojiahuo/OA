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
	/**
	 * 显示全部入职人员的申请单
	 * @param map
	 * @return
	 */
	List<Entry> findAllEntry(Map map);
	int findAllEntry_count(Map map);
	/**
	 * 入职申请
	 * @param e
	 * @return
	 */
	int addEntry(Entry e);
	/**
	 * 展示入职人员的详细申请单
	 * @param et_id
	 * @return
	 */
	Entry findEntryById(int et_id);
	
}
