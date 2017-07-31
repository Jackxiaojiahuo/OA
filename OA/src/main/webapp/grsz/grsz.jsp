<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
  <script src="../js/jquery-1.8.3.min.js"></script>
  <script>
  	$(function(){
  		var path=$("#img_status").attr("src");
  		var val=$("#des").val();
  		$(parent.parent.left.document).contents().find("#status").attr("src",path);//改变状态图片
  		$(parent.parent.left.document).contents().find("#div_des").html(val);//改变说明信息
  		if($("#pwdmsg").val()!=""&&$("#pwdmsg").val()!=null)
			alert($("#pwdmsg").val());  		
  	});
  </script>
</head>
<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 个人设置</h1><input type="hidden" value="${pwdmsg }" id="pwdmsg"></td>
              <td id="oWorkflowList" align="right"><span id="oWorkflowList1"><a href="klxg.jsp"  class="button1 button1L">修改口令</a><a href="szzt.jsp"  class="button1 button1R">设置状态</a></span></td>
            </tr>
          </tbody>
        </table>
        <br>
        <div class="boxBorder" style="padding: 30px;">
          <div style="display: inline-block; vertical-align: top; margin: 0px 20px 20px 0px;"><img src="../${EMP.emp_icon }" border="0"></div>
          <div style="display: inline-block; vertical-align: top;"><span class="textBig">${EMP.emp_name }</span> <br>
            <br>
            从属于：${EMP.dept.depart_name }<br>
            个人状态：<c:choose>
            	<c:when test="${EMP.emp_status eq '在岗'  }">
            		<img id="img_status" src="css/userXStatus0.png">在岗
            	</c:when>
            	<c:when test="${EMP.emp_status eq '出差' }">
            		<img id="img_status" src="css/userXStatus10.png">出差
            	</c:when>
            	<c:otherwise>
            		<img id="img_status" src="css/userXStatus20.png">离岗
            	</c:otherwise>
            </c:choose>
             <br>
            简短说明：${EMP.emp_description }<input type="hidden" id="des" value="${EMP.emp_description }"> <br>
            固定电话：${EMP.emp_phone } <br>
            移动电话：${EMP.emp_mobile } <br>
            电子消息：${EMP.emp_email } <br>
            即时通信(QQ)：${EMP.emp_qq }   </div></div></td>
    </tr>
  </tbody>
</table>
</body>
</html>