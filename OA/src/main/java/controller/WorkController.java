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
		/**
		 * 显示 出差 外出  加班 请休假 调休的全部申请单
		 * @param model
		 * @param num
		 * @param index
		 * @return
		 */
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
		/**
		 * 出差 外出 加班 请休假 调休申请
		 * @return
		 */
		@RequestMapping(params="action=kqsq")
		
		
		public String sqWk(Integer emp_id,
				Integer depart_id,String tv_theme,
				String tv_shopdate,
				String tv_applydate,
				String tv_cdate,
				String tv_ddate,
				String tv_termini,
				String tv_reason,
				String tv_traffic,
				String tv_report,
				String tv_result,
				String oi_theme,
				String oi_shopdate,
				String oi_applydate,
				String oi_cdate,
				String oi_ddate,
				String oi_hour,
				String oi_day,
				String oi_reason,
				String fg_theme,
				String fg_shopdate,
				String fg_applydate,
				String fg_cdate,
				String fg_ddate,
				String fg_hour,
				String fg_day,
				String fg_type,
				String fg_reason,String of_theme,
				String of_shopdate,
				String of_applydate,
				String of_cdate,
				String of_ddate,
				String of_hour,
				String of_day,
				String of_reason,
				String of_agent,String eg_theme,
				String eg_shopdate,
				String eg_applydate,
				String eg_egress,
				String eg_return,
				String eg_hour,
				String eg_day,
				String eg_site,
				String eg_reason,
				String eg_send,
				String eg_advance,Integer sq,Integer eaa_state,String eaa_conclusion,String eaa_date){
			sq=sq==null?0:sq;
			if(sq==0){
				Travel t=new Travel(null,tv_theme,tv_shopdate==""?null:tv_shopdate,tv_applydate==""?null:tv_applydate,tv_cdate==""?null:tv_cdate,tv_ddate==""?null:tv_ddate,tv_termini,tv_reason,tv_traffic,tv_report,tv_result,depart_id,null, null, emp_id,0,"提交主管审批",eaa_date);
				tlBiz.addTravel(t);
				return "redirect:work.do?action=Wklist&num=0";
			}else if(sq==1){
				Egress e=new Egress(null, eg_theme,eg_shopdate==""?null:eg_shopdate,eg_applydate==""?null:eg_applydate,eg_egress==""?null:eg_egress,eg_return==""?null:eg_return,eg_hour,eg_day,eg_site,eg_reason,eg_send,eg_advance,emp_id,null, null, depart_id,0,"提交主管审批",eaa_date);
				esBiz.addEgress(e);
				return "redirect:work.do?action=Wklist&num=1";
			}else if(sq==2){
				Overtime ot=new Overtime(null, oi_theme,oi_shopdate==""?null:oi_shopdate,oi_applydate==""?null:oi_applydate,oi_cdate==""?null:oi_cdate,oi_ddate==""?null:oi_ddate,oi_hour,oi_day,oi_reason,emp_id,null, null, depart_id,0,"提交主管审批",eaa_date);
				oeBiz.addOvertime(ot);
				return "redirect:work.do?action=Wklist&num=2";
			}else if(sq==3){
				Furlough f=new Furlough(null, fg_theme,fg_shopdate==""?null:fg_shopdate,fg_applydate==""?null:fg_applydate,fg_cdate==""?null:fg_cdate,fg_ddate==""?null:fg_ddate,fg_hour,fg_day,fg_type,fg_reason,emp_id,null, null, depart_id,0,"提交主管审批",eaa_date);
				fhBiz.addFurlough(f);
				return "redirect:work.do?action=Wklist&num=3";
			}else{
				Off of=new Off(null, of_theme,of_shopdate==""?null:of_shopdate,of_applydate==""?null:of_applydate,of_cdate==""?null:of_cdate,of_ddate==""?null:of_ddate,of_hour,of_day,of_reason,of_agent,emp_id,null, null, depart_id,0,"提交主管审批",eaa_date);
				ofBiz.addOff(of);
				return "redirect:work.do?action=Wklist&num=4";
			}
		}
		/**
		 * 展示出差 外出 加班 请休假  调休 的详细申请单
		 */
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
				Overtime ot=oeBiz.findOvertimeById(oi_id);
				model.put("ot", ot);
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
		/**
		 * 根据提供的条件进行查询
		 * @param op
		 * @param names
		 * @param count
		 * @param model
		 * @param index
		 * @return
		 */
		@RequestMapping(params="action=kqcz")
		public String czWk(String op,String names,String count,ModelMap model,Integer index){
			index=index==null?1:index;
			Map map=new HashMap();
			Page page=new Page(index,10);
			map.put("index", (index-1)*10);
			map.put("size", 10);
			if(op.equals("cc")){
				List<Travel> list = null;
				if(count.equals("")){
					page.setCount(0);
				}else{
					if (names.equals("tv_theme")) {
						map.put("tv_theme", count);
						page.setCount(tlBiz.findTravelBylike_count(map));
					} else if (names.equals("tv_termini")) {
						map.put("tv_termini", count);
						page.setCount(tlBiz.findTravelBylike_count(map));
					}
					list = tlBiz.findTravelBylike(map);
				}
				model.put("page", page);
				model.put("names", names);
				model.put("count", count);
				model.put("list", list);
				return "hr/info/cccx";
			}else if(op.equals("wc")){
				List<Egress> list=null;
				if(count.equals("")){
					page.setCount(0);
				}else{
					if(names.equals("eg_theme")){
						map.put("eg_theme", count);
						Integer tgressBylike_count = esBiz.findEgressBylike_count(map);
						page.setCount(tgressBylike_count);
					}else if(names.equals("eg_site")){
						map.put("eg_site", count);
						Integer tgressBylike_count = esBiz.findEgressBylike_count(map);
						page.setCount(tgressBylike_count);
					}
					list=esBiz.findEgressBylike(map);
				}
				model.put("list", list);
				model.put("names", names);
				model.put("count", count);
				model.put("page", page);
				return "hr/info/wccz";
			}else if(op.equals("jb")){
				List<Overtime> list=null;
				if(count.equals("")){
					page.setCount(0);
				}else{
					if(names.equals("oi_theme")){
						map.put("oi_theme", count);
						Integer overtimeBylike_count = oeBiz.findOvertimeBylike_count(map);
						page.setCount(overtimeBylike_count);
					}else if(names.equals("oi_cdate")){
						map.put("oi_cdate", count);
						Integer overtimeBylike_count = oeBiz.findOvertimeBylike_count(map);
						page.setCount(overtimeBylike_count);
					}
					list=oeBiz.findOvertimeBylike(map);
				}
				model.put("list", list);
				model.put("names", names);
				model.put("count", count);
				model.put("page", page);
				return "hr/info/jbcz";
			}else if(op.equals("qxj")){
				List<Furlough> list=null;
				if(count.equals("")){
					page.setCount(0);
				}else{
					if(names.equals("fg_type")){
						map.put("fg_type", count);
						Integer furloughBylike_count = fhBiz.findFurloughBylike_count(map);
						page.setCount(furloughBylike_count);
					}
					list=fhBiz.findFurloughBylike(map);
				}
				model.put("list", list);
				model.put("names", names);
				model.put("count", count);
				model.put("page", page);
				return "hr/info/qxjcz";
			}else{
				List<Off> list=null;
				if(count.equals("")){
					page.setCount(0);
				}else{
					if(names.equals("of_theme")){
						map.put("of_theme", count);
						Integer offBylike_count = ofBiz.findOffBylike_count(map);
						page.setCount(offBylike_count);
					}else if(names.equals("of_cdate")){
						map.put("of_cdate", count);
						Integer offBylike_count = ofBiz.findOffBylike_count(map);
						page.setCount(offBylike_count);
					}
					list=ofBiz.findOffBylike(map);
				}
				model.put("list", list);
				model.put("names", names);
				model.put("count", count);
				model.put("page", page);
				return "hr/info/txcz";
			}
		}
		/**
		 * 审批
		 * @param t
		 * @param e
		 * @param ot
		 * @param f
		 * @param of
		 * @param sp
		 * @return
		 */
		@RequestMapping(params="action=kqsp")
		public String spRe(Travel t,Egress e,Overtime ot,Furlough f,Off of,Integer sp){
			sp=sp==null?0:sp;
			if(sp==0){
				tlBiz.updateTravel(t);
				return "redirect:work.do?action=Wklist&num=0";
			}else if(sp==1){
				esBiz.updateEgress(e);
				return "redirect:work.do?action=Wklist&num=1";
			}else if(sp==2){
				oeBiz.updateOvertime(ot);
				return "redirect:work.do?action=Wklist&num=2";
			}else if(sp==3){
				fhBiz.updateFurlough(f);
				return "redirect:work.do?action=Wklist&num=3";
			}else{
				ofBiz.updateOff(of);
				return "redirect:work.do?action=Wklist&num=4";
			}
		}
}
