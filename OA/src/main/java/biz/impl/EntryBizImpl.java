package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.EntryBiz;
import dao.EntryDao;
import model.Entry;
/**
 * 入职实现类
 * @author caohaoran
 *
 */
@Service
public class EntryBizImpl implements EntryBiz{
	@Autowired
	private EntryDao enDao;
	/**
	 * 显示全部入职人员的申请单
	 */
	@Override
	public List<Entry> findAllEntry(Map map) {
		return enDao.findAllEntry(map);
	}
	@Override
	public int findAllEntry_count(Map map) {
		return enDao.findAllEntry_count(map);
	}
	/**
	 * 入职申请
	 */
	@Override
	public int addEntry(Entry e) {
		return enDao.addEntry(e);
	}
	/**
	 * 展示入职人员的详细申请单
	 */
	@Override
	public Entry findEntryById(int et_id) {
		return enDao.findEntryById(et_id);
	}

}
