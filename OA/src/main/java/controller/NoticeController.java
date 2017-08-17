package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.EgressBiz;
import biz.EmployeeBiz;
import biz.EmployeeRoleBiz;
import biz.NoticeBillBiz;
import biz.NoticeBiz;
import biz.ProspectusBiz;
import biz.ReportBiz;
import dao.RoleDao;
import model.Egress;
import model.Employee;
import model.Notice;
import model.Page;
import model.Prospectus;
import model.Report;

@Controller
@RequestMapping("Notice.do")
public class NoticeController {
	/**
	 * 公告
	 */
	@Autowired
	private NoticeBiz nb;
	/**
	 * 工作流
	 */
	@Autowired
	private NoticeBillBiz noticeBillBiz;
	
	@Autowired
	private EgressBiz esBiz;
	
	/**
	 * 全部工作计划业务接口对象
	 */
	@Autowired
	private ProspectusBiz prospectusBiz;
	
	@Autowired
	private ReportBiz reportBiz;
	
	/**
	 * 查询公告的待处理事务
	 * @param model
	 * @param index
	 * @return
	 */
	@RequestMapping(params = "action=ShowSH")
	public String findByNoticeShowSH(ModelMap model,Integer index,Integer noticeClassify){
		noticeClassify=noticeClassify==null?0:noticeClassify;
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		map.put("noticeState", "审核中");//查找状态审核中的数据
		map.put("pros_state", "评审中");
		map.put("repo_state", "评审中");
		if(noticeClassify==0){
			List<Notice> noticeShow = nb.NoticeShow(map);
			int ncount = nb.NoticeShowCount(map);
			int ecount = esBiz.findAllEgress_count(map);
			int gcount = prospectusBiz.findAllprospectus_count(map);
			int rcount=reportBiz.findAllReport_count(map);
			page.setCount(ncount);
			model.put("page", page);
			model.put("nlist", noticeShow);	//查询出的显示信息
			model.put("noticeClassify", "0");
			model.put("ncount",ncount);
			model.put("ecount",ecount);
			model.put("gcount",gcount);
			model.put("rcount",rcount);
		}else if(noticeClassify==1){
			List<Egress> list=esBiz.findAllEgress(map);
			int ncount=nb.NoticeShowCount(map);
			int gcount = prospectusBiz.findAllprospectus_count(map);
			int rcount=reportBiz.findAllReport_count(map);
			page.setCount(esBiz.findAllEgress_count(map));
			model.put("page", page);
			model.put("nlist", list);
			model.put("noticeClassify", "1");
			model.put("ecount", page.getCount());
			model.put("ncount", ncount);
			model.put("gcount",gcount);
			model.put("rcount",rcount);
		}else if(noticeClassify==2){
			List<Prospectus> list = prospectusBiz.findProspectusState(map);
			page.setCount(prospectusBiz.findAllprospectus_count(map));
			int ncount=nb.NoticeShowCount(map);
			int ecount = esBiz.findAllEgress_count(map);
			int rcount=reportBiz.findAllReport_count(map);
			model.put("page", page);
			model.put("nlist", list);
			model.put("noticeClassify", "2");
			model.put("ecount", ecount);
			model.put("ncount", ncount);
			model.put("gcount",prospectusBiz.findAllprospectus_count(map));
			model.put("rcount",rcount);
		}else if(noticeClassify==3){
			List<Report> list = reportBiz.findReportState(map);
			page.setCount(reportBiz.findAllReport_count(map));
			int ncount=nb.NoticeShowCount(map);
			int ecount = esBiz.findAllEgress_count(map);
			int gcount = prospectusBiz.findAllprospectus_count(map);
			model.put("page", page);
			model.put("nlist", list);
			model.put("noticeClassify", "3");
			model.put("ecount", ecount);
			model.put("ncount", ncount);
			model.put("gcount",gcount);
			model.put("rcount",reportBiz.findAllReport_count(map));
		}
		
		return "work/dclsw";
	}
	
	/**
	 * 查询公告的待处理事务的详细信息
	 * @param model
	 * @param index
	 * @return
	 */
	@RequestMapping(params="action=sh")
	public String findByNoticeSH(HttpSession session,ModelMap model,Integer id,Integer index){
		id=id==null?0:id;
		Notice notice = nb.Noticeid(id);
		List<HistoricTaskInstance> billList = noticeBillBiz.findCommentByLeaveBillId(notice);
		model.put("n", notice);	
		model.put("billList", billList);
		return "work/work/dclsw_fbgg";
	}
	
	/**
	 * 公告管理的信息
	 * @param session
	 * @param model
	 * @param index
	 * @param id
	 * @param noticeClassify
	 * @param type
	 * @return
	 */
	@RequestMapping(params = "action=ss")
	public String findByNoticeShow(HttpSession session,ModelMap model,Integer index,Integer id,Integer noticeClassify,String type){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		index=index==null?1:index;
		id=id==null?0:id;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		map.put("noticeClassify", noticeClassify);
		map.put("noticePartake", e.getEmp_code());//用户编号
		//查询出的集合
		List<Notice> noticeShow = nb.NoticeShow(map);
		Integer count = nb.NoticeShowCount(map);
		page.setCount(count);
		model.put("s_emp", e);
		model.put("page", page);
		model.put("nlist", noticeShow);	//查询出的显示信息
		model.put("noticeClassify", noticeClassify);//类别（0空白，1新闻资讯，2通知公告 3规章制度，4行业动态
	
		if(id!=0){
			Notice notice = nb.Noticeid(id);
			//查询历史任务操作
			List<HistoricTaskInstance> billList = noticeBillBiz.findCommentByLeaveBillId(notice);
			model.put("n", notice);	
			model.put("billList", billList);
			if("xg".equals(type)){
				return "info/info/gggl_fbgg";
			}else{
				return "info/info/gggl_zsxx";
			}
		}else{//带参（类别）转入 信息公告首页
			return "info/gggl";
		}
	}
	
	/**
	 * 发送公告
	 * @param session
	 * @param noticeState
	 * @param noticeType
	 * @param noticeClassify
	 * @param noticeKeyword
	 * @param noticeTitle
	 * @param noticeContent
	 * @return
	 */
	@RequestMapping(params = "action=add")
	public String findByNoticeAdd(HttpSession session,String noticeState,String noticeType,Integer noticeClassify,String noticeKeyword,String noticeTitle,String noticeContent){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		String noticePerson=e.getEmp_name();
		String noticePartake=e.getEmp_code();
		Notice n=new Notice(noticeState, noticePerson, noticePartake, noticeType, noticeClassify, noticeKeyword, noticeTitle, noticeContent, null);
		nb.NoticeAdd(n);
		//部署流程定义
		noticeBillBiz.start();
		//*更新公告状态，启动流程实例，让启动的流程实例关联业务
		noticeBillBiz.saveStartProcess(n,e.getEmp_code(),e.getEmp_name());
		return "redirect:Notice.do?action=ss";
	}
	
	/**
	 * 审核公告
	 * @param session
	 * @param noticeId
	 * @param noticeState
	 * @param noticeType
	 * @param noticeClassify
	 * @param noticeKeyword
	 * @param noticeTitle
	 * @param noticeContent
	 * @return
	 */
	@RequestMapping(params = "action=update")
	public String findByNoticeUpdate(HttpSession session,Integer noticeId,String noticeState,String noticeType,Integer noticeClassify,String noticeKeyword,String noticeTitle,String noticeContent){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		String noticePerson=e.getEmp_name();
		String noticePartake=e.getEmp_code();
		Notice n=new Notice();
		n.setNoticeId(noticeId);
		n.setNoticeState(noticeState);
		n.setNoticeKeyword(noticeKeyword);
		n.setNoticeTitle(noticeTitle);
		n.setNoticeContent(noticeContent);
		nb.NoticeUpdate(n);
		//部署流程定义
		noticeBillBiz.testCreateTable();
		//更新公告状态,审核成功还是撤除
		noticeBillBiz.findOutComeListByUpdateTaskId(n,e.getEmp_code(),e.getEmp_name(),noticeState);
		return "redirect:Notice.do?action=ShowSH";
	}
	
	/**
	 * 修改公告再次提交审核
	 * @param session
	 * @param noticeId
	 * @param noticeState
	 * @param noticeType
	 * @param noticeClassify
	 * @param noticeKeyword
	 * @param noticeTitle
	 * @param noticeContent
	 * @return
	 */
	@RequestMapping(params = "action=updates")
	public String finByNoticeUpdateIn(HttpSession session,Integer noticeId,String noticeState,String noticeType,Integer noticeClassify,String noticeKeyword,String noticeTitle,String noticeContent){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		String noticePerson=e.getEmp_name();
		String noticePartake=e.getEmp_code();
		Notice n=new Notice(noticeId,noticeState, noticePerson, noticePartake, noticeType, noticeClassify, noticeKeyword, noticeTitle, noticeContent, null);
		nb.NoticeUpdate(n);
		noticeBillBiz.testCreateTable();
		//更新公告状态,再次提交
		noticeBillBiz.findOutComeListByUpdate(n,noticePartake , noticePerson, noticeState);
		return "redirect:Notice.do?action=ss";
	}
	
	/**
	 * 模糊查询（根据不同条件查询）
	 * @param model
	 * @param names
	 * @param count
	 * @param index
	 * @return
	 */
	@RequestMapping(params ="action=cx")
	public String findByNoticeCX(ModelMap model,String names,String count,Integer index,Integer noticeState){
		index=index==null?1:index;
		noticeState=noticeState==null?0:noticeState;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		if(noticeState==1){
			map.put("noticeState", "审核中");
		}
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
				Integer NoticDateCount = nb.NoticDateCount(map);
				page.setCount(NoticDateCount);
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
		if(noticeState==1){
			return "work/work/dclsw_ggcx";
		}else{
			return "info/info/gggl_cx";
		}
	}
	
	/**
	 * 删除公告
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(params ="action=del")
	public String findByNoticeDel(ModelMap model,Integer id){
		nb.NoticeDel(id);
		return "redirect:Notice.do?action=ss";
	}
}
