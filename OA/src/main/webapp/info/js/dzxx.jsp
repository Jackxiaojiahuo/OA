<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/info";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dzxx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxzx_dzxx.css">
<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
<script>
	  $(function(){
		$('#colloaMenu2 a').click(function(){
			$('a[style]').removeClass('textHighlight');//鎵�湁绉婚櫎楂樹寒鏍峰紡
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
              <td><h1><img style="cursor: pointer;" src=" css/menu.png"> 鐢靛瓙娑堟伅</h1></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oinfoflowList1"><a href='info/ddxx_fsxx.html' class="button1 button1L">鉁�鍙戦�娑堟伅</a><a href="info/dxxx_cz.html" class="button1 button1M">鏌ユ壘</a></span><a href="javascript:location.reload()" class="button1 button1R" title="鍒锋柊">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div id="colloaMenu2">
          <a class="textHighlight" href="dzxx.html" style="">
          <div class="tipCount">1</div>
          <img src=" css/email.gif" border="0"> 鏈娑堟伅</a>
          <a href="dzxx_ydxx.html" style="">
          <div class="tipCount">13</div>
          <img src=" css/emailOpen.gif" border="0"> 宸茶娑堟伅</a>
          <a href="dzxx_yfsxx.html" style="">
          <div class="tipCount">3</div>
          <img src=" css/emailOpen2.gif" border="0"> 宸插彂閫佹秷鎭�/a>
          <a href="dzxx_cgx.html" style="">
          <div class="tipCount">2</div>
          <img src=" css/email.gif" border="0"> 鑽夌绠�/a>
		</div>
        <div id="colloaContent2">
          <table class="tableList" border="0" cellpadding="0" cellspacing="0">
            <thead>
              <tr>
                <th><img src="css/priority0.gif">涓婚</th>
                <th>鍙戜欢浜�/th>
                <th>鏀朵欢浜�/th>
                <th>鏃堕棿</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><a href="info/ddxx_zs.html"> <i class="fa fa-envelope fa-lg"></i> <img src="css/priority0.gif" border="0">鑻忓窞鐨勫鎴风殑鍙戠エ </a></td>
                <td>闄堟湁閬�/td>
                <td>鏉庤悓, </td>
                <td>2016/4/12 9:21</td>
                <td><img src="css/star0.gif" align="middle"></td>
              </tr>  
            </tbody>
		 	
          </table>
          <script language="javaScript">/* Code removed by ScrapBook */</script>
          <div style="padding: 20px 0px;"><a class="button1 button1L" title="棣栭〉">&nbsp;<i class="fa fa-step-backward"></i></a><a class="button1 button1M" title="涓婇〉">&nbsp;<i class="fa fa-backward"></i></a><span class="button1M">鍏辨湁 0 鏉¤褰曪紝绗�1/1 椤�/span><a class="button1 button1M" title="涓嬮〉">&nbsp;<i class="fa fa-forward"></i></a><a class="button1 button1R" title="灏鹃〉">&nbsp;<i class="fa fa-step-forward"></i></a></div>
        </div></td>
    </tr>
  </tbody>
</table>
