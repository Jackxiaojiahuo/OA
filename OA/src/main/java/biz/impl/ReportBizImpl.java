package biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biz.ReportBiz;
import dao.ReportDao;
import model.Report;
@Service
public class ReportBizImpl implements ReportBiz{
	@Autowired
	private ReportDao reportDao;
	/**
	 * 显示所有工作报告
	 */
	@Override
	public List<Report> findAllReport(Map map) {
		// TODO Auto-generated method stub
		return reportDao.findAllReport(map);
	}
	/**
	 * 显示总数
	 */
	@Override
	public int findAllReport_count(Map map) {
		// TODO Auto-generated method stub
		return reportDao.findAllReport_count(map);
	}
	/**
	 * 展示报告
	 */
	@Override
	public Report findReportById(int report_id) {
		// TODO Auto-generated method stub
		return reportDao.findReportById(report_id);
	}
	/**
	 * 撰写工作报告(新增)
	 */
	@Override
	public int addReport(Report report) {
		// TODO Auto-generated method stub
		return reportDao.addReport(report);
	}
	/**
	 * 根据报告名称 模糊查询()findReportBylike
	 */
	@Override
	public List<Report> findReportBylike(Report report) {
		// TODO Auto-generated method stub
		return reportDao.findReportBylike(report);
	}
	/**
	 *  根据报告状态查询
	 */
	@Override
	public List<Report> findReportState(Map map) {
		// TODO Auto-generated method stub
		return reportDao.findReportState(map);
	}
	/**
	 *  根据报告分类查询（年度报告）
	 */
	@Override
	public List<Report> findReportClassify(Map map) {
		// TODO Auto-generated method stub
		return reportDao.findReportClassify(map);
	}
	

}
