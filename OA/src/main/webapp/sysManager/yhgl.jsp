<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/yhgl_font-awesome.min.css">
<link rel="stylesheet" href="css/yhgl_view.css">
<link rel="stylesheet" href="../zTreeStyle/zTreeStyle.css" type="text/css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery.ztree.core.js"></script>
<script src="js/nav.js"></script>
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
	$(function(){
		var content="[";
		var id="";
		$.post("../depart.do?action=findAllDpeart",
				function(data){
					$.each(data,function(index,item){
						content+="{";
							$.each(data[index],function(k,v){
								switch(k){
									case "depart_id":
										id=v;
										k="id"
										content+=k+":"+v+",";
										break;
									case "depart_name":
										k="name";
										v='"'+v+'"';
										content+=k+":"+v+",";
										break;
									case "depart_pid":
										k="pId";
										content+=k+":"+v+",";
										break;
									case "childrenList":
										content+='click:"javascript:findEmployeeByDepartId('+id+')"';
										break;
								}
							});
							content+="},";
					});
				/* 	var zNodes =[
					 			{ id:1, pId:0, name:"zTree Home", url:"http://www.treejs.cn/", target:"_blank"},
					 			{ id:2, pId:1, name:"zTree in Google", url:"http://code.google.com/p/jquerytree/", target:"_blank"},
					 			{ id:3, pId:1, name:"zTree in Iteye", url:"http://ztreeapi.iteye.com/", target:"_blank"},
					 			{ id:4, pId:1, name:"Nothing...", url:"", target:"_blank", click:"alert('我是不会跳转的...');"}
					 		]; */
					content=content.substring(0,content.lastIndexOf(","))+"]";
					content = eval('(' + content + ')');//将字符串转换成json数据
					//alert(content);
					//alert(zNodes);
					$.fn.zTree.init($("#tree"), setting, content).expandAll(true);
				},
				"json");
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
	//点击部门树查询员工信息
	function findEmployeeByDepartId(depart_id){
		$("#depart_id").val(depart_id);//将部门编号赋值给隐藏域
		if(depart_id==null){
			location="../emp.do?action=findEmpRight&index=1";
		}else{
			location="../emp.do?action=findEmpRight&index=1&depart_id="+depart_id;
		}
	}
	//分页跳转查询员工信息
	function toPage(id){
		var depart_id=$("#depart_id").val();//获取隐藏域的部门编号,条件查询
		var like=$("#like").val();//获取模糊查询条件
		location="../emp.do?action=findEmpRight&index="+id+"&depart_id="+depart_id+"&like="+like;
	}
	//模糊查询
	function findEmployeeByLike(){
		var depart_id=$("#depart_id").val();//获取隐藏域的部门编号,条件查询
		var like=$("#like").val();//获取模糊查询条件
		if($("#ename")[0].checked==true){//如果选中姓名
			$("#emp_name").val(like);
		}else{//如果选中工号
			$("#emp_code").val(like);
		}
		document.forms[0].submit();//提交表单
	}
	//初始化密码 ajax提交请求并返回结果
	function initPwd(obj){
		var emp_id=$(obj).attr("emp_id");
		var emp_code=$(obj).attr("emp_code");
		$.ajax({
			   type: "POST",
			   url: "../emp.do?action=initPwd&op=init",
			   data: "emp_id="+emp_id+"&emp_code="+emp_code,
			   success: function(msg){
			     alert( msg );
			   }
			});
	}
</script>
</head>
<body>
<form id="myForm" method="post" action="../emp.do?action=findEmpRight&index=1">
	<input type="hidden" name="depart_id" id="depart_id">
	<input type="hidden" name="emp_name" id="emp_name">
	<input type="hidden" name="emp_code" id="emp_code">
</form>
<!-- 接收回显数据 -->
<input type="hidden" id="e_name" value="${emp_name }">
<input type="hidden" id="e_code" value="${emp_code }">
<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
    <tr valign="top">
	<td id="colloaContent">
<table border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td><h1><img style="cursor: pointer;" src="css/menu.png"> 用户管理</h1></td>
	         	<td style="padding-left:60px;">
	         	<span class="textBig">查找用户</span>
	             <input checked="checked" id="ename" name="field"  type="radio"> <label for="ename">按姓名</label>
	             <input name="field"   type="radio" id="ecode"> <label for="ecode">按工号</label> 
	             <span class="textBig" style="color:red;display: none;" id="error" > *工号格式不对 </span><%-- 回显数据${param.emp_name } --%><br>
	             <input class="textBig" style="width: 550px;" id="like" maxlength="100"><!-- 样式error -->
	             <a href="javascript:findEmployeeByLike()"><img src="css/search.png" style="vertical-align: top; cursor: pointer;"></a>
              </td>
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
                      <td style="padding-left: 10px;"><a href="javascript:findEmployeeByDepartId(null)">(查询所有)</a><ul id="tree" class="ztree"></ul></td>
                    </tr>
                  </tbody>
                </table></td>
              <td></td>
              <td><table class="tableList" border="0" cellpadding="0" cellspacing="0">
                  <thead>
                    <tr>
                      <th>姓名</th>
                      <th>工号</th>
                      <th>部门</th>
                      <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="emp" items="${empList }">
	                    <tr>
	                      <td><img src="css/userX0.gif" border="0"> ${emp.emp_name }</td>
	                      <td>${emp.emp_code }</td>
	                       <td>${emp.dept.depart_name }</td>
	                      <td>
	                      <a href="../emp.do?action=findAllRoleForEmp&emp_id=${emp.emp_id }"  class="buttonPortal" title="岗位或角色">&nbsp;<i class="fa fa-user-md fa-lg"></i></a>
	                      <a href="javascript:void(0);" onclick="initPwd(this);" emp_id="${emp.emp_id }" emp_code="${emp.emp_code }"  class="buttonPortal" title="初始化口令">&nbsp;<i class="fa fa-key fa-lg"></i></a>&nbsp;</td>
	                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
                <div style="padding: 20px 0px;">
                	<a href="javascript:toPage(1)" class="button1 button1L" title="首页">&nbsp;<i
									class="fa fa-step-backward"></i></a><a href="javascript:toPage(${page.index eq 1 ? page.index : page.index-1 })" class="button1 button1M"
									title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
									class="button1M">共有 ${page.count }条记录，第 ${page.index}/${page.total } 页</span><a
									 href="javascript:toPage(${page.total gt page.index ? page.index+1 : page.index })" class="button1 button1M" title="下页">&nbsp;<i
									class="fa fa-forward"></i></a><a class="button1 button1R"
									 href="javascript:toPage(${page.total })" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
                </div>
                </td>
            </tr>
          </tbody>
        </table>
</tr></tbody></table>
</body>
</html>