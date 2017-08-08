<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
			location.href='../../work.do?action=kqcz&op=cc&names='+s+'&count='+c+'';
		});
	})
	function sub(num){
		var s=$('input[name=field]:checked()').val();<!--是单选按钮是标题或发信人还是收件人-->
		var c=$('input[name=con]').val();<!--记入输入的信息-->
		if(num==1){
			location.href='../../work.do?action=kqcz&op=cc&names='+s+'&count='+c+'&index=1';
		}else if(num==2){
			location.href='../../work.do?action=kqcz&op=cc&names='+s+'&count='+c+'&index=${page.index-1 eq 0 ? 1 : page.index-1}';
		}else if(num==3){
			location.href='../../work.do?action=kqcz&op=cc&names='+s+'&count='+c+'&index=${page.index+1 gt page.total ? page.total : page.index+1}';
		}else if(num==4){
			location.href='../../work.do?action=kqcz&op=cc&names='+s+'&count='+c+'&index=${page.total}';
		}
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><span class="textBig">查找出差申请</span>
              <input checked="checked"<c:if test="${names=='tv_theme' }">checked="checked"</c:if> name="field" value="tv_theme" type="radio"> 按主题 
				<input name="field" <c:if test="${names=='tv_termini' }">checked="checked"</c:if> value="tv_termini" type="radio"> 按目的地
               <!--  <input checked="checked" name="field" value="tv_theme" type="radio">
                按主题
                <input checked="" name="field" value="tv_termini" type="radio">
                按目的地 -->
           <br>
                <input class="textBig"  value="${count }" style="width: 550px;" id="words" maxlength="100" name="con">
                 <span class="textBig" id="to" style="display: none;"> ~ </span>
                 <input class="textBig" style="width: 270px; display: none;" id="words2" maxlength="100">
                <img id="btn" src="../css/search.png"style="vertical-align: top; cursor: pointer;"></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a class="button1 button1L" title="刷新" href="javascript:location.reload()">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a class="button1 button1R" title="关闭" href="../../work.do?action=Wklist&num=0">&nbsp;<i class="fa fa-times-circle fa-lg"></i></a></td>
            </tr>
          </tbody>
        </table>
        <br>
        <table class="tableList" border="0" cellpadding="0" cellspacing="0">
          <thead>
            <tr>
              <th>主题</th>
              <th>申请人</th>
              <th>所属部门</th>
              <th>目的地</th>
              <th>时间段</th>
            </tr>
          </thead>
          <tbody>
              	<c:forEach var="t" items="${list }">
					<tbody>
							<td><a href="../../work.do?action=kqzs&tv_id=${t.tv_id }"><img src="../css/userX0.gif" border="0">${t.tv_theme }</a></td>
							<td>${t.em.emp_name }</td>
							<td>${t.dept.depart_name }</td>
							<td>${t.tv_termini }</td>
							<td>${t.tv_cdate }/${t.tv_ddate }</td>
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