package controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.ProspectusBiz;
import model.Employee;
import model.Page;
import model.Prospectus;

@Controller
@RequestMapping("pros.do")
public class ProspectusController {
	/**
	 * 全部工作计划业务接口对象
	 */
	@Autowired
	private ProspectusBiz prospectusBiz;
	//全部查询全部工作计划
	@RequestMapping(params = "action=Prospectuslist")
	public String findAllProspectus(ModelMap model, Integer num, Integer index, Integer state,Integer classify,String prospectus_create_name) {
		
//		int pszstate = prospectusBiz.pszstate("评审中");
//		model.put("pszstate", pszstate);
//		int fbzxstate = prospectusBiz.fbzxstate("发布执行");
//		model.put("fbzxstate", fbzxstate);
//		int ygbstate = prospectusBiz.ygbstate("已关闭");
//		model.put("ygbstate", ygbstate);
		num=num==null ? 0: num;
		model.put("num", num);
		if (num==0) {
			index = index == null ? 1 : index;
			Map map = new HashMap();
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(prospectus_create_name!=null)
				map.put("prospectus_create_name", prospectus_create_name);
			//显示所有
			List<Prospectus> list =prospectusBiz.findAllprospectus(map);
			//查询数据总数
			page.setCount(prospectusBiz.findAllprospectus_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==1){
			String pros_state = null;
			Map map = new HashMap();
			index = index == null ? 1 : index;
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(prospectus_create_name!=null)
				map.put("prospectus_create_name", prospectus_create_name);
			switch (state) {
			case 0:
				pros_state="评审中";
				map.put("pros_state", "评审中");
				break;
			case 1:
				pros_state="发布执行";
				map.put("pros_state", "发布执行");
				break;
			case 2:
				pros_state="已关闭";
				map.put("pros_state", "已关闭");
				break;
			}
			
			//根据计划状态查询
			List<Prospectus> list = prospectusBiz.findProspectusState(map);
			page.setCount(prospectusBiz.findAllprospectus_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if (num==2) {
			String prospectus_classify = null;
			Map map = new HashMap();
			index = index == null ? 1 : index;
			Page page = new Page(index, 10);
			map.put("index", (index - 1) * 10);
			map.put("size", 10);
			if(prospectus_create_name!=null)
				map.put("prospectus_create_name", prospectus_create_name);
			switch (classify) {
			case 0:
				prospectus_classify="年度";
				map.put("prospectus_classify", "年度");
				break;
			case 1:
				prospectus_classify="季度";
				map.put("prospectus_classify", "季度");
				break;
			case 2:
				prospectus_classify="月度";
				map.put("prospectus_classify", "月度");
				break;
			case 3:
				prospectus_classify="周";
				map.put("prospectus_classify", "周");
				break;
			case 4:
				prospectus_classify="项目";
				map.put("prospectus_classify", "项目");
				break;
			case 5:
				prospectus_classify="其他";
				map.put("prospectus_classify", "其他");
				break;
			}
			page.setCount(prospectusBiz.findAllprospectus_count(map));
			model.put("page", page);
			// 根据计划分类查询
			List<Prospectus> list = prospectusBiz.findProspectusClassify(map);
			page.setCount(prospectusBiz.findAllprospectus_count(map));
			model.put("page", page);
			model.put("list", list);
		}
		if(prospectus_create_name!=null){
			return "goal/wdgzjh";
		}
		
		return "goal/qbgzjh";
	}
	
	/**
	 * 展示计划
	 * @param model
	 * @param prospectus_id
	 * @return
	 */
	@RequestMapping(params = "action=jhzs")
	public String zsProspectus(ModelMap model, Integer prospectus_id) {
		prospectus_id = prospectus_id == null ? 0 : prospectus_id;
		Prospectus p = prospectusBiz.findprospectusById(prospectus_id);
		model.put("p", p);
			return "goal/er/zsjh";
		
	}
	/**
	 * 制定工作计划（新增）
	 * 
	 * private Integer prospectus_id; //计划id
	private String pros_state; // 工作计划状态
	private String prospectus_name; //计划名称
	private String prospectus_create_name; //计划创建人
	private Integer depart_id; //外键 所属部门  （从属于）
	private String prospectus_create_time; //开始时间
	private String prospectus_terminal_time;//结束时间
	private String prospectus_review_name; //计划评审人
	private String prospectus_executor_name;//计划执行人
	private String prospectus_executor_time;//执行时间
	private String prospectus_classify;//工作计划分类（年度计划）
	private Integer prospectus_content_id; //计划内容id
	private String prospectus_content; //计划内容
	 */
	
	
	@RequestMapping(params ="action=add")
	public String addProspectus(String pros_state, String prospectus_name, String prospectus_create_name,
			Integer depart_id, String prospectus_create_time,
			String prospectus_terminal_time,
			String prospectus_review_name, String prospectus_executor_name, String prospectus_executor_time,
			String prospectus_classify, Integer prospectus_content_id, String prospectus_content) {
		Prospectus p = new Prospectus(null, pros_state, prospectus_name, prospectus_create_name, depart_id, 
				prospectus_create_time, prospectus_terminal_time, prospectus_review_name,
				prospectus_executor_name, prospectus_executor_time, prospectus_classify,
				prospectus_content_id, prospectus_content);
		prospectusBiz.addProspectus(p);
		return "redirect:pros.do?action=Prospectuslist&num=0";
	}
	
	
	/**
	 *  根据 计划名称  创建人模糊查询
	 * @param model
	 * @param names
	 * @param count
	 * @return
	 */
		@RequestMapping(params = "action=cz")
		public String findProspectusLike(ModelMap model,Integer num, String names, String count,String name) {
			
			Prospectus p = new Prospectus();
			List<Prospectus> list = null;
			if(name!=null){
				p.setProspectus_create_name(name);
				p.setProspectus_name(count);
			}else{
				if (names.equals("prospectus_create_name")) {
					p.setProspectus_create_name(count);
				} else if(names.equals("prospectus_name")){
					p.setProspectus_name(count);
				}
			}
			list=prospectusBiz.findprospectusBylike(p);
			model.put("list", list);
			if(name!=null){
				return "goal/er/czjhgr";
			}
			return "goal/er/czjh";
		}

}
