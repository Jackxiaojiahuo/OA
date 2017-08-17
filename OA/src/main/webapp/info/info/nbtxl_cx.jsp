<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
  <title>查找 - 10oa</title>
  <link rel="shortcut icon" href="css/colloa.ico">
  <link rel="stylesheet" href="../css/font-awesome.min.css">
  <link rel="stylesheet" href="css/ggbl_cx.css">
<link rel="stylesheet" href="../../zTreeStyle/zTreeStyle.css" type="text/css">
<script src="../../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../js/jquery.ztree.core.js"></script>
<script>
var setting = {		
		data: {
			simpleData: {
				enable: true
			}
		},
		view:{
			expandSpeed: ""
		}
	};
	//分页跳转查询员工信息
	function toPage(id){
		var depart_id=$("#depart_id").val();//获取隐藏域的部门编号,条件查询
		var like=$("#like").val();//获取模糊查询条件
		if(like!=null &&like!=""){
			if($("#ename")[0].checked==true){//如果选中姓名
				$("#emp_name").val(like);
			}else{//如果选中工号
				$("#emp_code").val(like);
			}
		}
		var ename=$("#emp_name").val();
		var ecode=$("#emp_code").val();
		if(like!=null &&like!=""){
			location="../../nbtxl.do?action=ss&index="+id+"&depart_id="+depart_id+"&emp_name="+ename+"&emp_code="+ecode;
		}
	}
	$(function(){
		var ename=$("#e_name").val();//获取姓名回显数据
		var ecode=$("#e_code").val();//获取工号回显数据
		if(ecode!=""){//如果工号不为空
			$("#ecode")[0].checked=true;//工号单选按钮选中
			$("#ename")[0].checked=false;
			$("#like").val(ecode);//显示工号回显数据
		}else{//如果工号为空
			$("#ename")[0].checked=true;//姓名单选按钮选中姓名
			$("#ecode")[0].checked=false;
			$("#like").val(ename);//显示姓名回显数据
		} 
	});
	//模糊查询
	function findEmployeeByLike(){
		var like=$("input[name=like]").val();//获取模糊查询条件
		if(like!=null &&like!=""){
			if($("#ename")[0].checked==true){//如果选中姓名
				$("#emp_name").val(like);
			}else{//如果选中工号
				$("#emp_code").val(like);
			}
			
			document.forms[0].submit();//提交表单
		}
	}
</script>
</head>
<body id="colloaBody">
<form id="myForm" method="post" action="../../nbtxl.do?action=ss&index=1">
	<input type="hidden" name="depart_id" id="depart_id">
	<input type="hidden" name="emp_name" id="emp_name">
	<input type="hidden" name="emp_code" id="emp_code">
</form>
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><table cellspacing="0" cellpadding="0" border="0">
          <tbody>
            <tr>
              <td><span class="textBig">查找公告</span>
                 <input checked="checked" id="ename" name="field"  type="radio"> <label for="ename">按姓名</label>
	             <input name="field"   type="radio" id="ecode"> <label for="ecode">按工号</label> 
	             <span class="textBig" style="color:red;display: none;" id="error" > *工号格式不对 </span><%-- 回显数据${param.emp_name } --%><br>
	             <input class="textBig" style="width: 550px;" name="like" id="like" maxlength="100"><!-- 样式error -->
	             <a href="javascript:findEmployeeByLike()"><img src="css/search.png" style="vertical-align: top; cursor: pointer;"></a></td>
              <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><a href="javascript:location.reload()" class="button1 button1L" title="刷新"><i class="fa fa-bolt fa-lg"></i></a><span id="oWorkflowList1"></span><a href="../../nbtxl.do?action=ss" class="button1 button1R" title="关闭"><i class="fa fa-times-circle fa-lg"></i></a></td>
				<!-- 接收回显数据 -->
					<input type="hidden" id="e_name" value="${emp_name }">
					<input type="hidden" id="e_code" value="${emp_code }">
            </tr>
          </tbody>
        </table>
        <br>
        <table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0" >
                <colgroup>
                <col width="49%">
                <col width="2%">
                <col>
                </colgroup>
                <tbody>
                	<c:forEach var="e" items="${list }" varStatus="state"> 
                		 <c:if test="${(state.index+1)%2!=0 }">
                		  <tr valign="top">
			                    <td ><div class="boxBorder" style="border:1px solid #E7E2E2; padding: 10px" >
			                        <div style="display: inline-block; vertical-align: top; margin: 10px 0px 10px 10px;"><c:choose><c:when test="${e.emp_icon!=null }"><img src="../../${e.emp_icon }" border="0"></c:when><c:otherwise><img src="../../upload/01.png" border="0"></c:otherwise></c:choose></div>
			                        <div style="display: inline-block; vertical-align: top; margin: 10px;"><img src="css/userXStatus0.png"><span class="textBig">${e.emp_name }</span><br>
								                          手机号 ：${e.emp_mobile } <br>
								                          <br>
								                          从属于：${e.dept.depart_name }<br>
								                          固定电话：${e.emp_phone }<br>
								                           个人邮箱：${e.emp_email }<br>
								                         即时通信(QQ)：${e.emp_qq }<br>
			                      </div></td>
			                      
                    			<td></td>
                    		</c:if>	
                    			<c:if test="${(state.index+1)%2==0 }">
                    			 <td ><div class="boxBorder" style="border:1px solid #E7E2E2; padding: 10px" >
                        <div style="display: inline-block; vertical-align: top; margin: 10px 0px 10px 10px;"><c:choose><c:when test="${e.emp_icon!=null }"><img src="../../${e.emp_icon }" border="0"></c:when><c:otherwise><img src="../../upload/01.png" border="0"></c:otherwise></c:choose></div>
                        <div style="display: inline-block; vertical-align: top; margin: 10px;"><img src="css/userXStatus0.png"><span class="textBig">${e.emp_name }</span><br>
                           			    手机号 ：${e.emp_mobile } <br>
								                          <br>
								                          从属于：${e.dept.depart_name }<br>
								                          固定电话：${e.emp_phone }<br>
								                           个人邮箱：${e.emp_email }<br>
								                         即时通信(QQ)：${e.emp_qq }<br>
                      </div></td>
                      </tr>
                    			</c:if>
                    	
                	</c:forEach>
                </tbody>
              </table>
              	<div style="padding: 20px 0px;">
                	<a href="javascript:toPage(1)" class="button1 button1L" title="首页">&nbsp;<i
									class="fa fa-step-backward"></i></a><a href="javascript:toPage(${page.index eq 1 ? page.index : page.index-1 })" class="button1 button1M"
									title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
									class="button1M">共有 
									<c:choose>
										<c:when test="${page!=null }">${page.count}条记录，第 ${page.index}/${page.total==0?1:page.total} 页</c:when>
										<c:otherwise>0条记录，第 1/1 页</c:otherwise>
									</c:choose></span><a
									 href="javascript:toPage(${page.total gt page.index ? page.index+1 : page.index })" class="button1 button1M" title="下页">&nbsp;<i
									class="fa fa-forward"></i></a><a class="button1 button1R"
									 href="javascript:toPage(${page.total })" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
                </div>
        </td>
    </tr>
  </tbody>
</table>
</body>
</html>
