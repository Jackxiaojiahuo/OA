<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
<link rel="stylesheet" href="css/dclsw.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		$('a[style]').click(function() {//子模块点击事件
			$('a[style]').removeClass('textHighlight');//所有移除高亮样式
			$(this).addClass('textHighlight');//给点击模块加高亮样式
		});
	});
</script>
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
										<img style="cursor: pointer;" src="css/menu.png"> 待处理的事务
									</h1></td>
								<td align="right"><script language="javaScript">
									/* Code removed by ScrapBook */
								</script>
									<c:if test="${noticeClassify==0 }"><a href="work/dclsw_ggcx.jsp"  class="button1 button1L">查找</a><a class="button1 button1R"
									title="刷新" href="javascript:location.reload()">&nbsp;<i
										class="fa fa-bolt fa-lg"></i></a></c:if>
									<c:if test="${noticeClassify==1 }"><a href="work/dclsw_wccz.jsp" class="button1 button1L">查找</a><a class="button1 button1R"
									title="刷新" href="javascript:location.reload()">&nbsp;<i
										class="fa fa-bolt fa-lg"></i></a></c:if>
									<c:if test="${noticeClassify==2 }"><a href="../goal/er/czjh.jsp" class="button1 button1L">查找</a><a class="button1 button1R"
									title="刷新" href="javascript:location.reload()">&nbsp;<i
										class="fa fa-bolt fa-lg"></i></a></c:if>
									<c:if test="${noticeClassify==3 }"><a href="../goal/er/czbggr.jsp" class="button1 button1L">查找</a><a class="button1 button1R"
									title="刷新" href="javascript:location.reload()">&nbsp;<i
										class="fa fa-bolt fa-lg"></i></a></c:if>
								<script language="javaScript">
									/* Code removed by ScrapBook */
								</script></td>
							</tr>
						</tbody>
					</table> <br>
					<table style="table-layout: fixed;" border="0" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col width="25%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<tr valign="top">
								<td><table class="tableList" border="0" cellpadding="0"
										cellspacing="0">
										<thead>
											<tr>
												<th style="padding-left: 15px;">分类</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td style="padding: 10px 15px;"><div
														class="treeOfNavigation">
														 <a href="../Notice.do?action=ShowSH&noticeClassify=0"
															style=""  class=${noticeClassify==0?"textHighlight":""} ><img src="css/flow.gif" border="0">
															公告管理 : 发布公告 <span class="tipCount">${ncount }</span></a> <a
															style="" href="../Notice.do?action=ShowSH&noticeClassify=1"
															style=""  class=${noticeClassify==1?"textHighlight":""}><img src="css/flow.gif" border="0">
															人事审批 : 外出申请 <span class="tipCount">${ecount }</span></a><a
															style="" href="../Notice.do?action=ShowSH&noticeClassify=2"
															style=""  class=${noticeClassify==2?"textHighlight":""}><img src="css/flow.gif" border="0">
															目标管理 : 制定工作计划 <span class="tipCount">${gcount }</span></a><a
															style="" href="../Notice.do?action=ShowSH&noticeClassify=3"
															style=""  class=${noticeClassify==3?"textHighlight":""}><img src="css/flow.gif" border="0">
															目标管理 : 撰写工作报告 <span class="tipCount">${rcount }</span></a>  
													</div></td>
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
												<th>发出人</th>
												<th>发出时间</th>
											</tr>
										</thead>
										<tbody>
										<c:choose>
											<c:when test="${noticeClassify==0 }">
												<c:forEach var="n" items="${nlist }" >
													<tr>
														<td><a href="../Notice.do?action=sh&id=${n.noticeId }"><i
																style="color: orange;"
																class="fa fa-calendar-minus-o fa-lg"></i><img
																src="css/priority0.gif" border="0"><span
																style="color: red;">${n.noticeTitle }</span></a></td>
														<td>${n.noticeState }</td>
														<td>${n.noticePerson }</td>
														<td>${n.noticDate }</td>
													</tr>
												</c:forEach>	
											</c:when>
											<c:when test="${noticeClassify==1 }">
												<c:forEach var="e" items="${nlist }" >
													<tr>
														<td><a href="../work.do?action=kqzs&eg_id=${e.eg_id }&zs=1"><i
																style="color: orange;"
																class="fa fa-calendar-minus-o fa-lg"></i><img
																src="css/priority0.gif" border="0"><span
																style="color: red;">${e.eg_theme }</span></a></td>
														<td>
															主管审批</td>
														<td>${e.em.emp_name }</td>
														<td>${fn:substring(e.eg_egress, 0, fn:length(e.eg_egress)-5)}</td>
													</tr>
												</c:forEach>	
											</c:when>
											<c:when test="${noticeClassify==2 }">
												<c:forEach var="p" items="${nlist }" >
													<tr>
														<td><a href="../pros.do?action=jhzs&prospectus_id=${p.prospectus_id}"><i
																style="color: orange;"
																class="fa fa-calendar-minus-o fa-lg"></i><img
																src="css/priority0.gif" border="0"><span
																style="color: red;">${p.prospectus_name }</span></a></td>
														<td>
															审核中</td>
														<td>${p.prospectus_create_name }</td>
														<td>${p.prospectus_create_time }</td>
													</tr>
												</c:forEach>	
											</c:when>
											<c:when test="${noticeClassify==3 }">
												<c:forEach var="r" items="${nlist }" >
													<tr>
														<td><a href="../repo.do?action=bgzs&report_id=${r.report_id}"><i
																style="color: orange;"
																class="fa fa-calendar-minus-o fa-lg"></i><img
																src="css/priority0.gif" border="0"><span
																style="color: red;">${r.report_name }</span></a></td>
														<td>
															审核中</td>
														<td>${r.report_create_name }</td>
														<td>${r.report_create_time }</td>
													</tr>
												</c:forEach>	
											</c:when>
										</c:choose>
										
										</tbody>
									</table> <script language="javaScript">/* Code removed by ScrapBook */</script>
									<div style="padding: 20px 0px;">
							<a href="../Notice.do?action=ShowSH&index=1&noticeClassify=${noticeClassify }" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="../Notice.do?action=ShowSH&index=${page.index-1 eq 0 ? 1 : page.index-1}&noticeClassify=${noticeClassify }" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</span><a href="../Notice.do?action=ShowSH&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}&noticeClassify=${noticeClassify }"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="../Notice.do?action=ShowSH&index=${page.total==0?1:page.total}&noticeClassify=${noticeClassify }" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div></td>
							</tr>
						</tbody>
					</table>
</body>
</html>