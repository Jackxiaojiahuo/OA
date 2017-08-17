<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxzx_xxgg.css">
<script type="text/javascript" src="../js/open.js"></script>

<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
  <tr valign="top">
    <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><h1><img style="cursor: pointer;" src="css/menu.png"> 信息公告</h1></td>
          
            <td><a href="../xxgg.do?action=ss">› 切换到分类显示方式</a></td>
            <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oWorkflowList1"><a href="info/xxgg_cx.jsp" class="button1 button1L">查找</a></span><a class="button1 button1R" href="../xxgg.do?action=ss&type=type" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
          </tr>
        </tbody>
      </table>
      <br>
      <table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0">
      <colgroup>
      <col width="49%">
      <col width="2%">
      <col width="49%">
      </colgroup>
      <tbody>
        <tr valign="top">
          <td><a class="boxBorderCaption" href="../xxgg.do?action=ss&noticeClassify=1">
            <div class="tipCount">
           		<c:forEach var="n" items="${num }" begin="0" end="0"> 
           			${n }
           		</c:forEach>
            </div>
            
            新闻资讯 ···</a>
            <div class="boxBorderContent"  style="height: 400px;">
              <div class="thumbnail" id="thumbnail151010"><a href="#"><img title="新闻资讯" style="width: 80%;h" src="css/22.png" border="0"></a></div>
              <script language="javascript">/* Code removed by ScrapBook */</script>
              <c:forEach var="n" items="${nlist }" begin="0" end="4">
              		<c:if test="${n.noticeClassify==1 && n.noticeState=='发布中' }">
              			<div><span style="float: right; margin-left: 10px;" class="textGray">${fn:substring(n.noticDate,5,10)}</span><a href="../xxgg.do?action=ss&id=${n.noticeId }"><i class="fa fa-newspaper-o fa-lg"></i><img src="css/priority0.gif" border="0">${n.noticeTitle }</a></div>
              		</c:if>
              </c:forEach>
            </div>
            <a class="boxBorderCaption" href="../xxgg.do?action=ss&noticeClassify=3">
            <div class="tipCount">
          		<c:forEach var="n" items="${num }" begin="2" end="2"> 
           			${n }
           		</c:forEach>
            </div>
            规章制度 ···</a>
            <div class="boxBorderContent"  style="height: 400px;">
              <div class="thumbnail" id="thumbnail151030"><a href="#"><img title="规章制度 " style="width: 80%;" src="css/file01.jpg" border="0"></a></div>
              <script language="javascript">/* Code removed by ScrapBook */</script>
				<c:forEach var="n" items="${nlist }" begin="0" end="4">
              		<c:if test="${n.noticeClassify==3 && n.noticeState=='发布中'}">
              			<div><span style="float: right; margin-left: 10px;" class="textGray">${fn:substring(n.noticDate,5,10)}</span><a href="../xxgg.do?action=ss&id=${n.noticeId }"><i class="fa fa-newspaper-o fa-lg"></i><img src="css/priority0.gif" border="0">${n.noticeId }</a></div>
              		</c:if>
              	</c:forEach>
            </div></td>
          <td></td>
          <td><a class="boxBorderCaption" href="../xxgg.do?action=ss&noticeClassify=2">
            <div class="tipCount">
	            <c:forEach var="n" items="${num }" begin="1" end="1"> 
	           			${n }
	           	</c:forEach>
          	</div>
            通知公告 ···</a>
            <div class="boxBorderContent" style="height: 400px;">
              <div class="thumbnail" id="thumbnail151020"><a href="#"><img title="通知公告" style="width: 80%;" src="css/czyc.png" border="0"></a></div>
              <script language="javascript">/* Code removed by ScrapBook */</script>
				 <c:forEach var="n" items="${nlist }" begin="0" end="4">
              		<c:if test="${n.noticeClassify==2 && n.noticeState=='发布中'}">
              			<div><span style="float: right; margin-left: 10px;" class="textGray">${fn:substring(n.noticDate,5,10)}</span><a href="../xxgg.do?action=ss&id=${n.noticeId }"><i class="fa fa-newspaper-o fa-lg"></i><img src="css/priority0.gif" border="0">${n.noticeTitle }</a></div>
              		</c:if>
             	 </c:forEach>
            </div>
            <a class="boxBorderCaption" href="../xxgg.do?action=ss&noticeClassify=4">
            <div class="tipCount">
            	<c:forEach var="n" items="${num }" begin="3" end="3"> 
	           			${n }
	           	</c:forEach>
            </div>
            行业动态 ···</a>
            <div class="boxBorderContent"  style="height: 400px;">
              <div class="thumbnail" id="thumbnail151040"><a href="#"><img title="行业动态" style="width: 80%;" src="css/012.png" border="0"></a><a style="display: none;"><img title="行业动态" style="width: 80%;" src="css/22.png" border="0"></a>
                <div style="margin: -30px 20px 0px 0px;" align="right"><img src="css/dotGray.gif"><img src="css/dotGray.gif"></div>
              </div>
              <script language="javascript">/* Code removed by ScrapBook */</script>
				<c:forEach var="n" items="${nlist }" begin="0" end="4">
              		<c:if test="${n.noticeClassify==4 && n.noticeState=='发布中'}">
              			<div><span style="float: right; margin-left: 10px;" class="textGray">${fn:substring(n.noticDate,5,10)}</span><a href=../xxgg.do?action=ss&id=${n.noticeId }"><i class="fa fa-newspaper-o fa-lg"></i><img src="css/priority0.gif" border="0">${n.noticeTitle }</a></div>
              		</c:if>
                </c:forEach>
            </div>
</body>
</html>