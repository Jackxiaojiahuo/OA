<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/sysManager/";
%>	
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/view.css">
<link href="../js/bootstarp/core/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../js/bootstarp/dialog/css/bootstrap-dialog.css"
	type="text/css" rel="stylesheet" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="../js/bootstarp/dialog/js/bootstrap-dialog.js"
	type="text/javascript"></script>
	<style>
.error {
	color: red;
}
.boxBorder { min-height: 120px; border: 1px solid rgb(221, 221, 221); border-radius: 5px; margin-bottom: 20px; }
</style>
<script>
//过滤一些敏感字符函数   
	function filterSqlStr(value){  
	    var sqlStr=["and","delete","or","exec","insert","select","union","update","count","*","'","join"]; 
	    var flag=false;  
	    for(var i=0;i<sqlStr.length;i++){  
	        if(value.toLowerCase().indexOf(sqlStr[i])!=-1){  
	            flag=true;  
	            break;  
	        }  
	    }  
	    return flag;  
	} 
	function sql_str(){  
	    var str="and,delete,or,exec,insert,select,union,update,count,*,',join,>,<";  
	    return str;  
	}  
	function ts(id){//获取焦点清空提示
		$("#"+id+"+label").html("");
	}
	function cn(value){
		$.ajax({
			  type: 'POST',
			  url: "../param.do?action=checkDname",
			  data: {"name":value},
			  success: function(data){
					$("#depart_name+label").html(data);
			  },
			  dataType: "text"
			});
	}
	function checkdepart_name() {
		var des = $("#depart_name").val();
		des = des.replace(/</g, "&lt;");
		des = des.replace(/>/g, "&gt;");
		if (filterSqlStr(des)) {
			$("#depart_name+label").html("字符中包含了敏感字符" + sql_str() + ",请重新输入！");
			return false;
		}
		return true;
	}
	function checkPid(){
		var pid=$("#parent").val();
		if(pid==0){
			$("#parent+label").html("请选择上级部门");
			return false;
		}
		return true;
	}
	function checkdepart_des() {
		var des = $("#depart_description").val();
		des = des.replace(/</g, "&lt;");
		des = des.replace(/>/g, "&gt;");
		$("#depart_description+label").html("");
		if (filterSqlStr(des)) {
			$("#depart_description+label").html(
					"字符中包含了敏感字符" + sql_str() + ",请重新输入！");
			return false;
		}
		return true;
	}
	function check(){
		var flag=true;
  		if(!checkdepart_name()) flag=false;
  		if(!checkPid()) flag=false;
  		if(!checkdepart_des()) flag=false;
  		return flag;
	}
</script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm">
      <div class="textBig"><h2><img style="cursor: pointer;" src="css/menu.png">&nbsp;修改组织机构</h2></div>
						<br>
      <div class="boxBorder" style="padding: 30px;">
					  <form class="form-block" id="myForm" method="post"
								action="../depart.do?action=editDepart" onsubmit="return check()">
    <div class="form-group">
									<label><b style="color: red;">*</b>名称</label> <input 
										readonly="readonly" placeholder="请输入部门名称" id="depart_name" name="depart_name"
										autocomplete="off" class="form-control" value="${depart.depart_name }"><label class="error"></label>
								</div>
        <div class="form-group">
          <!-- Select Basic -->
          <label class="control-label"><b style="color: red;">*</b>从属于</label>
            <select class="form-control" id="parent" name="depart_pid" onfocus="ts(this.id)">
             <option value="0">===请选择上级部门===</option>
				<c:forEach var="departs" items="${list }">
					<option ${depart.depart_pid eq departs.depart_id ? "selected=true" : "" } value="${departs.depart_id }">${departs.depart_name }</option>
				</c:forEach>
            </select>
			<label class="error"></label>
        </div>
<input  name="depart_id" type="hidden" value="${depart.depart_id }">
    <div class="form-group">
          <!-- Textarea -->
          <label class="control-label">描述</label>
                  <textarea name="depart_description" onfocus="ts(this.id)" id="depart_description" rows="8"    class="form-control">${depart.depart_description }</textarea>
        </div>
    <div class="control-group" align="center">
          <!-- Button -->
            <button class="btn btn-primary" >修改</button>&nbsp;&nbsp;
             <input type="button" class="btn btn-primary" onclick="location='../depart.do?action=findAllDepart_list'" value="取消">
        </div>
  </form>
				</div>
      </td>
    </tr>
  </tbody>
</table>
</body>
</html>