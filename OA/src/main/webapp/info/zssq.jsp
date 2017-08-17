<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="stylesheet" href="css/xxzx_view.css">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/open.js"></script>

<script>
	  $(function(){
		$('.treeOfNavigation a').click(function(){
			$('a[sid]').removeClass('textHighlight');//所有移除高亮样式
			$('a[stype]').removeClass('textHighlight');
			$(this).addClass('textHighlight');
		});
	  })
  </script>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
  <tr valign="top">
    <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><h1><img style="cursor: pointer;" src="css/menu.png"> 知识社区</h1></td>
            <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oWorkflowList1"><a href="info/zssq_sqft.jsp" class="button1 button1L">✚ 社区发帖</a><a class="button1 button1M" href="info/zssq_cx.jsp">查找</a></span><a href="../Topic.do?action=ss" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
          </tr>
        </tbody>
      </table>
      <br>
      <table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0">
        <colgroup>
        <col width="20%">
        <col width="2%">
        <col>
        </colgroup>
        <tbody>
          <tr valign="top">
            <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                <thead>
                  <tr>
                    <th style="padding-left: 26px;">分类</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td style="padding: 10px;"><div id="treeOfNavigation" class="treeOfNavigation">
                    <a href="../Topic.do?action=ss&tSId=0&type=0" class="${type==0?'textHighlight':'' }" psid="0" sid="" indent="0"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> (显示所有)</a>
                    <a href="../Topic.do?action=ss&tSId=1&type=1" class="${type==1?'textHighlight':'' }" psid="0" sid="155040" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 合理化建议</a>
                    <a href="../Topic.do?action=ss&tSId=2&type=2" class="${type==2?'textHighlight':'' }" psid="0" sid="155020" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 技术交流</a>
                    <a href="../Topic.do?action=ss&tSId=3&type=3" class="${type==3?'textHighlight':'' }" psid="0" sid="155010" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 企业文化</a>
                    <a href="../Topic.do?action=ss&tSId=4&type=4" class="${type==4?'textHighlight':'' }" psid="0" sid="155030" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 生活娱乐</a></div>
                      <script type="text/javascript">/* Code removed by ScrapBook */</script></td>
                  </tr>
                  <tr>
                    <td style="padding: 10px;"><div class="treeOfNavigation"> 
                     <a href="../Topic.do?action=ss&tUId=10001&type=5" class="${type==5?'textHighlight':'' }" stype="10"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 我发布的</a>
                    <%--  <a href="../Topic.do?action=ss&tType=1&type=6" class="${type==6?'textHighlight':'' }" stype="30"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 精华帖子</a> --%> </div></td>
                  </tr>
                </tbody>
              </table>
              <div class="textGray" style="padding: 26px;">* 我关注的分类：合理化建议，技术交流，企业文化，生活娱乐，</div></td>
            <td></td>
            <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                <thead>
                  <tr>
                    <th width="40%">主题</th>
                    <th width="35%">作者</th>
                    <th width="15%">点击</th>
                    <th width="15%">回复</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="t" items="${list}">
	                 <tr>
	                    <td><a href="../Topic.do?action=ssid&id=${t.tId }"><i class="fa fa-file-text-o fa-lg"></i>${t.tType==1?"[精华]":""} ${t.tTitle }</a></td>
	                    <td>
	                     <c:forEach var="e" items="${emp }">
              				<c:if test="${e.emp_code==t.tUId }">
              					${e.emp_name }
              				</c:if>
              			</c:forEach>
               (<fmt:formatDate value="${t.tTime }" pattern="yyyy-MM-dd HH:mm:ss"/>)</td>
	                    <td>${t.tClickCoount }</td>
	                    <td>${t.tReplyCount }</td>
	                 </tr>
                </c:forEach>
                </tbody>
              </table>
              <script language="javaScript">/* Code removed by ScrapBook */</script>
             <div style="padding: 20px 0px;">
							<a href="../Topic.do?action=ss&tSId=0&type=${type }&index=1" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="../Topic.do?action=ss&tSId=0&type=${type }&index=${page.index-1 eq 0 ? 1 : page.index-1}" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</span><a href="../Topic.do?action=ss&tSId=0&type=${type }&index=${page.index+1 gt page.total ? page.total : page.index+1}"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="../Topic.do?action=ss&tSId=0&type=${type }&index=${page.total}" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div></td>
          </tr>
        </tbody>
      </table>
</body>
</html>