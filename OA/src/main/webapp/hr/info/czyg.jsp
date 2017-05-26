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
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/czyg.min.css">
<link rel="stylesheet" href="../css/czyg.css">
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script>
	$(function() {
		$('#btn').click(function(){
			var s=$('input[name=field]:checked()').val();
			var c=$('input[name=con]').val();
			//var co={"names":s,"count":c}
			location.href='../../emp.do?action=cz&names='+s+'&count='+c+'';
		});
	})
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><span class="textBig">查找员工</span>
                <input checked="checked" name="field" value="emp_name" type="radio">
                按姓名
                <input name="field" value="emp_code" type="radio">
                按工号
				<br>
                <input class="textBig" style="width: 550px;" id="words" maxlength="100" name="con">
                 <span class="textBig" id="to" style="display: none;"> ~ </span>
                 <input class="textBig" style="width: 270px; display: none;" id="words2" maxlength="100">
                <img id="btn" src="../css/search.png"style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><a class="button1 button1L" href="javascript:location.reload()"
									title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span
									id="oWorkflowList1"></span><a href="javascript:history.go(-1)"
									class="button1 button1R" title="关闭">&nbsp;<i
										class="fa fa-times-circle fa-lg"></i></a></td>
							</tr>
          </tbody>
        </table>
        <br>
        <table class="tableList" cellspacing="0" cellpadding="0" border="0">
          <thead>
            <tr>
              <th>姓名</th>
              <th>性别</th>
              <th>工号</th>
              <th>从属于</th>
              <th>描述</th>
              <th>入职日期</th>
              <th>操作</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="e" items="${list }">
					<tbody>
							<td><a href="../emp.do?action=zs&emp_id=${e.emp_id }"><img src="../css/userX0.gif" border="0">${e.emp_name }</a></td>
							<td>${e.emp_sex }</td>
							<td>${e.emp_code }</td>
							<td>${e.dept.depart_name }</td>
							<td>${e.emp_description }</td>
							<td>${e.emp_join }</td>
							<td>
							<a class="buttonPortal" title="修改" href="info/xgyg.jsp">&nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
							<a class="buttonPortal" title="删除" href="../../emp.do?action=del&emp_id=${e.emp_id }">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;</td>
					</tbody>
			</c:forEach>
          </tbody>
        </table>
        	<%-- <div style="padding: 20px 0px;">
					 <a class="button1 button1L" href="../../emp.do?action=cz&index=1" title="首页">&nbsp;<i class="fa fa-step-backward"></i></a><a 
					 class="button1 button1M" href="../../emp.do?action=cz&index=${page.index-1 eq 0 ? 1 : page.index-1}" title="上页">&nbsp;<i class="fa fa-backward"></i></a><span 
					 class="button1M">共有 ${page.count}条记录，第 ${page.index}/${page.total} 页</span><a 
					 class="button1 button1M" href="../../emp.do?action=cz&index=${page.index+1 gt page.total ? page.total : page.index+1}" title="下页">&nbsp;<i class="fa fa-forward"></i></a><a 
					 class="button1 button1R" href="../../emp.do?action=cz&index=${page.total}" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>		 
			 </div> --%>
        </td>
    </tr>
  </tbody>
</table>
</body>
</html>