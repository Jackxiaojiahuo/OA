<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link rel="stylesheet" href="css/ggbl_cx.css">
  <script type="text/javascript" src="jquery-1.8.2.min.js"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
			var c=$('input[name=con]').val();<!--记入输入的信息-->
		//var co={"names":s,"count":c}
			location.href='../../Notice.do?action=cx&names='+s+'&count='+c+'&noticeState=1';
		});
	})
	function sub(num){
		var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
		var c=$('input[name=con]').val();<!--记入输入的信息-->
		if(num==1){
			location.href='../../Notice.do?action=cx&names='+s+'&count='+c+'&index=1&noticeState=1';
		}else if(num==2){
			location.href='../../Notice.do?action=cx&names='+s+'&count='+c+'&index=${page.index-1 eq 0 ? 1 : page.index-1}&noticeState=1';
		}else if(num==3){
			location.href='../../Notice.do?action=cx&names='+s+'&count='+c+'&index=${page.index+1 gt page.total ? page.total : page.index+1}&noticeState=1';
		}else if(num==4){
			location.href='../../Notice.do?action=cx&names='+s+'&count='+c+'&index=${page.total}&noticeState=1';
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
              <td><span class="textBig">查找公告</span>
                <input name="field" checked="checked" <c:if test="${names=='noticeTitle'}">checked="checked"</c:if> value="noticeTitle" type="radio">
                按主题
                <input name="field" <c:if test="${names=='noticDate' }">checked="checked"</c:if> value="noticDate" dbf.type="date" type="radio">
                按创建时间
                <input name="field" <c:if test="${names=='noticDay' }">checked="checked"</c:if> value="noticDay" dbf.type="date" type="radio">
                按更新时间
                <input name="field" <c:if test="${names=='noticeKeyword' }">checked="checked"</c:if> value="noticeKeyword" type="radio">
                按关键字 <br>
                <input class="textBig" value="${count }" name="con" style="width: 550px;" id="words" maxlength="100">
                <span class="textBig" id="to" style="display: inline;"> <img src="css/search.png" id="btn" style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a href="../../Notice.do?action=ShowSH&noticeClassify=0" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table class="tableList" cellspacing="0" cellpadding="0" border="0">
          <thead>
            <tr>
              <th width="25%">名称</th>
              <th width="25%">发布人</th>
              <th  width="25%">创建时间</th>
              <th  width="25%">更新时间</th>
            </tr>
          </thead>
          <tbody>
         <!--  ${param.value} -->
          <c:forEach var="n" items="${ncx }">
						<tr class="">
			              <td><a href="../../Notice.do?action=sh&id=${n.noticeId }">
			              		<i style="color: orange;" class="fa fa-calendar-minus-o fa-lg"}></i>
			              		<c:choose>
				              		<c:when test="${n.noticeType==2 }">
				              			<img src="css/priority1.gif" border="0">
				              		</c:when>
				              		<c:otherwise>
				              			<img src="css/priority0.gif" border="0">
				              		</c:otherwise>
			              		</c:choose>${n.noticeTitle }
		              		</a></td>
			              <td>${n.noticePerson}&nbsp;</td>
			              <td>${n.noticDate }</td>
			              <td>${n.noticDay }</td>
			            </tr>
           </c:forEach>
          </tbody>
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
						</div></td>
    </tr>
  </tbody>
</table>
</body>
</html>
