package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.EgressBiz;
import biz.FurloughBiz;
import biz.OffBiz;
import biz.OvertimeBiz;
import biz.TravelBiz;
import model.Egress;
import model.Furlough;
import model.Off;
import model.Overtime;
import model.Page;
import model.Travel;

@Controller
@RequestMapping("work.do")
public class WorkController {
	/**
	 * 考勤业务接口对象
	 */
		@Autowired
		private TravelBiz tlBiz;
		@Autowired
		private EgressBiz esBiz;
		@Autowired
		private OvertimeBiz oeBiz;
		@Autowired
		private FurloughBiz fhBiz;
		@Autowired
		private OffBiz ofBiz;
		//全部查询
		@RequestMapping(params="action=Wklist")
		public String findAllWk(ModelMap model,Integer num,Integer index){
			num=num==null?0:num;
			model.put("num",num);
			if(num==0){
				index=index==null?1:index;
				Map map=new HashMap();
				Page page=new Page(index,10);
				map.put("index", (index-1)*10);
				map.put("size", 10);
				List<Travel> list = tlBiz.findAllTravel(map);
				page.setCount(tlBiz.findAllTravel_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if(num==1){
				index=index==null?1:index;
				Map map=new HashMap();
				Page page=new Page(index,10);
				map.put("index", (index-1)*10);
				map.put("size", 10);
				List<Egress> list=esBiz.findAllEgress(map);
				page.setCount(esBiz.findAllEgress_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if(num==2){
				index=index==null?1:index;
				Map map=new HashMap();
				Page page=new Page(index,10);
				map.put("index", (index-1)*10);
				map.put("size", 10);
				List<Overtime> list = oeBiz.findAllOvertime(map);
				page.setCount(oeBiz.findAllOvertime_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if(num==3){
				index=index==null?1:index;
				Map map=new HashMap();
				Page page=new Page(index,10);
				map.put("index", (index-1)*10);
				map.put("size", 10);
				List<Furlough> list = fhBiz.findAllFurlough(map);
				page.setCount(fhBiz.findAllFurlough_count(map));
				model.put("page", page);
				model.put("list", list);
			}else if(num==4){
				index=index==null?1:index;
				Map map=new HashMap();
				Page page=new Page(index,10);
				map.put("index", (index-1)*10);
				map.put("size", 10);
				List<Off> list = ofBiz.findAllOff(map);
				page.setCount(ofBiz.findAllOff_count(map));
				model.put("page", page);
				model.put("list", list);
			}
			return "hr/kqgl";
		}
		//申请
		@RequestMapping(params="action=kqsq")
		public String sqWk(String tv_theme,
				String tv_priority,
				Integer emp_id,
				String tv_applydate,
				Integer depart_id,
				String tv_cdate,
				String tv_ddate,
				String tv_termini,
				String tv_reason,
				String tv_traffic,
				String tv_report,
				String tv_result,
				String eg_theme,
				String eg_priority,
				String eg_shopdate,
				String eg_applydate,
				String eg_egress,
				String eg_return,
				String eg_hour,
				String eg_day,
				String eg_site,
				String eg_reason,
				String eg_send,
				String eg_advance,
				String oi_theme,
				String oi_priority,
				String oi_shopdate,
				String oi_applydate,
				String oi_cdate,
				String oi_ddate,
				String oi_hour,
				String oi_day,
				String oi_reason,
				String fg_theme,
				String fg_priority,
				String fg_shopdate,
				String fg_applydate,
				String fg_cdate,
				String fg_ddate,
				String fg_hour,
				String fg_day,
				String fg_type,
				String fg_reason,String of_theme,
				String of_priority,
				String of_shopdate,
				String of_applydate,
				String of_cdate,
				String of_ddate,
				String of_hour,
				String of_day,
				String of_reason,
				String of_agent,Integer sq){
			sq=sq==null?0:sq;
			if(sq==0){
				Travel t=new Travel(null,tv_theme,tv_priority,tv_applydate,tv_cdate,tv_ddate,tv_termini,tv_reason,tv_traffic,tv_report,tv_result,depart_id,null, null, emp_id);
				tlBiz.addTravel(t);
				return "redirect:work.do?action=Wklist&num=0";
			}else if(sq==1){
				Egress e=new Egress(null, eg_theme,eg_priority,eg_shopdate,eg_applydate,eg_egress,eg_return,eg_hour,eg_day,eg_site,eg_reason,eg_send,eg_advance,emp_id,null, null, depart_id);
				esBiz.addEgress(e);
				return "redirect:work.do?action=Wklist&num=1";
			}else if(sq==2){
				Overtime o=new Overtime(null, oi_theme,oi_priority,oi_shopdate,oi_applydate,oi_cdate,oi_ddate,oi_hour,oi_day,oi_reason,emp_id,null, null, depart_id);
				oeBiz.addOvertime(o);
				return "redirect:work.do?action=Wklist&num=2";
			}else if(sq==3){
				Furlough f=new Furlough(null, fg_theme,fg_priority,fg_shopdate,fg_applydate,fg_cdate,fg_ddate,fg_hour,fg_day,fg_type,fg_reason,emp_id,null, null, depart_id);
				fhBiz.addFurlough(f);
				return "redirect:work.do?action=Wklist&num=3";
			}else{
				Off of=new Off(null, of_theme,of_priority,of_shopdate,of_applydate,of_cdate,of_ddate,of_hour,of_day,of_reason,of_agent,emp_id,null, null, depart_id);
				ofBiz.addOff(of);
				return "redirect:work.do?action=Wklist&num=4";
			}
		}
		@RequestMapping(params="action=kqzs")
		public String zsWk(ModelMap model,Integer zs,Integer tv_id,Integer eg_id,Integer oi_id,Integer fg_id,Integer of_id){
			zs=zs==null?0:zs;
			model.put("zs",zs);
			if(zs==0){
				tv_id=tv_id==null?0:tv_id;
				Travel t=tlBiz.findTravelById(tv_id);
				model.put("t", t);
				return "hr/info/zscc";
			}else if(zs==1){
				eg_id=eg_id==null?0:eg_id;
				Egress e=esBiz.findEgressById(eg_id);
				model.put("e", e);
				return "hr/info/zswc";
			}else if(zs==2){
				oi_id=oi_id==null?0:oi_id;
				Overtime o=oeBiz.findOvertimeById(oi_id);
				model.put("o", o);
				return "hr/info/zsjb";
			}else if(zs==3){
				fg_id=fg_id==null?0:fg_id;
				Furlough f=fhBiz.findFurloughById(fg_id);
				model.put("f", f);
				return "hr/info/zsqxj";
			}else{
				of_id=of_id==null?0:of_id;
				Off of=ofBiz.findOffById(of_id);
				model.put("of", of);
				return "hr/info/zstx";
			}
		}
		@RequestMapping(params="action=kqcz")
		public String czWk(String op,String names,String count,ModelMap model){
			if(op.equals("cc")){
				Travel t = new Travel();
				List<Travel> list = null;
				if (count.equals("")) {
				} else {
					if (names.equals("tv_theme")) {
						t.setTv_theme(count);

					} else if (names.equals("tv_termini")) {
						t.setTv_termini(count);
					}
					list = tlBiz.findTravelBylike(t);
				}
				model.put("list", list);
				return "hr/info/cccx";
			}else if(op.equals("wc")){
				Egress e=new Egress();
				List<Egress> list=null;
				if(count.equals("")){
				}else{
					if(names.equals("eg_theme")){
						e.setEg_theme(count);
					}else if(names.equals("eg_site")){
						e.setEg_site(count);
					}
					list=esBiz.findEgressBylike(e);
				}
				model.put("list", list);
				return "hr/info/wccz";
			}else if(op.equals("jb")){
				Overtime o=new Overtime();
				List<Overtime> list=null;
				if(count.equals("")){
				}else{
					if(names.equals("oi_theme")){
						o.setOi_theme(count);
					}else if(names.equals("oi_cdate")){
						o.setOi_cdate(count);
					}
					list=oeBiz.findOvertimeBylike(o);
				}
				model.put("list", list);
				return "hr/info/jbcz";
			}else if(op.equals("qxj")){
				Furlough f=new Furlough();
				List<Furlough> list=null;
				if(count.equals("")){
				}else{
					if(names.equals("fg_type")){
						f.setFg_type(count);
					}
					list=fhBiz.findFurloughBylike(f);
				}
				model.put("list", list);
				return "hr/info/qxjcz";
			}else{
				Off o=new Off();
				List<Off> list=null;
				if(count.equals("")){
				}else{
					if(names.equals("of_theme")){
						o.setOf_theme(count);
					}else if(names.equals("of_cdate")){
						o.setOf_cdate(count);
					}
					list=ofBiz.findOffBylike(o);
				}
				model.put("list", list);
				return "hr/info/txcz";
			}
		}
}
