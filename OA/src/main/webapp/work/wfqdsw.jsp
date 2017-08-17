<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/work/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/wfqdsw.css">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script src="js/mk.js"></script>
<body>
	<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
		cellpadding="0" cellspacing="0">
		<tbody>
			<tr valign="top">
				<td id="colloaContent"><table border="0" cellpadding="0"
						cellspacing="0">
						<tbody>
							<tr>
								<td><h1>
										<img style="cursor: pointer;" src="css/menu.png"> 我发起的事务
									</h1></td>
								<td align="right"><script language="javaScript">
									/* Code removed by ScrapBook */
								</script><span id="oWorkflowList1"><a href="work/wfqdsw_cx.html"
										class="button1 button1L">查找</a></span><a
									href="javascript:location.reload()" class="button1 button1R"
									title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a> <script
										language="javaScript">
										/* Code removed by ScrapBook */
									</script></td>
							</tr>
						</tbody>
					</table> <br>
					<table style="table-layout: fixed;" border="0" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col width="20%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td><table class="tableList" border="0" cellpadding="0"
										cellspacing="0">
										<thead>
											<tr>
												<th style="padding-left: 26px;">分类</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td style="padding: 10px;"><div id="treeOfNavigation"
														class="treeOfNavigation">
														<a psid="0" sid="130000" class='yclsw1'
															style="padding-left: 0px;"><img src="css/blank16.gif"
															border="0"><img src="css/flow.gif" border="0">
															(显示所有)</a> <a psid="0" sid="130000" class='yclsw1' indent="0"
															style="padding-left: 0px;"><img src="css/plus.gif"
															border="0"><img src="css/schedule.png" border="0">
															目标管理</a> <a psid="130000" sid="133010" class='yclsw2'
															indent="1" style="padding-left: 12px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 新增工作任务</a> <a
															psid="130000" sid="132010" class='yclsw2' indent="1"
															style="padding-left: 12px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 制定工作计划</a> <a
															psid="130000" sid="134010" class='yclsw2' indent="1"
															style="padding-left: 12px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 撰写工作报告</a> <a psid="0"
															sid="700000" class='yclsw1' indent="0"
															style="padding-left: 0px;"><img src="css/plus.gif"
															border="0"><img src="css/persons.png" border="0">
															人力资源</a> <a psid="700000" sid="703000" class='yclsw2'
															indent="1" style="padding-left: 12px; display: none;"><img
															src="css/plus.gif" border="0"><img
															src="css/catalogue1.png" border="0"> 人事审批</a> <a
															psid="703000" sid="703110" class='yclsw3' indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 招聘申请</a><a psid="703000"
															class='yclsw3' sid="703120" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 入职申请</a><a psid="703000"
															class='yclsw3' sid="703150" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 转正申请</a><a psid="703000"
															sid="703170" class='yclsw3' indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 岗位调动申请</a><a
															psid="703000" sid="703190" class='yclsw3' indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 离职申请</a><a psid="703000"
															class='yclsw3' sid="703210" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 出差申请</a><a psid="703000"
															sid="703220" class='yclsw3' indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 外出申请</a><a psid="703000"
															class='yclsw3' sid="703230" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 加班申请</a><a
															class='yclsw3' psid="703000" sid="703240" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 请休假申请</a><a
															psid="703000" sid="703250" indent="2" class='yclsw3'
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 调休申请</a><a psid="703000"
															class='yclsw3' sid="703510" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 劳动合同登记</a> <a psid="0"
															sid="150000" indent="0" class='yclsw1'
															style="padding-left: 0px;"><img src="css/plus.gif"
															border="0"><img src="css/bulletin.png" border="0">
															信息中心</a> <a psid="150000" sid="151100" indent="1"
															class='yclsw2' style="padding-left: 12px; display: none;"><img
															src="css/plus.gif" border="0"><img
															src="css/catalogue1.png" border="0"> 公告管理</a><a
															class='yclsw3' psid="151100" sid="151110" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 发布公告</a><a
															class='yclsw3' psid="151100" sid="151120" indent="2"
															style="padding-left: 24px; display: none;"> <img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 修改
														</a> <a class='yclsw1' psid="150000" sid="152500" indent="0"
															style="padding-left: 12px; display: none;"><img
															src="css/plus.gif" border="0"><img
															src="css/catalogue1.png" border="0"> 文档管理</a> <a
															class='yclsw2' psid="152500" sid="152510" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 新增文档</a> <a
															class='yclsw3' psid="152500" sid="152520" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 修改</a><a psid="152500"
															sid="152535" indent="2" class='yclsw3'
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 创建新版本</a> <a
															class="yclsw1" psid="0" sid="650000" indent="0"
															style="padding-left: 0px;"><img src="css/plus.gif"
															border="0"><img src="css/asset.png" border="0">
															行政管理</a> <a psid="650000" class="yclsw2" sid="655000"
															indent="1" style="padding-left: 12px; display: none;"><img
															src="css/plus.gif" border="0"><img
															src="css/catalogue1.png" border="0"> 行政事务</a> <a
															class="yclsw3" psid="655000" sid="655120" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 会议室预定</a><a
															psid="655000" sid="655220" indent="2" class="yclsw3"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 用车申请</a><a psid="655000"
															sid="655230" class="yclsw3" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 车辆保险登记</a><a
															psid="655000" class="yclsw3" sid="655240" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 车辆维修保养登记</a><a
															class="yclsw3" psid="655000" sid="655250" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 车辆年检登记</a><a
															psid="655000" sid="655260" indent="2" class="yclsw3"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 车辆加油登记</a><a
															psid="655000" class="yclsw3" sid="655270" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 车辆事故登记</a><a
															psid="655000" sid="655320" indent="2" class="yclsw3"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 资产领用申请</a><a
															psid="655000" class="yclsw3" sid="655330" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 资产归还申请</a><a
															psid="655000" sid="655340" indent="2" class="yclsw3"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 资产采购申请</a><a
															psid="655000" sid="655420" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 用品领用申请</a><a
															class="yclsw3" psid="655000" sid="655430" indent="2"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 用品采购申请</a><a
															psid="655000" sid="655620" indent="2" class="yclsw3"
															style="padding-left: 24px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 用章申请</a> <a psid="0"
															sid="1000000" indent="0" class="yclsw1"
															style="padding-left: 0px;"><img src="css/plus.gif"
															border="0"><img src="css/gear.png" border="0">
															自定义流程</a><a psid="1000000" class="yclsw2" sid="1000001"
															indent="1" style="padding-left: 12px; display: none;"><img
															src="css/blank16.gif" border="0"><img
															src="css/flow.gif" border="0"> 复杂业务和Word生成</a>
													</div> <script type="text/javascript">
														/* Code removed by ScrapBook */
													</script></td>
											</tr>
										</tbody>
									</table></td>
								<td></td>
								<td><table class="tableList" border="0" cellpadding="0"
										cellspacing="0">
										<thead>
											<tr>
												<th>主题</th>
												<th>当前步骤</th>
												<th>当前责任人</th>
												<th>更新时间</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="work/swcl_xzjdgsq.html"><i
														style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">memory</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:31</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">clock system</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 14:59</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">模拟IP整合</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 15:00</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">数字IP整合</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 15:00</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">数字设计环境</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 15:00</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">应用开发及FPGA验证</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:13</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">JDV检查</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:21</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">tapeout签字</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:14</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">tapeout文档</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 12:09</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">tapeout流程</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:19</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">PR</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 12:11</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">layout</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 12:12</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">后端设计</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 12:12</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">芯片级的模拟仿真及检查</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:14</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">模拟电路设计</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:16</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">模拟电路设计及仿真</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:20</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">数字EDA</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:17</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">芯片级的数字仿真及检查</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:14</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">系统验证</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:22</td>
											</tr>
											<tr>
												<td><a><i style="color: rgb(60, 188, 60);"
														class="fa fa-calendar-check-o fa-lg"></i><img
														src="css/priority0.gif" border="0">数字验证</a></td>
												<td>关闭&nbsp;</td>
												<td>&nbsp;</td>
												<td>2017/1/5 13:17</td>
											</tr>
										</tbody>
									</table> <script language="javaScript">
										/* Code removed by ScrapBook */
									</script>
									<div style="padding: 20px 0px;">
										<a class="button1 button1L" title="首页"><i
											class="fa fa-step-backward"></i></a><a class="button1 button1M"
											title="上页"><i class="fa fa-backward"></i></a><span
											class="button1M">共有 503 条记录，第 1/26 页</span><a
											class="button1 button1M" title="下页"><i
											class="fa fa-forward"></i></a><a class="button1 button1R"
											title="尾页"><i class="fa fa-step-forward"></i></a>
									</div></td>
							</tr>
						</tbody>
					</table>
</body>
</html>