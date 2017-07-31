package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.BecomeBiz;
import biz.EntryBiz;
import biz.QuitBiz;
import biz.RecruitBiz;
import biz.impl.BecomeBizImpl;
import biz.impl.EntryBizImpl;
import biz.impl.QuitBizImpl;
import biz.impl.RecruitBizImpl;
import model.Become;
import model.Entry;
import model.Page;
import model.Quit;
import model.Recruit;

@Controller
@RequestMapping("recruit.do")
public class RecruitController {
/**
 * 招聘业务接口对象
 */
	@Autowired
	private RecruitBiz ruBiz;
	@Autowired
	private EntryBiz eyBiz;
	@Autowired
	private BecomeBiz beBiz;
	@Autowired
	private QuitBiz qtBiz;
	//全部查询
	@RequestMapping(params="action=Relist")
	public String findAllRt(ModelMap model,Integer num,Integer index){
		num=num==null?0:num;
		model.put("num",num);
		if(num==0){
			index=index==null?1:index;
			Map map=new HashMap();
			Page page=new Page(index,10);
			map.put("index", (index-1)*10);
			map.put("size", 10);
			List<Recruit> list=ruBiz.findAllRecruit(map);
			page.setCount(ruBiz.findAllRecruit_count(map));
			model.put("list", list);
			model.put("page", page);
		}else if(num==1){
			index=index==null?1:index;
			Map map=new HashMap();
			Page page=new Page(index,5);
			map.put("index", (index-1)*5);
			map.put("size", 5);
			List<Entry> list = eyBiz.findAllEntry(map);
			page.setCount(eyBiz.findAllEntry_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==2){
			index=index==null?1:index;
			Map map=new HashMap();
			Page page=new Page(index,10);
			map.put("index", (index-1)*10);
			map.put("size", 10);
			List<Become> list = beBiz.findAllBecome(map);
			page.setCount(beBiz.findAllBecome_count(map));
			model.put("page", page);
			model.put("list", list);
		}else if(num==3){
			index=index==null?1:index;
			Map map=new HashMap();
			Page page=new Page(index,10);
			map.put("index", (index-1)*10);
			map.put("size", 10);
			List<Quit> list = qtBiz.findAllQuit(map);
			page.setCount(qtBiz.findAllQuit_count(map));
			model.put("page", page);
			model.put("list", list);
		}
		return "hr/zpgl";
	}
	//展示详细信息
	@RequestMapping(params="action=zszp")
	public String zsRe(ModelMap model,Integer zs,Integer re_id,Integer et_id,Integer b_id,Integer q_id){
		zs=zs==null?0:zs;
		model.put("zs",zs);
		if(zs==0){
			re_id=re_id==null?0:re_id;
			Recruit r = ruBiz.findRecruiteById(re_id);
			model.put("r", r);
			return "hr/info/zszp";
		}else if(zs==1){
			et_id=et_id==null?0:et_id;
			Entry e = eyBiz.findEntryById(et_id);
			model.put("e", e);
			return "hr/info/zsrz";
		}else if(zs==2){
			b_id=b_id==null?0:b_id;
			Become b=beBiz.findBecomeById(b_id);
			model.put("b", b);
			return "hr/info/zszz";
		}else{
			q_id=q_id==null?0:q_id;
			Quit q=qtBiz.findQuitById(q_id);
			model.put("q", q);
			return "hr/info/zslz";
		}
	}
	//申请
	@RequestMapping(params="action=zp")
	public String sqRe(String re_theme,
			String re_priority,
			String re_shopdate,
			String re_name,
			String re_post,
			String re_applydate,
			Integer re_number,
			String re_positiondate,
			String re_reason,
			String re_duty,
			String re_age,
			String re_sex,
			String re_experience,
			String re_lb,
			String re_req,
			Integer depart_id,
			String et_theme,
			String et_priority,
			String et_shopdate,
			String et_name,
			String et_joindate,
			String et_post,
			String et_birth,
			String et_sex,
			String et_life,
			String et_remarks,
			String b_theme,
			String b_priority,
			String b_shopdate,  
			String b_applydate,   
			String b_post,
			String b_joindate, 
			String b_become,
			String b_content,
			String b_achievement,
			String b_problem,
			String b_imagine,
			String b_comment,
			Integer emp_id,
			String q_theme,
			String q_priority,
			String q_shopdate,
			String q_applydate,
			String q_post,
			String q_joindate,
			String q_quit,
			String q_type,
			String q_reason,
			String q_transfer,
			String q_opinion,Integer sq){
		sq=sq==null?0:sq;
		if(sq==0){
			Recruit r=new Recruit(re_number, re_theme,re_priority,re_shopdate,re_name,re_post,re_applydate,re_number,re_positiondate,re_reason,
					re_duty,re_age,re_sex,re_experience,re_lb, re_req,depart_id, null);
			ruBiz.addRecruit(r);
			return "redirect:recruit.do?action=Relist&num=0";
		}else if(sq==1){
			Entry e=new Entry(null, et_theme,et_priority,et_shopdate,et_name,et_joindate,et_post,et_birth,et_sex,et_life,et_remarks,null, depart_id);
			eyBiz.addEntry(e);
			return "redirect:recruit.do?action=Relist&num=1";
		}else if(sq==2){
			Become b=new Become(null, b_theme,b_priority,b_shopdate,b_applydate,b_post,b_joindate,b_become,b_content,b_achievement,b_problem,b_imagine,b_comment,null, depart_id,emp_id, null);
			beBiz.addBecome(b);
			return "redirect:recruit.do?action=Relist&num=2";
		}else{
			Quit q=new Quit(null, q_theme,q_priority,q_shopdate,
					q_applydate,q_post,q_joindate,q_quit,q_type,q_reason,q_transfer,q_opinion, null, null, depart_id,emp_id);
			qtBiz.addQuit(q);
			return "redirect:recruit.do?action=Relist&num=3";
		}
		
	}	
}
