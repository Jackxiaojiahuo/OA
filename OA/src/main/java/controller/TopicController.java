package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import biz.EmployeeBiz;
import biz.TopicBiz;
import model.Employee;
import model.Page;
import model.Reply;
import model.Topic;

@Controller
@RequestMapping("Topic.do")
public class TopicController {
	/**用户*/
	@Autowired
	private EmployeeBiz bb;
	/**知识社区*/
	@Autowired
	private TopicBiz tb;
	/**
	 * 知识社区全部查询
	 * @param session
	 * @param model
	 * @param index
	 * @param tSId
	 * @param tType
	 * @param type
	 * @return
	 */
	@RequestMapping(params = "action=ss")
	public String findByTopicShow(HttpSession session,ModelMap model,Integer index,Integer tSId,Integer tType,Integer type){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		Map map1=new HashMap();
		map1.put("index", 0);
		map1.put("size", 1000);
		List<Employee> emp=bb.findAllEmployee(map1);//获取全部用户信息
		tSId=tSId==null?0:tSId;
		tType=tType==null?0:tType;
		type=type==null?0:type;
		index=index==null?1:index;
		Map map2=new HashMap();
		Page page=new Page(index,10);
		map2.put("index", (index-1)*10);
		map2.put("size", 10);
		//获得版块编号
		map2.put("tSId", tSId);
		//判断帖子状态（精华，置顶）
		map2.put("tType", tType);
		//判断帖子状态的样式
		if(type==5){				
			map2.put("tUId", e.getEmp_code());
		}
		Integer count = tb.TopicShowCount(map2);
		page.setCount(count);
		List<Topic> tList = tb.TopicShow(map2);
		model.put("page", page);
		model.put("type", type);
		model.put("list", tList);
		model.put("emp", emp);
		return "info/zssq";
	}
	/**获取帖子信息*/
	@RequestMapping(params ="action=ssid")
	public String findByTopicId(HttpSession session,ModelMap model,Integer id,Integer index,Integer num){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		map.put("id",id);
		//获取帖子信息
		Topic topics = tb.TopicShowId(map,e.getEmp_code());
		//获取跟帖信息
		List<Reply> rList = topics.getR();
		page.setCount(topics.gettReplyCount());
		Map map1=new HashMap();
		map1.put("index", 0);
		map1.put("size", 10000);
		//获取用户名
		List<Employee> emp = bb.findAllEmployeeRight(map1);
		model.put("num", num);
		model.put("page", page);
		model.put("topics", topics);
		model.put("uid", e.getEmp_code());
		model.put("rList", rList);
		model.put("emp", emp);
		return "info/info/zssq_wdtz";
	}
	@RequestMapping(params ="action=add1")//添加主贴
	public String fingByTopicAdd1(HttpSession session,Integer tSId,String tLabel,String tTitle,String tContent){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		Topic t=new Topic();
		t.settUId(e.getEmp_code());
		t.settSId(tSId);
		t.settLabel(tLabel);
		t.settTitle(tTitle);
		t.settContent(tContent);
	    tb.TopicAdd(t);
		return "redirect:Topic.do?action=ss";
	}
	@RequestMapping(params ="action=add2")//添加跟帖（回复帖子）
	public String findByTopicAdd2(HttpSession session,Integer rTId,String rContent){
		Employee e = (Employee) session.getAttribute("s_emp");
		if(e==null) return null;
		Reply r=new Reply();
		r.setrUId(e.getEmp_code());
		r.setrTId(rTId);
		r.setrContent(rContent);
		tb.ReplyAdd(r);
		return "redirect:Topic.do?action=ssid&id="+r.getrTId();
	}
	@RequestMapping(params ="action=up")//（修改帖子状态）
	public String findByTopicUpdate(Integer tId,Integer tSId,Integer tType){
		Topic t=new Topic();
		t.settId(tId);
		t.settSId(tSId);
		t.settType(tType);
		tb.TopicUp(t);
		return "redirect:Topic.do?action=ss";
	}
	@RequestMapping(params ="action=del")//删除帖子
	public String findByTopicDel(Integer id){
		tb.TopicDel(id);
		return "redirect:Topic.do?action=ss";
	}
	@RequestMapping(params ="action=cx")//根据条件查询帖子
	public String findByTopicCX(ModelMap model,String names,String count,Integer index){
		index=index==null?1:index;
		Map map=new HashMap();
		Page page=new Page(index,10);
		map.put("index", (index-1)*10);
		map.put("size", 10);
		List<Topic> tlist=null;
		if(count.equals("")){
			page.setCount(0);
		}else{//输入信息是否为空
			if("tTitle".equals(names)){
				map.put("tTitle", count);
				tlist=tb.TopicTitle(map);
				Integer topicTitleCount = tb.TopicTitleCount(map);
				page.setCount(topicTitleCount);
			}else if("tUId".equals(names)){
				map.put("tUId", count);
				tlist=tb.TopicUId(map);
				Integer topicUIdCount = tb.TopicUIdCount(map);
				page.setCount(topicUIdCount);
			}else if("tLabel".equals(names)){
				map.put("tLabel", count);
				tlist=tb.TopicLabel(map);
				Integer topicLabelCount = tb.TopicLabelCount(map);
				page.setCount(topicLabelCount);
			}
		}
		if(page.getIndex()==0)page.setIndex(1);
		model.put("page", page);
		model.put("count", count);//记录输入的信息
		model.put("tlist", tlist);
		model.put("names", names);//是单选按钮
		return "info/info/zssq_cx";
	}
}
