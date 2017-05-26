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
	//全部查询
	@Override
	public List<Entry> findAllEntry(Map map) {
		return enDao.findAllEntry(map);
	}
	@Override
	public int findAllEntry_count(Map map) {
		return enDao.findAllEntry_count(map);
	}
	//申请
	@Override
	public int addEntry(Entry e) {
		return enDao.addEntry(e);
	}
	//根据id查询
	@Override
	public Entry findEntryById(int et_id) {
		return enDao.findEntryById(et_id);
	}

}
