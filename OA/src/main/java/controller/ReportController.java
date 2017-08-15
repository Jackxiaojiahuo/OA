package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ReportBiz;
import model.Assignment;
import model.Page;
import model.Report;

/**
 * 全部查询全部工作报告Controller控制器
 * @author Administrator
 *
 */
@Controller
@RequestMapping("repo.do")
public class ReportController {
	@Autowired
	private ReportBiz reportBiz;
	//全部查询全部工作报告
		@RequestMapping(params = "action=Reportlist")
		public String findAllReport(ModelMap model, Integer num, Integer index, Integer state,Integer classify,String report_create_name) {
			num=num==null ? 0: num;
			model.put("num", num);
			if (num==0) {
				index = index == null ? 1 : index;
				Map map = new HashMap();
				Page page = new Page(index, 10);
				map.put("index", (index - 1) * 10);
				map.put("size", 10);
				if(report_create_name!=null)
					map.put("report_create_name", report_create_name);
				//全部查询工作报告
				List<Report> list =reportBiz.findAllReport(map);
				//查询总数
				page.setCount(reportBiz.findAllReport_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if(num==1){
				String repo_state = null;
				Map map = new HashMap();
				index = index == null ? 1 : index;
				Page page = new Page(index, 10);
				map.put("index", (index - 1) * 10);
				map.put("size", 10);
				if(report_create_name!=null)
					map.put("report_create_name", report_create_name);
				switch (state) {
				case 0:
					repo_state="评审中";
					map.put("repo_state", "评审中");
					break;
					
				case 1:
					repo_state="关闭";
					map.put("repo_state", "关闭");
					break;
				}
				//根据报告状态查询
				List<Report> list = reportBiz.findReportState(map);
				page.setCount(reportBiz.findAllReport_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if (num==2) {
				String report_classify = null;
				Map map = new HashMap();
				index = index == null ? 1 : index;
				Page page = new Page(index, 10);
				map.put("index", (index - 1) * 10);
				map.put("size", 10);
				if(report_create_name!=null)
					map.put("report_create_name", report_create_name);
				switch (classify) {
				case 0:
					report_classify="年度";
					map.put("report_classify", "年度");
					break;
				case 1:
					report_classify="季度";
					map.put("report_classify", "季度");
					break;
				case 2:
					report_classify="月度";
					map.put("report_classify", "月度");
					break;
				case 3:
					report_classify="周";
					map.put("report_classify", "周");
					break;
				case 4:
					report_classify="项目";
					map.put("report_classify", "项目");
					break;
				case 5:
					report_classify="其他";
					map.put("report_classify", "其他");
					break;
				}
				// 根据报告分类查询
				List<Report> list = reportBiz.findReportClassify(map);
				page.setCount(reportBiz.findAllReport_count(map));
				model.put("page", page);
				model.put("list", list);
			}
			if(report_create_name!=null)
				return "goal/wdgzbg";
			return "goal/qbgzbg";
		}
		/**
		 * 展示报告
		 * @param model
		 * @param report_id
		 * @return
		 */
		@RequestMapping(params = "action=bgzs")
		public String zsAssignment(ModelMap model, Integer report_id) {
			report_id = report_id == null ? 0 : report_id;
			Report r = reportBiz.findReportById(report_id);
			model.put("r", r);
				return "goal/er/zsbg";
			
		}
		/**
		 *  根据 报告名称  创建人模糊查询
		 * @param model
		 * @param names
		 * @param count
		 * @return
		 */
			@RequestMapping(params = "action=cz")
			public String findAssignmentLike(ModelMap model,Integer num, String names, String count,String name) {
				
				Report r = new Report();
				List<Report> list = null;
				if(name==null){
					if (names.equals("report_create_name")) {
						r.setReport_create_name(count);
					} else if(names.equals("report_name")){
						r.setReport_name(count);
					}
				}else{
					r.setReport_create_name(count);
					r.setReport_name(count);
				}
				list=reportBiz.findReportBylike(r);
				model.put("list", list);
				if(name!=null){
					return "goal/er/czbggr";
				}
				return "goal/er/czbg";
			}

}
