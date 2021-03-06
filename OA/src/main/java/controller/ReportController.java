package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ReportBiz;
import model.Page;
import model.Report;

/**
 * 工作报告Controller控制器
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
		 * 撰写工作报告（新增）
		 * private String repo_state;//工作报告状态
	private String report_name;//报告名称
	private String report_classify;//工作报告分类
	private Integer report_content_id;//报告内容id
	private String report_content;//报告内容
	private String report_create_name ;//报告创建人
	private String report_partake;//参与人
	private Integer depart_id; //外键 所属部门  （从属于）
	private String report_review_name ;//评审人
	private String report_create_time;//创建时间
		 */
		@RequestMapping(params ="action=addrep")
		public String addReport(String repo_state, String report_name, String report_classify,
				Integer report_content_id, String report_content,
				String report_create_name,
				String report_partake, Integer depart_id, String report_review_name,
				String report_create_time ) {
			Report r = new Report(null, repo_state, report_name, report_classify, report_content_id, 
					report_content,  report_create_name,
					report_partake, depart_id,report_review_name, report_create_time);
			reportBiz.addReport(r);
			
			return "redirect:repo.do?action=Reportlist&num=0";
		}
		
		
		/**
		 *  根据 报告名称 模糊查询
		 * @param model
		 * @param names
		 * @param count
		 * @return
		 */
			@RequestMapping(params = "action=cz")
			public String findAssignmentLike(ModelMap model,Integer num, String names, String count,String name) {
				
				Report r = new Report();
				List<Report> list = null;
				if(name!=null){
					r.setReport_name(count);
					r.setReport_create_name(name);
				}else{
					if(names.equals("report_create_name"))
						r.setReport_create_name(count);
					else
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
