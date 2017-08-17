<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		$('#treeOfNavigation a').click(function(){
			$('a[sid]').removeClass('textHighlight');//所有移除高亮样式
			$(this).addClass('textHighlight');
		});
		
	  })
  </script>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr valign="top">
  <td id="colloaContent"><table border="0" cellpadding="0" cellspacinody>
      <tr>
        <td><h1><img style="cursor: pointer;" src="css/menu.png"> 信息公告</h1></td>
        	<td><a href="../xxgg.do?action=ss&type=type">› 切换到聚合显示方式</a></td>
        	<td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oWorkflowList1"><a href="info/xxgg_cx.jsp" class="button1 button1L">查找</a></span><a href="../xxgg.do?action=ss" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
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
                  <a href="../xxgg.do?action=ss&noticeClassify=0" class=${noticeClassify==0?"textHighlight":""} psid="0" sid="" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> (显示所有)</a>
                  <a href="../xxgg.do?action=ss&noticeClassify=1" class=${noticeClassify==1?"textHighlight":""} class='gggl' psid="0" sid="151010" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 新闻资讯</a>
                  <a href="../xxgg.do?action=ss&noticeClassify=2" class=${noticeClassify==2?"textHighlight":""} class='gggl' psid="0" sid="151020" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 通知公告</a>
                  <a href="../xxgg.do?action=ss&noticeClassify=3" class=${noticeClassify==3?"textHighlight":""} class='gggl' psid="0" sid="151030" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 规章制度</a>
                  <a href="../xxgg.do?action=ss&noticeClassify=4" class=${noticeClassify==4?"textHighlight":""} class='gggl' psid="0" sid="151040" indent="0" style="padding-left: 0px;"><img src="css/blank16.gif" border="0"><img src="css/folder.png" border="0"> 行业动态</a></div>
                    <script type="text/javascript">/* Code removed by ScrapBook */</script></td>
                </tr>
              </tbody>
            </table>
            <div class="textGray" style="padding: 26px;">* 通常将本模块授权给指定的人员，他们能够新增公告、发布或修改。已发布的公告将在【信息公告】模块中显示出来</div></td>
          <td></td>
          <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
              <thead>
                <tr>
                  <th width="25%">主题</th>
                  <th width="25%">发布人</th>
                  <th width="25%">创建时间</th>
                  <th width="25%">更新时间</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach var="n" items="${nlist}">
	              		<c:if test="${n.noticeState=='发布中' }">
	              			<tr>
			                  <td><a href="../xxgg.do?action=ss&id=${n.noticeId }"><i class="fa fa-newspaper-o fa-lg"></i><c:choose><c:when test="${n.noticeType==2 }"><img src="css/priority1.gif" border="0"></c:when><c:otherwise><img src="css/priority0.gif" border="0"></c:otherwise></c:choose>${n.noticeTitle }</a></td>
			                  <td>${n.noticePerson}&nbsp;</td>
			                  <td>${n.noticDate}</td>
			                  <td>${n.noticDay}</td>
		                	</tr>
	              		</c:if>
                </c:forEach>
              </tbody>
            </table>
            <script language="javaScript">/* Code removed by ScrapBook */</script>
            <div style="padding: 20px 0px;">
							<a href="../xxgg.do?action=ss&noticeClassify=${noticeClassify }&index=1" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="../xxgg.do?action=ss&noticeClassify=${noticeClassify }&index=${page.index-1 eq 0 ? 1 : page.index-1}" class="button1 button1M"
								title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
								class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</span><a href="../xxgg.do?action=ss&noticeClassify=${noticeClassify }&index=${(page.index+1 gt page.total ? page.total : page.index+1)==0?1:(page.index+1 gt page.total ? page.total : page.index+1)}"
								class="button1 button1M" title="下页">&nbsp;<i
								class="fa fa-forward"></i></a><a href="../xxgg.do?action=ss&noticeClassify=${noticeClassify }&index=${page.total==0?1:page.total}" class="button1 button1R" title="尾页">&nbsp;<i
								class="fa fa-step-forward"></i></a>
						</div></td>
        </tr>
      </tbody>
    </table>
</body>
</html>