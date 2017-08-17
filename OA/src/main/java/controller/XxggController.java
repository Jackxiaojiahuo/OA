package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.history.HistoricTaskInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.NoticeBillBiz;
import biz.NoticeBiz;
import model.Notice;
import model.Page;

@Controller
@RequestMapping("xxgg.do")
public class XxggController {
	/**公告管理*/
	@Autowired
	private NoticeBiz nb;
	/**公告流程*/
	@Autowired
	private NoticeBillBiz noticeBillBiz;
	
	/**信息公告全部查询*/
	@RequestMapping(params = "action=ss")
	public String findByXxggShow(ModelMap model,Integer index,Integer id,Integer noticeClassify,String type){
		index=index==null?1:index;
		id=id==null?0:id;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		map.put("noticeState", "发布中");
		//信息公告   根据 类别查询页面所需要的类别参数（主页面显示）
		map.put("noticeClassify", noticeClassify);
			
		//查询出的集合
		List<Notice> noticeShow = nb.NoticeShow(map);
		Integer count = nb.NoticeShowCount(map);
		page.setCount(count);
		model.put("page", page);
		model.put("nlist", noticeShow);	//查询出的显示信息
		model.put("noticeClassify", noticeClassify);//类别（0空白，1新闻资讯，2通知公告 3规章制度，4行业动态
		
		//转入 信息公告首页显示每个类别的记录行数
		List noticeNum = nb.NoticeNum();
		model.put("num", noticeNum);
		/*信息公告的分类页面判断用的参数*/
		//根据Id查询详细
		if(id!=0){
			Notice notice = nb.Noticeid(id);
			List<HistoricTaskInstance> billList = noticeBillBiz.findCommentByLeaveBillId(notice);
			model.put("billList", billList);
			model.put("n", notice);			
			return "info/info/xxgg_zs";
		}else if("type".equals(type)){//转入 信息公告首页
			return "info/xxgg";
		}else{//带参（类别）转入 信息公告首页
			return "info/xxgg_ff";
		}
	} 
	
	/**
	 * 根据条件查询
	 * @param model
	 * @param names
	 * @param count
	 * @param index
	 * @return
	 */
	@RequestMapping(params = "action=cx")
	public String findByXxggXC(ModelMap model,String names,String count,Integer index){
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		map.put("noticeState", "发布中");
		List<Notice> list =null;
		if(count.equals("")){	
			page.setCount(0);
		}else{//输入信息是否为空
			if("noticeTitle".equals(names)){//标题
				map.put("noticeTitle", count);
				list= nb.NoticTitle(map);
				Integer noticTitleCount = nb.NoticTitleCount(map);
				page.setCount(noticTitleCount);
			}else if("noticDate".equals(names)){//创建时间
				map.put("noticDate", count);
				list=nb.NoticDate(map);
				Integer NoticDateCount = nb.NoticDateCount(map);
				page.setCount(NoticDateCount);
			}else if("noticDay".equals(names)){//更新时间
				map.put("noticDay", count);
				list= nb.NoticDay(map);
				Integer NoticDayCount = nb.NoticDayCount(map);
				page.setCount(NoticDayCount);
			}else if("noticeKeyword".equals(names)){//阅读人
				map.put("noticeKeyword", count);
				list= nb.NoticeKeyword(map);
				Integer NoticeKeywordCount = nb.NoticeKeywordCount(map);
				page.setCount(NoticeKeywordCount);
			}
		}
		if(page.getIndex()==0)page.setIndex(1);
		model.put("page", page);
		model.put("count", count);//记录输入的信息
		model.put("ncx", list);
		model.put("names", names);//是单选按钮
		return "info/info/xxgg_cx";
	}
}
