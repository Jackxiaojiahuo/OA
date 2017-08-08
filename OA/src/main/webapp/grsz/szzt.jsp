<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/grsz/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设置状态 - 10oa</title>
  <link rel="shortcut icon" href="css/colloa.ico">
  <link rel="stylesheet" href="css/szzt_font-awesome.min.css">
  <link rel="stylesheet" href="css/szzt_view.css">
  <style>
.error{
	color:red;
}
</style>
<link href="../js/bootstarp/core/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../js/bootstarp/fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<script src="../js/bootstarp/jquery-3.1.0.js"></script>
<script src="../js/bootstarp/core/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/bootstarp/fileinput/js/fileinput.js" type="text/javascript"></script>
<script src="../js/bootstarp/fileinput/js/locales/zh.js" type="text/javascript"></script>
<script src="../js/jquery.validate.js"></script>
<script src="../js/messages_zh.js"></script>
<script src="../js/check.js"></script>
  <script>
/*   $(function(){
		$("#img").click(function(event){//点击显示头像图片div
	        event.stopPropagation();
			$("#picture").toggle();
		});
	    $(document).click(function(event) {//隐藏头像图片div
	        var eo = $(event.target);
	        if (eo.attr("id") != "img" )
	            $('#picture').hide();
	    });
	    $("#picture>img").click(function(){//选中头像替换头像
	    	$("#icon").attr("src",$(this).attr("src"));
	    });
	    
	}); 		
}); */
  
  
  
  	$(function(){
  		$("#icon").click(function(event){//显示本地图片div
			//$("#fileupload")[0].click();	
	        event.stopPropagation();
			$("#upd").toggle();
		});
	    $(document).click(function(event) {//隐藏本地图片div
	        var eo = $(event.target);
	        if (eo.attr("id") != "upb"&&eo.attr("id") != "file"&&eo.attr("id") != "upd" )
	            $('#upd').hide();
	    });
  	});
  	
  	//文件上传
  	    function doUpload() {  
  	    	var formData = new FormData();
  	    	formData.append("file",$("#file")[0].files[0]);
         $.ajax({  
              url: '../emp.do?action=upload' ,  
              type: 'POST',  
              dataType:'text',
              data: formData,  
              async: false,  
              cache: false,  
              contentType: false,  
              processData: false, 
              success: function (returndata) {  
                  //alert(returndata);
                  $("#icon").attr("src","../upload/"+returndata);
                  $("#emp_icon").val("upload/"+returndata);
                  //alert($(parent.parent.left.document).contents().find("#img_left").attr("border"));
                  $(parent.parent.left.document).contents().find("#img_left").attr("src","upload/"+returndata);//改变左边框架头像
              },  
              error: function (returndata) {  
                  alert(returndata);  
              }  
         });  
    }  
  	function checkdes(){
  		var des=$("#description").val();
  		des=des.replace(/</g, "&lt;");
  		des=des.replace(/>/g, "&gt;");
  		//alert(des);
  		$("#description+label").html("");
  		if((des!=""&&des!=null)&&(filterSqlStr(des))){
             $("#description+label").html("字符中包含了敏感字符"+sql_str()+",请重新输入！");  
             return false;  
  		}	
  		return true;
  	}
  	function checkphone(){
  		var phone=$("#phone").val();
  		$("#phone+label").html("");
  		if((phone!=""&&phone!=null)){
  			if((!/^0\d{2,3}-\d{5,9}|0\d{2,3}-\d{5,9}$/.test(phone))){
	  			$("#phone+label").html("电话格式不正确");
	  			return false;
  			}
  		}
  		return true;
  	}
  	function checkmobile(){
  		var mobile=$("#mobile").val();
  		$("#mobile+label").html("");
  		if((mobile!=""&&mobile!=null)){
  			if((!/^1[34578]\d{9}$/.test(mobile))){
	  			$("#mobile+label").html("手机格式不正确");
	  			return false;
  			}
  		}
  		return true;
  	}
  	function checkemail(){
  		var email=$("#email").val();
  		$("#email+label").html("");
  		if((email!=""&&email!=null)){
  			if((!/^[A-Za-zd]+([-_.][A-Za-zd]+)*@([A-Za-zd]+[-.])+[A-Za-zd]{2,5}$/.test(email))){
  				$("#email+label").html("邮箱格式不正确");
  				return false;
  			}
  		}
  		return true;
  	}
  	function checkqq(){
  		var qq=$("#qq").val();
  		$("#qq+label").html("");
  		if((qq!=""&&qq!=null)){
  			if((!/^\d{5,11}$/.test(qq))){
  				$("#qq+label").html("qq号码为5-11位");
  				return false;
  			}
  		}
  		return true;
  	}
  	function check(){
  		var flag=true;
  		if(!checkdes()) flag=false;
  		if(!checkphone()) flag=false;
  		if(!checkmobile()) flag=false;
  		if(!checkemail()) flag=false;
  		if(!checkqq()) flag=false;
  		return flag;
  	}
  	function sub(){
  		$("#myForm")[0].submit();
  	}
  </script>
</head>
<body id="colloaBody">
<form class="form-block" method="post" action="../emp.do?action=updateZT" id="myForm" onsubmit="return check()">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0"><tbody><tr valign="top"><td id="colloaForm">
<table style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
<colgroup>
<col width="170">
<col width="20">
<col>
</colgroup><tbody>
<tr valign="top">
<td>
	<div class="boxBorderCaption" style="padding: 0px 30px;width:330px;" align="center">个人头像</div>
	<div class="boxBorderContent"  style="width:330px;" align="center">
		<img src="../${s_emp.emp_icon }" id="icon" border="0">
	</div>
	<div class="boxBorderCaption" style="padding: 0px 30px;width:330px;" align="center">上传头像</div>
	<div style=" height: 710px; width:330px;" >
		<input type="file" id="file" name="file" class="file" >
		<p class="help-block">
			支持jgp、jpeg、png、gif格式,大小不超过2M<br>
			<span class="error">注:图片上传成功后需点击修改才能更换头像</span>
		</p>
	<div>
	<!-- <img class="fieldGetValueBySource" id="img" src="css/fieldSource.gif"> -->
	<%-- <img src="../${s_emp.emp_icon }" id="icon" border="0">
	<div id="upd" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 556px; top: 170px; left: 41px; display: none;">
	<!-- <iframe src="fieldFile.aspx?type=.jpg|.jpeg|.gif|.png&field=oImg" style="width:100%;height:100px;" frameborder="0"> -->
	<!-- <form id="uploadForm" enctype="multipart/form-data" >
		<input type="file" id="file" name="file"><br>
		<input type="button" value="提交" onclick="doUpload()">
	</form> -->
	</div> --%>
	<input type="hidden" name="emp_icon" id="emp_icon" value="${s_emp.emp_icon }">
	<input type="hidden" name="emp_id" value="${s_emp.emp_id }">
	</div></div>
</td>
<td>&nbsp;</td>
<td>
<div class="boxBorderCaption" style="padding: 0px 30px;width:700px;margin-left:150px;">修改个人信息</div>
<div class="boxBorderContent" style="margin-bottom: 2px; height: 500px; width:700px;padding: 20px 30px;margin-left:150px;">
<table class="tableForm" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
<colgroup>
<col width="80">
<col>
</colgroup><tbody>
	<tr>
		<td><label><b style="color: red;">*</b>个人状态</label></td>
		<td>
			<input  id="zg" ${s_emp.emp_status eq '在岗'  ? 'checked' : '' } value="在岗" name="status"  type="radio">
			<label for="zg"><img style="vertical-align: middle;" src="css/userXStatus0.png">在岗 </label>
			<input id="cc" ${s_emp.emp_status eq '出差'  ? 'checked' : '' } value="出差" name="status"  type="radio">
			<label for="cc"><img style="vertical-align: middle;" src="css/userXStatus10.png">出差 </label>
			<input id="lg" ${s_emp.emp_status eq '离岗'  ? 'checked' : '' } value="离岗" name="status"  type="radio">
			<label for="lg"><img style="vertical-align: middle;" src="css/userXStatus20.png">离岗</label>
		</td>
	</tr>
	<tr>
		<td colspan="2"><label>简短说明</label><input class="form-control" id="description" name="description" onblur="checkdes()"  value="${s_emp.emp_description }"><label class="error" ></label></td>
	</tr>
	<tr>
		<td colspan="2"><label>固定电话</label><input id="phone" name="phone" onblur="checkphone()" class="form-control" value="${s_emp.emp_phone }"><label class="error" ></label></td>
	</tr>
	<tr>
		<td colspan="2"><label>移动电话</label><input id="mobile" name="mobile" onblur="checkmobile()" class="form-control" value="${s_emp.emp_mobile }"><label class="error" ></label></td>
	</tr>
	<tr>
		<td colspan="2"><label>电子消息</label><input id="email" name="email" onblur="checkemail()" class="form-control" value="${s_emp.emp_email }"><label class="error" ></label></td>
	</tr>
	<tr>
		<td colspan="2"><label>即时通信(QQ)</label><input value="${s_emp.emp_qq }" onblur="checkqq()" id="qq" name="qq" class="form-control"><label class="error" ></label></td>
	</tr>
</tbody>
</table>
</div>
	<div id="_vWorkflowActionsShow" align="center">
		<input type="button"  onclick="sub()" class="btn btn-primary" value="修改">
		<input type="button" onclick="location='../emp.do?action=showInfo&emp_id=${s_emp.emp_id }'" class="btn btn-primary" value="取消">
	</div>
</td></tr>

</tbody></table>
<br></td></tr></tbody></table>
</form>
<!-- <div id="picture" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 350px; top: 172px; left: 40px; display: none;">
<img id="0" style="cursor:pointer;" src="../upload/h1.png">
<img id="0" style="cursor:pointer;" src="../upload/h2.png">
<img id="0" style="cursor:pointer;" src="../upload/h3.png">
<img id="0" style="cursor:pointer;" src="../upload/h4.png">
<img id="0" style="cursor:pointer;" src="../upload/h5.png">
<img id="0" style="cursor:pointer;" src="../upload/h6.png">
<img id="0" style="cursor:pointer;" src="../upload/h7.png">
<img id="0" style="cursor:pointer;" src="../upload/h8.png">
<img id="0" style="cursor:pointer;" src="../upload/h9.png">
<img id="0" style="cursor:pointer;" src="../upload/h10.png">
<img id="0" style="cursor:pointer;" src="../upload/h11.png">
<img id="0" style="cursor:pointer;" src="../upload/h12.png">
<img id="0" style="cursor:pointer;" src="../upload/h13.png">
<img id="0" style="cursor:pointer;" src="../upload/h14.png">
<img id="0" style="cursor:pointer;" src="../upload/h15.png">
<img id="0" style="cursor:pointer;" src="../upload/h16.png">
<img id="0" style="cursor:pointer;" src="../upload/h17.png">
<img id="0" style="cursor:pointer;" src="../upload/h18.png">
<img id="0" style="cursor:pointer;" src="../upload/h19.png">
<img id="0" style="cursor:pointer;" src="../upload/h20.png">
<img id="0" style="cursor:pointer;" src="../upload/h21.png">
<img id="0" style="cursor:pointer;" src="../upload/h22.png">
<img id="0" style="cursor:pointer;" src="../upload/h23.png">
<img id="0" style="cursor:pointer;" src="../upload/h24.png">
<img id="0" style="cursor:pointer;" src="../upload/h25.png">
<img id="0" style="cursor:pointer;" src="../upload/h26.png">
<img id="0" style="cursor:pointer;" src="../upload/h27.png">
<img id="0" style="cursor:pointer;" src="../upload/h28.png">
<img id="0" style="cursor:pointer;" src="../upload/h29.png">
<img id="0" style="cursor:pointer;" src="../upload/h30.png">
<img id="0" style="cursor:pointer;" src="../upload/h31.png">
<img id="0" style="cursor:pointer;" src="../upload/h32.png">
</div> -->
</body>
<script>
$('#file').fileinput({
	 "language": "zh",
	 "showUpload":true,
	 "showPreview":true,
	 "allowedFileExtensions" : ['jpg', 'png','gif'],
	 "maxFileSize": 2000,
	 "showAjaxErrorDetails":false,
	 "uploadUrl":"../param.do?action=upload"
	 }).on('fileuploaded', function(event, data, previewId, index) {
       //alert(' file = ' + data.response.fileName);
       var returndata=data.response.fileName;
       $("#icon").attr("src","../upload/"+returndata);
       $("#emp_icon").val("upload/"+returndata);
       //$(parent.parent.left.document).contents().find("#img_left").attr("src","upload/"+returndata);//改变左边框架头像
   	 });
</script>
</html>