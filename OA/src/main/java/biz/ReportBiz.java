package biz;

import java.util.List;
import java.util.Map;

import model.Report;

/**
 * 全部工作报告报告业务接口
 * 
 * @author Administrator
 *
 */
public interface ReportBiz {
	// 显示所有全部工作报告
	List<Report> findAllReport(Map map);

	// 查询总数
	int findAllReport_count(Map map);

	// id查询 （报告展示）
	Report findReportById(int report_id);

	// 模糊查询()findReportBylike
	List<Report> findReportBylike(Report report);

	// 根据报告状态查询
	List<Report> findReportState(Map map);

	// 根据报告分类查询（年度报告）
	List<Report> findReportClassify(Map map);
}
