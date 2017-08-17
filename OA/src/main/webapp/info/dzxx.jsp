<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的桌面 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxzx_dzxx.css">
<script type="text/javascript" src="../js/open.js"></script>

<style type="text/css">
	#wrap {	
			display:block;bottom:0px;right:1px!important;
			right:18px;width:250px;line-height:20px;
			margin:0px;
			position:fixed;border:1px solid #ccc;
			color:#3175EF; 
			background:#E3E1E1;}
</style>
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script>
	$('#colloaMenu2 a').click(function() {
		$('a[style]').removeClass('textHighlight');//所有移除高亮样式
		$(this).addClass('textHighlight');
	});
	/* window.setTimeout(function(){
		 window.open('onopen.jsp','_blank','width=500, height=400');
	},5000) */
</script>
</head>
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
										<img style="cursor: pointer;" src=" css/menu.png"> 电子消息
									</h1></td>
								<td align="right"><script language="javaScript">
									/* Code removed by ScrapBook */
								</script><span id="oinfoflowList1"><a href='../email.do?action=bm'
										class="button1 button1L">✚ 发送消息</a><a href="info/ddxx_cx.jsp"
										class="button1 button1M">查找</a></span><a
									href="../email.do?action=ss&type=3" class="button1 button1R"
									title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a> <script
										language="javaScript">
										/* Code removed by ScrapBook */
									</script></td>
							</tr>
						</tbody>
					</table> <br>
					<div id="colloaMenu2">
						<a href="../email.do?action=ss&type=3" <c:if test="${type==3 }">class="textHighlight"</c:if> style="">
							<div class="tipCount">${wd}</div> <img src=" css/email.gif"
							border="0"> 未读消息
						</a> <a href="../email.do?action=ss&type=4"  <c:if test="${type==4 }">class="textHighlight"</c:if>>
							<div class="tipCount">${yd}</div> <img src=" css/emailOpen.gif"
							border="0"> 已读消息
						</a> <a href="../email.do?action=ss&type=2" style="" <c:if test="${type==2 }">class="textHighlight"</c:if>>
							<div class="tipCount">${yfs}</div> <img
							src=" css/emailOpen2.gif" border="1"> 已发送消息
						</a> <a href="../email.do?action=ss&type=1" style="" <c:if test="${type==1 }">class="textHighlight"</c:if>>
							<div class="tipCount">${cg}</div> <img src=" css/email.gif"
							border="0"> 草稿箱
						</a>
					</div>
					<div id="colloaContent2">
						<table class="tableList" border="0" cellpadding="0"
							cellspacing="0">
							<thead>
							<c:choose>
								<c:when test="${type==1 || type==2 }">
									<tr >
										<th width="35%"><img src="css/priority0.gif">主题</th>
										<th width="35%">收件人</th>
										<th width="30%">时间</th>
									</tr>
								</c:when>
								<c:otherwise>
									<tr id="wy">
										<th width="25%"><img src="css/priority0.gif">主题</th>
										<th width="25%">发件人</th>
										<th width="25%">收件人</th>
										<th width="25%">时间</th>
									</tr>
								</c:otherwise>
							</c:choose>		
							</thead>
							<tbody>
							
								<c:choose>
									<c:when test="${type==1 || type==2 }">
										<c:forEach var="o" items="${olist}">
											<tr>
												<td>
													<a href="../email.do?action=ssid&type=0&id=${o.send_id }">
													<i class="fa fa-envelope fa-lg"></i>
													<img border=0 src="css/priority0.gif">${o.outbox_title }
												</a> 
												</td>
												<td>${o.outbox_receiverName }</td>
												<td><fmt:formatDate type="date" value="${o.outbox_date }"/></td>
												<td><img align=center src="css/star0.gif"></td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:forEach var="i" items="${ilist}">
											<tr>
												<td>
													<a href="../email.do?action=ssid&type=1&id=${i.receive_id}">
														<i class="fa fa-envelope fa-lg"></i>
														<img border=0 src="css/priority0.gif">${i.inbox_title }
													</a>
												</td>
												<td>${i.inbox_senderName}</td>
												<td>${i.inbox_receiverName }</td>
												<td>${i.inbox_date }</td>
												<td><img align=center src="css/star0.gif"></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
						<script language="javaScript">
							/* Code removed by ScrapBook */
						</script>
						<div style="padding: 20px 0px;">
							<a href="../email.do?action=ss&type=${type }&index=1" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="../email.do?action=ss&type=${type }&index=${page.index-1 eq 0 ? 1 : page.index-1}" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第 1/1 页</c:otherwise>
									</c:choose>
								</span><a href="../email.do?action=ss&type=${type }&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="../email.do?action=ss&type=${type }&index=${page.total==0?1:page.total}" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div>
					</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
