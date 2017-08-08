package dao;

import java.util.List;
import java.util.Map;

import model.Entry;
/**
 * 入职方法接口
 * @author caohaoran
 *
 */
public interface EntryDao {
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
	 * 审批处理
	 * @param e
	 * @return
	 */
	int updateEntry(Entry e);
	/**
	 * 展示入职人员的详细申请单
	 * @param q_id
	 * @return
	 */
	Entry findEntryById(int q_id);
}
