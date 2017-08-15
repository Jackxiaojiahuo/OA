<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<script src="js/bootstarp/jquery-3.1.0.js"></script>
<script src="js/left_nav.js"></script>
<script>
	function goLeft(index,ci,url){
		parent.left.changeLeft(index,ci);
		//alert(url);
		location=""+url+"";
	}
</script>
</head>
<c:if test="${gzjh eq null }">
	<script>
		location="desk.do?action=init&emp_id=${s_emp.emp_id }&emp_name=${s_emp.emp_name }";
	</script>
</c:if>
<c:if test="${gzjh ne null }">

<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr valign="top">
			<td id="colloaContent">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><h1>
									<img style="cursor: pointer;" src="css/menu.png"> 我的桌面
								</h1></td>
							<td align="right"><a class="button1 button1A"
								title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a></td>
							<td></td>
						</tr>
					</tbody>
				</table> <br>
				<table style="table-layout: fixed;" border="0" cellpadding="0"
					cellspacing="0">
					<colgroup>
						<col width="32%">
						<col>
						<col width="66%">
					</colgroup>
					<tbody>
						<tr valign="top">
							<td><a class="boxBorderCaption"
								href="javascript:goLeft(0,1,'')">
									<div class="tipCount">17</div> 待处理的事务 ···
							</a>
								<div class="boxBorderContent">
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority1.gif" border="0"><span
											style="color: red;">国环公司认证管理子系统督进</span></a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0"><span
											style="color: red;">用车申请-沈华-1000971</span></a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0">用品领用申请-沈涛辉-1000968</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0">差旅费报销-张瑶瑶-1000965</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0">2016年4月绩效考核单-张旭</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0"><span
											style="color: red;">员工培训安排-李萌-1000960</span></a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0">2016年4月绩效考核单-沈华</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/7</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority1.gif" border="0">资产采购申请-季道晓-1000964</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/4</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority-1.gif" border="0">拜访杭州客户工作报告</a>
									</div>
									<div>
										<span style="float: right; margin-left: 10px;"
											class="textGray">5/3</span><a><i style="color: orange;"
											class="fa fa-calendar-minus-o fa-lg"></i><img
											src="css/priority0.gif" border="0"><span
											style="color: red;">2016年第二季度财务工作任务</span></a>
									</div>
								</div> <a class="boxBorderCaption"
								href="javascript:goLeft(2,1,'weidu.html')">
									<div class="tipCount">0</div> 未读消息 ···
							</a>
								<div class="boxBorderContent"></div> <a class="boxBorderCaption"
								href="javascript:goLeft(1,6,'weidu.html')">我的工作日程
									···</a>
								<div class="boxBorderContent">
									<table border="0" cellpadding="0" cellspacing="0">
										<colgroup>
											<col width="40px">
											<col>
										</colgroup>
										<tbody>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a class="textHighlight">今天</a>
													</div></td>
												<td style="padding-left: 10px;"><div class="textGray"
														align="right">( 没有设置工作日程 )</div></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>明天</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>后天</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>3/9</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>3/10</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>3/11</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
											<tr valign="top">
												<td style="border-right: 1px solid rgb(238, 238, 238);"><div>
														<a>3/12</a>
													</div></td>
												<td style="padding-left: 10px;"></td>
											</tr>
										</tbody>
									</table>
								</div></td>
							<td></td>
							<td><div class="boxBorder1Caption">目标管理</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px;">
									<table style="text-align: center;" border="0" cellpadding="5"
										cellspacing="0">
										<tbody>
											<tr>
												<td class="sepratorRight"><a
													class="textHighlight textBig" style="display: block;"
													href="javascript:goLeft(1,0,'pros.do?action=Prospectuslist&prospectus_create_name=${s_emp.emp_name }')">${gzjh }</a>我的工作计划</td>
												<td class="sepratorRight"><a
													class="textHighlight textBig" style="display: block;"
													href="javascript:goLeft(1,2,'assi.do?action=Assignmentlist&assignment_create_name=${s_emp.emp_name }')">${gzrw }</a>我的工作任务</td>
												<td><a class="textHighlight textBig"
													style="display: block;"
													href="javascript:goLeft(1,4,'repo.do?action=Reportlist&report_create_name=${s_emp.emp_name }')">${gzbg }</a>我的工作报告</td>
											</tr>
										</tbody>
									</table>
								</div>
								<table style="table-layout: fixed;" border="0" cellpadding="0"
									cellspacing="0">
									<colgroup>
										<col width="51%">
										<col>
										<col width="46%">
									</colgroup>
									<tbody>
										<tr valign="top">
											<td><a class="boxBorderCaption"
												href="javascript:goLeft(2,2,'weidu.html')">
													<div class="tipCount">20</div> 信息公告 ···
											</a>
												<div class="boxBorderContent">
													<!-- <div class="thumbnail1" id="thumbnail">
														<a style="display: inline;"><img
															title="10oa成功签约倍科电器，助力世界500强" style="width: 100%;"
															src="css/customerBeko.jpg" border="0"></a><a
															style="display: none;"><img
															title="10oa系统陪伴《省老年体协会》5个年头" style="width: 100%;"
															src="css/012.png" border="0"></a><a
															style="display: none;"><img title="公司销售部销售管理制度 "
															style="width: 100%;" src="css/file01.jpg" border="0"></a><a
															style="display: none;"><img
															title="实施常州市烟草局管理综合平台项目加班通知" style="width: 100%;"
															src="css/czyc.png" border="0"></a><a
															style="display: none;"><img
															title="10oa协同办公系统，广受中小企业欢迎" style="width: 100%;"
															src="css/22.png" border="0"></a>
														<div style="margin: -30px 20px 0px 0px;" align="right">
															<img src="css/dotGray.gif"><img
																src="css/dotGray.gif"><img src="css/dotGray.gif"><img
																src="css/dotGray.gif"><img src="css/dotGray.gif">
														</div>
													</div>
													<script language="javascript">
														/* Code removed by ScrapBook */
													</script> -->
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/28</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">10oa成功签约倍科电器，助力世界500强</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">OA系统替换案例：二进制携手中兴恒业</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">如何选择企业自身的OA需求？</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">OA办公系统助中小企业打造全面运营管理</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">10oa系统陪伴《省老年体协会》5个年头</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">资产管理制度（2016.3修订版）</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">公司公务用车管理办法</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">公司销售部销售管理制度 </a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority1.gif" border="0">公司财务管理制度</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray">4/18</span><a><i
															class="fa fa-newspaper-o fa-lg"></i><img
															src="css/priority0.gif" border="0">关于召开OA启用准备会议的通知</a>
													</div>
												</div></td>
											<td></td>
											<td><a class="boxBorderCaption"
												href="javascript:goLeft(2,0,'weidu.html')">
													<div class="tipCount">77</div> 内部通讯录 ···
											</a>
												<div class="boxBorderContent" style="min-height: 0px;">
													<input id="contactFinding"
														style="font-size: 120%; width: 75%; border-width: 0px 0px 1px; border-style: none none solid; border-color: -moz-use-text-color -moz-use-text-color rgb(238, 238, 238); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none;">
													<i class="fa fa-search fa-lg" style="cursor: pointer;"></i>
												</div> <a class="boxBorderCaption"
												href="javascript:goLeft(2,4,'weidu.html')">
													<div class="tipCount">16</div> 我关注的知识 ···
											</a>
												<div class="boxBorderContent">
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															22</span><a><i class="fa fa-file-text-o fa-lg"></i> [置顶]
															四项原则帮你选oa协同办公软件</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															7</span><a><i class="fa fa-file-text-o fa-lg"></i>
															OA系统管理员岗位职责都有哪些？</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															6</span><a><i class="fa fa-file-text-o fa-lg"></i> [精华]
															怎样的OA系统容易被企业CIO接受？</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															4</span><a><i class="fa fa-file-text-o fa-lg"></i>
															小企业如何低成本地采购OA系统？</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															1</span><a><i class="fa fa-file-text-o fa-lg"></i>
															10oa支持内外网同时登陆办公同一套数据？</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															5</span><a><i class="fa fa-file-text-o fa-lg"></i>
															推动十二五发展建设新闻稿</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															7</span><a><i class="fa fa-file-text-o fa-lg"></i>
															公司十周年庆典活动介绍</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															5</span><a><i class="fa fa-file-text-o fa-lg"></i> 周六爬山公益活动</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															3</span><a><i class="fa fa-file-text-o fa-lg"></i> [精华]
															如何有步骤地开发区域市场</a>
													</div>
													<div>
														<span style="float: right; margin-left: 10px;"
															class="textGray"><i class="fa fa-commenting-o"></i>
															4</span><a><i class="fa fa-file-text-o fa-lg"></i> 现代销售即网络营销</a>
													</div>
												</div>
												<div class="boxBorderCaption">友情链接</div>
												<div class="boxBorderContent">
													<a href="http://www.baidu.com/" target="_blank"><i
														class="fa fa-external-link fa-lg"></i> 百度</a><br>
													<a href="http://www.12306.cn/mormhweb//" target="_blank"><i
														class="fa fa-external-link fa-lg"></i> 12306官网</a>
												</div></td>
										</tr>
									</tbody>
								</table>
								</td></tr></tbody></table></td></tr></tbody></table>
								</body>
								</c:if>
								</html>