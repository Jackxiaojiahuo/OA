<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/ddxx_cz.css">
<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
			var c=$('input[name=con]').val();<!--记入输入的信息-->
			location.href='../../email.do?action=cx&names='+s+'&count='+c+'';
		});
	})
	function sub(num){
		var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
		var c=$('input[name=con]').val();<!--记入输入的信息-->
		if(num==1){
			location.href='../../email.do?action=cx&names='+s+'&count='+c+'&index=1';
		}else if(num==2){
			location.href='../../email.do?action=cx&names='+s+'&count='+c+'&index=${page.index-1 eq 0 ? 1 : page.index-1}';
		}else if(num==3){
			location.href='../../email.do?action=cx&names='+s+'&count='+c+'&index=${page.index+1 gt page.total ? page.total : page.index+1}';
		}else if(num==4){
			location.href='../../email.do?action=cx&names='+s+'&count='+c+'&index=${page.total}';
		}
	}
</script>
<style></style>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><table cellspacing="0" cellpadding="0"
						border="0">
						<tbody>
							<tr>
							
								<td><span class="textBig">查找消息</span> 
								<input checked="checked"<c:if test="${names=='title' }">checked="checked"</c:if> name="field" value="title" type="radio"> 按主题 
								<input name="field" <c:if test="${names=='sender' }">checked="checked"</c:if> value="sender" type="radio"> 按发件人
								 <input name="field" <c:if test="${names=='receiver' }">checked="checked"</c:if> value="receiver" type="radio"> 按收件人<br>
								 <input class="textBig" value="${count }" style="width: 550px;" id="words" maxlength="100" name="con">
								  <span class="textBig" id="to" style="display: none;"> ~ </span> 
								  <input class="textBig" style="width: 270px; display: none;"
									id="words2" maxlength="100"><img id="btn" src="css/search.png"
									style="vertical-align: top; cursor: pointer;"></td>
								<td align="right"><script language="javaScript">
									/* Code removed by ScrapBook */
								</script><a class="button1 button1L" href="javascript:location.reload()"
									title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span
									id="oWorkflowList1"></span><a href="../../email.do?action=ss&type=3"
									class="button1 button1R" title="关闭">&nbsp;<i
										class="fa fa-times-circle fa-lg"></i></a></td>
							</tr>
						</tbody>
					</table> <br>
					<table class="tableList" cellspacing="0" cellpadding="0" border="0">
						<c:choose>
							<c:when test="${olist==null }">
								<thead>
									<tr>
										<th width="20%"><img src="css/priority0.gif">主题</th>
										<th width="20%">发件人</th>
										<th width="20%">收件人</th>
										<th width="20%">时间</th>
										<th width="20%">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${ilist }">
										<tr>
											<td><a href="../../email.do?action=ssid&type=1&id=${i.receive_id}" > <i class="fa fa-envelope fa-lg"></i> <img
													src="css/priority0.gif" border="0">${i.inbox_title }
											</a></td>
											<td>${i.inbox_senderName}</td>
											<td>&nbsp;&nbsp;&nbsp;</i>${i.inbox_receiverName }
											</td>
											<td>${i.inbox_date}"</td>
											<td><img src="css/star0.gif" align="middle"></td>
										</tr>
									</c:forEach>
								</tbody>
							</c:when>
							<c:when test="${olist!=null }">
								<thead>
									<tr>
										<th width="25%"><img src="css/priority0.gif">主题</th>
										<th width="25%">收件人</th>
										<th width="25%">时间</th>
										<th width="25%">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="o" items="${olist }">
										<tr>
											<td><a href="../../email.do?action=ssid&type=0&id=${o.send_id }" > <i class="fa fa-envelope fa-lg"></i> <img
													src="css/priority0.gif" border="0">${o.outbox_title }
											</a></td>
											<td>&nbsp;&nbsp;&nbsp;</i>${o.outbox_receiverName }
											</td>
											<td><fmt:formatDate type="date" value="${o.outbox_date }"/></td>
											<td><img src="css/star0.gif" align="middle"></td>
										</tr>
									</c:forEach>
								</tbody>
							</c:when>
						</c:choose>
						
						
					</table>
					<div style="padding: 20px 0px;">
							<a href="javascript:sub(1);" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="javascript:sub(1);" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第 1/1 页</c:otherwise>
									</c:choose>
									
									</span><a href="javascript:sub(3);"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="javascript:sub(4);" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div>
					</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
