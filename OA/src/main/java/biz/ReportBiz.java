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
	/**
	 *  显示所有全部工作报告
	 * @param map
	 * @return
	 */
	List<Report> findAllReport(Map map);

	/**
	 *  查询总数
	 * @param map
	 * @return
	 */
	int findAllReport_count(Map map);

	/**
	 *  id查询 （报告展示）
	 * @param report_id
	 * @return
	 */
	Report findReportById(int report_id);

	/**
	 *  新增工作报告（新增）
	 * @param report
	 * @return
	 */
	int addReport(Report report);

	/**
	 *  根据报告名称  模糊查询()findReportBylike
	 * @param report
	 * @return
	 */
	List<Report> findReportBylike(Report report);

	/**
	 *  根据报告状态查询
	 * @param map
	 * @return
	 */
	List<Report> findReportState(Map map);

	/**
	 *  根据报告分类查询（年度报告）
	 * @param map
	 * @return
	 */
	List<Report> findReportClassify(Map map);
}
