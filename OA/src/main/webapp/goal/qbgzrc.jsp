<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/";
%>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'qbgzrc.jsp' starting page</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/qbgzrc.min.css">
<link rel="stylesheet" href="css/qbgzrc.css">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		$('[indent=0]').toggle( //华夏集团点击事件
			function() {
				$(this).next("span").find("[indent=1]").show(); //子公司显示
				$(this).find('img').eq(0).attr('src', 'css/minus.gif'); //图片变为减号
			}, function() {
				$(this).next("span").find("[indent]").hide(); //子公司隐藏
				$(this).find('img').eq(0).attr('src', 'css/plus.gif'); //图片变为加号
				$("[as=all]").attr('src', 'css/plus.gif'); //二级菜单图片变成加号
			}
		);
		$('[as=all]').parent().click(
			function() {
				//alert(($(this).next("span").find('[indent=2]')).get(0).style.display)
				if (($(this).next("span").find('[indent=2]')).get(0).style.display == "none") {
					$(this).next("span").find('[indent=2]').show();
					$(this).find('[as=all]').attr('src', 'css/minus.gif');
				} else {
					$(this).next("span").find('[indent=2]').hide();
					$(this).find('[as=all]').attr('src', 'css/plus.gif');
				}
			});
	});
</script>
</head>

<body>
	<table style="min-width: 980px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">

				<td id="colloaContent"><table cellspacing="0" cellpadding="0"
						border="0">
						<tbody>
							<tr>
								<td><h1>
										<img style="cursor: pointer;" src="css/menu.png"> 全部工作日程
									</h1></td>
								<td align="right"><script language="javaScript">/* Code removed by ScrapBook */
								</script><a class="button1 button1L" title="后退"><i
										class="fa fa-angle-left fa-lg"></i></a><span id="oWorkflowList1"></span><a
									class="button1 button1R" title="刷新"><i
										class="fa fa-bolt fa-lg"></i></a> <script language="javaScript">/* Code removed by ScrapBook */
										</script></td>
							</tr>
						</tbody>
					</table> <br>
					<table style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0">
						<colgroup>
							<col width="20%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td><table class="tableList" cellspacing="0"
										cellpadding="0" border="0">
										<thead>
											<tr>
												<th style="padding-left: 26px;">分类</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td style="padding: 10px;"><div id="treeOfNavigation"
														class="treeOfNavigation">
														<a class=" textHighlight" psid="0" sid=""
															href="../cale.do?action=Calendarlist&num=0"> <img
															src="css/blank16.gif" border="0"> <img
															src="css/userX10000.gif" border="0"> (显示所有)
														</a> <!-- <a id="alpha" href="#" indent="0"
															style="padding-left: 0px;"> <img src="css/plus.gif"
															border="0"> <img src="css/userX10000.gif"
															border="0"> 华夏集团
														</a> <span><a psid="1000001" sid="1000002" 
														href="../cale.do?action=Calendarlist&num=1&depid=0"indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 总经办
														</a> <a psid="1000001" sid="1000003" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 人事部
														</a> <a psid="1000001" sid="1000004" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 财务部
														</a> <a psid="1000001" sid="1000117" indent="1"
															style="padding-left: 12px; display:none;"> <img
																as="all" src="css/plus.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 科技公司
														</a> <span> <a psid="1000117" sid="1000005" indent="2"
																style="padding-left:24px;display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 采购部
															</a> <a psid="1000117" sid="1000009" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 技术部
															</a> <a psid="1000117" sid="1000006" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 生产部
															</a> <a psid="1000117" sid="1000033" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 营销部
															</a></span> <a psid="1000001" sid="1000118" indent="1"
															style="padding-left: 12px; display:none;"> <img
																as="all" src="css/plus.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 工程公司
														</a> <span><a psid="1000118" sid="1000120" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 工程部
															</a> <a psid="1000118" sid="1000035" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 售后部
															</a> <a psid="1000118" sid="1000008" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 网络部
															</a> <a psid="1000118" sid="1000034" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 销售部
															</a></span> <a psid="1000001" sid="1000119" indent="1"
															style="padding-left: 12px; display:none;"> <img
																as="all" src="css/plus.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 现代事务所
														</a> <span><a psid="1000119" sid="1000123" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 产权部
															</a> <a psid="1000119" sid="1000122" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 法务部
															</a> <a psid="1000119" sid="1000124" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 税务部
															</a> <a psid="1000119" sid="1000121" indent="2"
																style="padding-left: 24px; display:none;"> <img
																	src="css/blank16.gif" border="0"> <img
																	src="css/userX10000.gif" border="0"> 咨询部
															</a></span> <a psid="1000001" sid="1000013" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 北京机构
														</a> <a psid="1000001" sid="1000011" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 杭州机构
														</a> <a psid="1000001" sid="1000010" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 上海机构
														</a> <a psid="1000001" sid="1000012" indent="1"
															style="padding-left: 12px; display:none;"> <img
																src="css/blank16.gif" border="0"> <img
																src="css/userX10000.gif" border="0"> 深圳机构
														</a></span> -->
													</div></td>
											</tr>
										</tbody>
									</table></td>
								<td></td>
								<td><table class="tableList" cellspacing="0"
										cellpadding="0" border="0">
										<thead>
											<tr>
												<th>&nbsp;&nbsp;起止时间</th>
												<th>创建人</th>
												<th>日程/活动主题</th>
												<th>附件</th>
											</tr>
										</thead>
										<c:forEach var="c" items="${list }">
											<tbody>
												<td>&nbsp;<img src="css/time.gif">&nbsp;${c.calendar_starttime }~~${c.calendar_endtime }</td>
												<td>${c.calendar_create_name }</td>
												<%-- <td>${a.dept.depart_name }</td> --%>
												<td>${c.calendar_title }</td>
												<td>${c.calendar_annex }</td>

											</tbody>
										</c:forEach>
									</table>
									<div style="padding: 20px 0px;">
										<a class="button1 button1L"
											href="../cale.do?action=Calendarlist&index=1" title="首页">&nbsp;<i
											class="fa fa-step-backward"></i></a><a class="button1 button1M"
											href="../cale.do?action=Calendarlist&index=${page.index-1 eq 0 ? 1 : page.index-1}"
											title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
											class="button1M">共有 ${page.count}条记录，第
											${page.index}/${page.total} 页</span><a class="button1 button1M"
											href="../cale.do?action=Calendarlist&index=${page.index+1 gt page.total ? page.total : page.index+1}"
											title="下页">&nbsp;<i class="fa fa-forward"></i></a><a
											class="button1 button1R"
											href="../cale.do?action=Calendarlist&index=${page.total}"
											title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
									</div></td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
