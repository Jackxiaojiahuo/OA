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
	$('#btn').click(function() {
		var s = $('input[name=field]:checked()').val();
		var c = $('input[name=con]').val();
		location.href='../../emp.do?action=cz&names='+s+'&count='+c+'';
	});
})
function sub(num){
	var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
	var c=$('input[name=con]').val();<!--记入输入的信息-->
	if(num==1){
		location.href='../../emp.do?action=cz&names='+s+'&count='+c+'&index=1';
	}else if(num==2){
		location.href='../../emp.do?action=cz&names='+s+'&count='+c+'&index=${page.index-1 eq 0 ? 1 : page.index-1}';
	}else if(num==3){
		location.href='../../emp.do?action=cz&names='+s+'&count='+c+'&index=${page.index+1 gt page.total ? page.total : page.index+1}';
	}else if(num==4){
		location.href='../../emp.do?action=cz&names='+s+'&count='+c+'&index=${page.total}';
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
              <td><span class="textBig">查找员工</span>
                <input checked="checked"<c:if test="${names=='emp_name' }">checked="checked"</c:if> name="field" value="emp_name" type="radio"> 按姓名 
				<input name="field" <c:if test="${names=='emp_code' }">checked="checked"</c:if> value="emp_code" type="radio"> 按工号
				<br>
                <input class="textBig" value="${count }" style="width: 550px;" id="words" maxlength="100" name="con">
                 <span class="textBig" id="to" style="display: none;"> ~ </span>
                 <input class="textBig" style="width: 270px; display: none;" id="words2" maxlength="100">
                <img id="btn" src="../css/search.png"style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><a class="button1 button1L" href="javascript:location.reload()"
									title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span
									id="oWorkflowList1"></span><a href="../../emp.do?action=Emplist&num=0"
									class="button1 button1R" title="关闭">&nbsp;<i
										class="fa fa-times-circle fa-lg"></i></a></td></tr>
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
							<td><a href="../../emp.do?action=zs&emp_id=${e.emp_id }"><img src="../css/userX0.gif" border="0">${e.emp_name }</a></td>
							<td>${e.emp_sex }</td>
							<td>${e.emp_code }</td>
							<td>${e.dept.depart_name }</td>
							<td>${e.emp_description }</td>
							<td>${e.emp_join }</td>
							<td>
							<a class="buttonPortal" title="修改" href="../../emp.do?action=zs&emp_id=${e.emp_id }&id=id">&nbsp;<i class="fa fa-eyedropper fa-lg"></i></a>
							<a class="buttonPortal" title="删除" href="../../emp.do?action=del&emp_id=${e.emp_id }">&nbsp;<i class="fa fa-remove fa-lg"></i></a>&nbsp;</td>
					</tbody>
			</c:forEach>
          </tbody>
        </table>
				<div style="padding: 20px 0px;">
							<a href="javascript:sub(1);" class="button1 button1L" title="首页">&nbsp;<i
								class="fa fa-step-backward"></i></a><a href="javascript:sub(2);" class="button1 button1M"
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
        </td>
    </tr>
  </tbody>
</table>
</body>
</html>