<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/cz.min.css">
<link rel="stylesheet" href="../css/cz.css">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();
			var c=$('input[name=con]').val();
			$("#names").val(s);
			$("#count").val(c);
			document.forms[0].submit();
		});
	})
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
    <form action="../../work.do?action=kqcz&op=qxj" method="post">
    	<input type="hidden" id="names" name="names">
    	<input type="hidden" id="count" name="count">
    </form>
      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><span class="textBig">查找请休假申请</span>
                <input checked="checked" name="field" value="fg_type" type="radio">
                按请假类型<br>
 <input class="textBig" style="width: 550px;" id="words" maxlength="100" name="con">
                 <span class="textBig" id="to" style="display: none;"> ~ </span>
                 <input class="textBig" style="width: 270px; display: none;" id="words2" maxlength="100">
                <img id="btn" src="../css/search.png"style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a class="button1 button1R" title="关闭" href="javascript:history.back()">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table class="tableList" cellspacing="0" cellpadding="0" border="0">
          <thead>
            <tr>
              <th>主题</th>
              <th>申请人</th>
              <th>所属部门</th>
              <th>类型</th>
              <th>时间段</th>
              <th>共计时长</th>
            </tr>
          </thead>
          <tbody>
             <c:forEach var="f" items="${list }">
					<tbody>
							<td><a href="../../work.do?action=kqzs&fg_id=${f.fg_id }"><img src="../css/userX0.gif" border="0">${f.fg_theme }</a></td>
							<td>${f.em.emp_name }</td>
							<td>${f.dept.depart_name }</td>
							<td>${f.fg_type }</td>
							<td>${f.fg_cdate }/${f.fg_ddate }</td>
							<td>${f.fg_day }天${e.fg_hour }时</td>
					</tbody>
			</c:forEach>
          </tbody>
        </table>
        
        
        
        </td>
    </tr>
  </tbody>
</table>
</body>
</html>