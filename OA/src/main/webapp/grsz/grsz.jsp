<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/grsz/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/grsz_font-awesome.min.css">
<link rel="stylesheet" href="css/grsz_view.css">
</head>
<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 个人设置</h1></td>
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a href="klxg.html"  class="button1 button1L">修改口令</a><a href="szzt.html"  class="button1 button1M">设置状态</a></span><a class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div class="boxBorder" style="padding: 30px;">
          <div style="display: inline-block; vertical-align: top; margin: 0px 20px 20px 0px;"><img src="css/h23.png" border="0"></div>
          <div style="display: inline-block; vertical-align: top;"><span class="textBig">李萌</span> <br>
            <br>
            从属于：销售部 <br>
            岗位角色：系统管理员, <br>
            事务委托给： <br>
            被他人委托： <br>
            <br>
            个人状态：<img src="css/userXStatus0.png">在岗 <br>
            简短说明：探索协同运营管理之道 <br>
            固定电话：025-84858968 <br>
            移动电话：13900221452 <br>
            电子消息：limeng123@139.com <br>
            即时通信： </div>
        </div></td>
    </tr>
  </tbody>
</table>
</td></tr></tbody></table>

</body>
</html>