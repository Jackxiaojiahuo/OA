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
<title>查找 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="css/zssq_cz.css">
 <script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
			var c=$('input[name=con]').val();<!--记入输入的信息-->
		//var co={"names":s,"count":c}
			location.href='../../Topic.do?action=cx&names='+s+'&count='+c+'';
		});
	})
	function sub(num){
		var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
		var c=$('input[name=con]').val();<!--记入输入的信息-->
		if(num==1){
			location.href='../../Topic.do?action=cx&names='+s+'&count='+c+'&index=1';
		}else if(num==2){
			location.href='../../Topic.do?action=cx&names='+s+'&count='+c+'&index=${page.index-1 eq 0 ? 1 : page.index-1}';
		}else if(num==3){
			location.href='../../Topic.do?action=cx&names='+s+'&count='+c+'&index=${page.index+1 gt page.total ? page.total : page.index+1}';
		}else if(num==4){
			location.href='../../Topic.do?action=cx&names='+s+'&count='+c+'&index=${page.total}';
		}
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><span class="textBig">查找社区帖子</span>
                <input checked="checked" <c:if test="${names=='tTitle'}">checked="checked"</c:if> name="field" value="tTitle" type="radio">
                按主题
                <input <c:if test="${names=='tUId'}">checked="checked"</c:if> name="field" value="tUId" type="radio">
                按作者
                <input <c:if test="${names=='tLabel'}">checked="checked"</c:if> name="field" value="tLabel" type="radio">
                按标签
                <br>
                <input class="textBig" name="con" value="${count }" style="width: 550px;" id="words" maxlength="100">
                <img src="css/search.png" id="btn" style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a class="button1 button1L" href="javascript:location.reload()" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a href="../../Topic.do?action=ss	" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table class="tableList" cellspacing="0" cellpadding="0" border="0">
          <thead>
            <tr>
              <th width="25%">主题</th>
              <th width="25%">作者</th>
              <th width="12%">点击</th>
              <th width="12%">回复</th>
              <th width="26%">最后回复</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach var="t" items="${tlist }">          
          	<tr>
              <td><a href="../../Topic.do?action=ssid&id=${t.tId }"><i class="fa fa-file-text-o fa-lg"></i> ${t.tTitle }</a></td>
              <td>${t.epy.emp_name } (2016/4/18 14:35)</td>
              <td>${t.tClickCoount }</td>
              <td>${t.tReplyCount }</td>
              <td><fmt:formatDate type="date" value="${t.tTime }"/>&nbsp;</td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
        <script language="javaScript">/* Code removed by ScrapBook */</script>
       <div style="padding: 20px 0px;">
							<a href="javascript:sub(1);" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="javascript:sub(1);" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第1/1页</c:otherwise>
									</c:choose>
									
									</span><a href="javascript:sub(3);"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="javascript:sub(4);" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div>
        <script language="javaScript">/* Code removed by ScrapBook */</script></td>
    </tr>
  </tbody>
</table>
</body>
</html>
