package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	/**
	 * 显示全部招聘，入职，转正，离职申请单
	 * @param model
	 * @param num
	 * @param index
	 * @return
	 */
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
	/**
	 * 展示招聘，入职，转正，离职的详细申请单
	 * @param model
	 * @param zs
	 * @param re_id
	 * @param et_id
	 * @param b_id
	 * @param q_id
	 * @return
	 */
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
	/**
	 * 招聘，入职，转正，离职申请
	 * @param re_theme
	 * @param re_priority
	 * @param re_shopdate
	 * @param re_name
	 * @param re_post
	 * @param re_applydate
	 * @param re_number
	 * @param re_positiondate
	 * @param re_reason
	 * @param re_duty
	 * @param re_age
	 * @param re_sex
	 * @param re_experience
	 * @param re_lb
	 * @param re_req
	 * @param depart_id
	 * @param et_theme
	 * @param et_priority
	 * @param et_shopdate
	 * @param et_name
	 * @param et_joindate
	 * @param et_post
	 * @param et_birth
	 * @param et_sex
	 * @param et_life
	 * @param et_remarks
	 * @param b_theme
	 * @param b_priority
	 * @param b_shopdate
	 * @param b_applydate
	 * @param b_post
	 * @param b_joindate
	 * @param b_become
	 * @param b_content
	 * @param b_achievement
	 * @param b_problem
	 * @param b_imagine
	 * @param b_comment
	 * @param emp_id
	 * @param q_theme
	 * @param q_priority
	 * @param q_shopdate
	 * @param q_applydate
	 * @param q_post
	 * @param q_joindate
	 * @param q_quit
	 * @param q_type
	 * @param q_reason
	 * @param q_transfer
	 * @param q_opinion
	 * @param sq
	 * @return
	 */
	@RequestMapping(params="action=zp")
	public String sqRe(String re_theme,
			String re_shopdate,
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
			String et_name,
			String et_shopdate,
			String et_joindate,
			String et_post,
			String et_birth,
			String et_sex,
			String et_life,
			String et_remarks,
			String b_theme,
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
			String q_shopdate,
			String q_applydate,
			String q_post,
			String q_joindate,
			String q_quit,
			String q_type,
			String q_reason,
			String q_transfer,
			String q_opinion,Integer sq,Integer eaa_state,String eaa_conclusion,String eaa_date){
		sq=sq==null?0:sq;
		if(sq==0){
			Recruit r=new Recruit(re_number,re_theme,re_shopdate==""?null:re_shopdate,emp_id,re_post,re_applydate==""?null:re_applydate,
					re_number,re_positiondate==""?null:re_positiondate,re_reason,
					re_duty,re_age,re_sex,re_experience,re_lb, re_req,depart_id, null,0,"提交主管审批",eaa_date,null);
			ruBiz.addRecruit(r);
			return "redirect:recruit.do?action=Relist&num=0";
		}else if(sq==1){
			Entry e=new Entry(null, et_theme,et_shopdate==""?null:et_shopdate,emp_id,et_name,et_joindate==""?null:et_joindate,
					et_post,et_birth==""?null:et_birth,et_sex,et_life,et_remarks,null, depart_id,0,"提交主管审批",eaa_date,null);
			eyBiz.addEntry(e);
			return "redirect:recruit.do?action=Relist&num=1";
		}else if(sq==2){
			Become b=new Become(null, b_theme,b_shopdate==""?null:b_shopdate,b_applydate==""?null:b_applydate,
					b_post,b_joindate==""?null:b_joindate,b_become==""?null:b_become,
					b_content,b_achievement,b_problem,b_imagine,b_comment,null, depart_id,emp_id,null,0,eaa_date,"提交主管审批");
			beBiz.addBecome(b);
			return "redirect:recruit.do?action=Relist&num=2";
		}else{
			Quit q=new Quit(null, q_theme,q_shopdate==""?null:q_shopdate,
					q_applydate==""?null:q_applydate,q_post,q_joindate==""?null:q_joindate,q_quit==""?null:q_quit,
					q_type,q_reason,q_transfer,q_opinion, null, null, depart_id,emp_id,0,"提交主管审批",eaa_date);
			qtBiz.addQuit(q);
			return "redirect:recruit.do?action=Relist&num=3";
		}
	}
	@RequestMapping(params="action=zppzsp")
	public String spRe(Recruit r,Entry e,Become b,Quit q,Integer sp){
		sp=sp==null?0:sp;
		if(sp==0){
			ruBiz.updateRecruit(r);
			return "redirect:recruit.do?action=Relist&num=0";
		}else if(sp==1){
			eyBiz.updateEntry(e);
			return "redirect:recruit.do?action=Relist&num=1";
		}else if(sp==2){
			beBiz.updateBecome(b);
			return "redirect:recruit.do?action=Relist&num=2";
		}else{
			qtBiz.updateQuit(q);
			return "redirect:recruit.do?action=Relist&num=3";
		}
	}
}
