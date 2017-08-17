<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/xxzx_view.css">
<link rel="stylesheet" href="../zTreeStyle/zTreeStyle.css" type="text/css">
<script src="../js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="../js/open.js"></script>

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
			$.post("../param.do?action=findAllDpeart",
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
		});
		function findEmployeeByDepartId(depart_id){
			$("#depart_id").val(depart_id);//将部门编号赋值给隐藏域
			if(depart_id==null){
				location="../nbtxl.do?action=ss&index=1";
			}else{
				location="../nbtxl.do?action=ss&index=1&depart_id="+depart_id;
			}
		} 
		//分页跳转查询员工信息
		function toPage(id){
			var depart_id=$("#depart_id").val();//获取隐藏域的部门编号,条件查询
			location="../nbtxl.do?action=ss&"+id+"&depart_id="+depart_id;
		}
  </script>
<title>Insert title here</title>
</head>
<body>

<table style="min-width: 120px; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="0">
<tbody>
  <tr valign="top">
  <input type="hidden" name="depart_id" id="depart_id">
    <td id="colloaContent"><table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><h1><img style="cursor: pointer;"src="css/menu.png"> 内部通讯录</h1></td>
            <td align="right"><script language="javaScript">/* Code removed by ScrapBook */</script><span id="oWorkflowList1"><a href="info/nbtxl_cx.jsp" class="button1 button1L">查找</a></span><a href="javascript:location.reload()" class="button1 button1R" title="刷新">&nbsp;<i class="fa fa-bolt fa-lg"></i></a><script language="javaScript">/* Code removed by ScrapBook */</script></td>
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
                  	
						<td style="padding: 10px;">
						<a onclick="findEmployeeByDepartId()"><span class="textBig">(查找用户)</span></a>
						<ul id="tree" class="ztree"></ul>
						</td>
					</tr>
                </tbody>
              </table>
              <div class="textGray" style="padding: 26px;"></div></td>
            <td></td>
            <td><table style="table-layout: fixed;" border="0" cellpadding="0" cellspacing="0">
                <colgroup>
                <col width="49%">
                <col width="2%">
                <col>
                </colgroup>
                <tbody>
                	<c:forEach var="e" items="${list }" varStatus="state"> 
                		 <c:if test="${(state.index+1)%2!=0 }">
                		  <tr valign="top" style="padding: 10px">
			                    <td><div class="boxBorder" style="border:1px solid #E7E2E2; padding: 10px" >
			                        <div style="display: inline-block; vertical-align: top; margin: 10px 0px 10px 10px;"><c:choose><c:when test="${e.emp_icon!=null }"><img src="../${e.emp_icon }" border="0"></c:when><c:otherwise><img src="../upload/01.png" border="0"></c:otherwise></c:choose></div>
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
                    			 <td><div class="boxBorder" style="border:1px solid #E7E2E2; padding: 10px">
                        <div style="display: inline-block; vertical-align: top; margin: 10px 0px 10px 10px;"><c:choose><c:when test="${e.emp_icon!=null }"><img src="../${e.emp_icon }" border="0"></c:when><c:otherwise><img src="../upload/01.png" border="0"></c:otherwise></c:choose></div>
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
              <script language="javaScript">/* Code removed by ScrapBook */</script>
               <div style="padding: 20px 0px;">
                	<a href="javascript:toPage(1)" class="button1 button1L" title="首页">&nbsp;<i
									class="fa fa-step-backward"></i></a><a href="javascript:toPage(${page.index eq 1 ? page.index : page.index-1 })" class="button1 button1M"
									title="上页">&nbsp;<i class="fa fa-backward"></i></a><span
									class="button1M">共有 ${page.count }条记录，第 ${page.index}/${page.total } 页</span><a
									 href="javascript:toPage(${page.total gt page.index ? page.index+1 : page.index })" class="button1 button1M" title="下页">&nbsp;<i
									class="fa fa-forward"></i></a><a class="button1 button1R"
									 href="javascript:toPage(${page.total })" title="尾页">&nbsp;<i class="fa fa-step-forward"></i></a>
                </div></td>
          </tr>
        </tbody>
      </table>
</body>
</html>