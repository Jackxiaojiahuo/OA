<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/info/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxzx_dzxx.css">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script>
	  $(function(){
		$('#colloaMenu2 a').click(function(){
			$('a[style]').removeClass('textHighlight');//所有移除高亮样式
			$(this).addClass('textHighlight');
		});
	  })
  </script>
 </head>
 <body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr valign="top">
      <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src=" css/menu.png"> 电子消息</h1></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oinfoflowList1"><a href='info/ddxx_fsxx.html' class="button1 button1L">✚ 发送消息</a><a href="info/dxxx_cz.html" class="button1 button1M">查找</a></span><a href="javascript:location.reload()" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div id="colloaMenu2"><a href="dzxx.html">
          <div class="tipCount">1</div>
          <img src="css/email.gif" border="0"> 未读消息</a>
          <a class="textHighlight" href="dzxx_ydxx.html">
          <div class="tipCount">13</div>
          <img src="css/emailOpen.gif" border="0"> 已读消息</a>
          <a href="dzxx_yfsxx.html">
          <div class="tipCount">3</div>
          <img src="css/emailOpen2.gif" border="0"> 已发送消息</a>
          <a href="dzxx_cgx.html">
          <div class="tipCount">2</div>
          <img src="css/email.gif" border="0"> 草稿箱</a>
        </div>
        <div id="colloaContent2">
          <table class="tableList" cellspacing="0" cellpadding="0" border="0">
            <thead>
              <tr>
                <th><img src="css/priority0.gif">主题</th>
                <th>发件人</th>
                <th>收件人</th>
                <th>时间</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">苏州的客户的发票</a></td>
                <td>陈有道</td>
                <td>李萌, </td>
                <td>2016/4/12 9:21</td>
                <td><img src="css/star3.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">江西客户情况</a></td>
                <td>沈华</td>
                <td>李萌, </td>
                <td>2016/4/11 17:32</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">工作调整</a></td>
                <td>沈华</td>
                <td>李萌, </td>
                <td>2016/4/11 17:30</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">申请报销单错误</a></td>
                <td>王美丽</td>
                <td>李萌, </td>
                <td>2016/4/11 17:26</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">云南客户情况处理</a></td>
                <td>陈杰</td>
                <td>李萌, </td>
                <td>2016/4/11 17:24</td>
                <td><img src="css/star5.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">明天来我这拿文件</a></td>
                <td>陈慧红</td>
                <td>李萌, </td>
                <td>2016/4/11 17:21</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">部门聚餐</a></td>
                <td>陈慧红</td>
                <td>李萌, </td>
                <td>2016/4/11 17:19</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">技术学习</a></td>
                <td>陈龙天</td>
                <td>李萌, </td>
                <td>2016/4/11 15:44</td>
                <td><img src="css/star6.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">回复客户需求情况</a></td>
                <td>陈龙天</td>
                <td>李萌, </td>
                <td>2016/4/11 15:43</td>
                <td><img src="css/star1.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">关于跟踪客户分析</a></td>
                <td>王美丽</td>
                <td>李萌, </td>
                <td>2016/4/11 15:39</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">上周加班可以调休</a></td>
                <td>王萍</td>
                <td>李萌, </td>
                <td>2016/4/7 17:33</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">加紧本月销售任务</a></td>
                <td>刘军</td>
                <td>李萌, </td>
                <td>2016/4/7 16:54</td>
                <td><img src="css/star7.gif" align="middle"></td>
              </tr>
              <tr>
                <td><a><i class="fa fa-envelope fa-lg"></i><img src="css/priority0.gif" border="0">10oa系统软件的功能</a></td>
                <td>王刚</td>
                <td>所有人, </td>
                <td>2016/4/7 9:16</td>
                <td><img src="css/star4.gif" align="middle"></td>
              </tr>
            </tbody>
          </table>
          <script language="javaScript">/* Code removed by ScrapBook */</script>
          <div style="padding: 20px 0px;"><a class="button1 button1L" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a class="button1 button1M" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span class="button1M">共有 13 条记录，第 1/1 页</span><a class="button1 button1M" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a class="button1 button1R" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a></div>
        </div></td>
    </tr>
  </tbody>
</table>
</body>
</html>