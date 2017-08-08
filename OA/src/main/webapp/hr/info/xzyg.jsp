<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/xzyg.min.css">
<link rel="stylesheet" href="../css/xzyg.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css"  />
 <script src="jquery-1.8.2.min.js" type="text/javascript"></script>
 <script language="JavaScript" src="jquery-ui.min.js"></script>
   <script>
  function checkemail(){
	  var email=$("input[name=emp_email]").val();
	  var emailid=$("#emailid");
		if(email==""){//检测Email是否为空
			emailid.show();
			return false;
			}
		var reg=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;	
	    if(reg.test(email)==false){
	    	emailid.show().html("Email格式不正确，例如web@sohu.com");
			return false;
		  }
	    emailid.hide();
	    return true;
  }
  function checkname(){
	  var name=$("input[name=emp_name]").val();
	  var nameid=$("#nameid");
		if(name==""){//检测姓名是否为空
			nameid.show();
			return false;
			}
		nameid.hide();
		return true;
  }
  function checkMobile(){
	  var mobile=$("input[name=emp_mobile]").val();
	  var mobileid=$("#mobileid");
		if(mobile==""){//检测手机号码是否为空
			mobileid.show();
			return false;
			}
		var regMobile=/^1\d{10}$/;
		if(regMobile.test(mobile)==false){
			mobileid.show().html("手机号码不正确，请重新输入");
			return false;
			}
		mobileid.hide();
			return true;
		}
  function checkPhone(){
	  var phone=$("input[name=emp_phone]").val();
	  var phoneid=$("#phoneid");
	  if(phone==""){
		  phoneid.show();
		  return false;
	  }
	  var regphone=/^0\d{2,3}-?\d{7,8}$/;
	  if(regphone.test(phone)==false){
		  phoneid.show().html("固定电话格式不正确，请重新输入");
		  return false;
	  }
	  phoneid.hide();
	  return true;
  }
  function checkQQ(){
	  var qq=$("input[name=emp_qq]").val();
	  var qqid=$("#qqid");
		if(qq==""){//检测手机号码是否为空
			qqid.show();
			return false;
			}
		var regqq=/^\d{5,10}$/;  
		if(regqq.test(qq)==false){
			qqid.show().html("手机号码不正确，请重新输入");
			return false;
			}
		qqid.hide();
			return true;
		}
  function checkbirth(){
	  var birth=$("input[name='emp_birth']").val();
	  var birthid=$("#birthid");
		if(birth==""){
			birthid.show();
			return false;
		}
		return true;
}
function checkjoin(){
	  var join=$("input[name='emp_join']").val();
	  var joinid=$("#joinid");
		if(join==""){
			joinid.show();
			return false;
		}
		return true;
}
  function check(){
	  if(checkname()&checkemail()&checkMobile()&checkPhone()&checkQQ()&checkbirth()&checkjoin()){
			document.forms[0].submit();
	  	}
}
</script>
<script type="text/javascript">
$(document).ready(function() {
	$('#code').blur(
		function () { 
			var code=$("input[name=emp_code]").val();
			//alert(code);
			$.ajax({
				   type: "POST",
				   url: "../../emp.do?action=gh",
				   data: "emp_code="+code,
				   success: function(msg){
					   if(msg==0){
						   $("#codeid").html("工号可以使用").css("color","green").show();
					   }else{
						   $("#codeid").html("工号以存在").css("color","red").show();
					   }
				   }
				}); 
		} 
	);
});
</script>
 <script>
     jQuery(function($){  
        $.datepicker.regional['zh-CN'] = {  
            closeText: '关闭',  
            prevText: '<上月',  
            nextText: '下月>',  
            currentText: '今天',  
            monthNames: ['一月','二月','三月','四月','五月','六月',  
            '七月','八月','九月','十月','十一月','十二月'],  
            monthNamesShort: ['一','二','三','四','五','六',  
            '七','八','九','十','十一','十二'],  
            dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            dayNamesMin: ['日','一','二','三','四','五','六'],  
            weekHeader: '周',  
            dateFormat: 'yy-mm-dd',  
            firstDay: 1,  
            isRTL: false,  
            showMonthAfterYear: true,  
            yearSuffix: '年'};  
        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);  
	 });  
  $(function(){  
            $("#csDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            //defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            	$("#birthid").hide();
            }  
            }); 
	  }); 
	 $(function(){  
            $("#rzDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            //defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            	$("#joinid").hide();
            }  
            });  
        });
	 	 $(function(){  
            $("#zzDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            //defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            }  
            });  
        }); 
	 	 $(function(){  
            $("#lzDate").datepicker({//添加日期选择功能  
            numberOfMonths:1,//显示几个月  
            showButtonPanel:true,//是否显示按钮面板  
            dateFormat: 'yy-mm-dd',//日期格式  
            clearText:"清除",//清除日期的按钮名称  
            closeText:"关闭",//关闭选择框的按钮名称  
            yearSuffix: '年', //年的后缀  
            showMonthAfterYear:true,//是否把月放在年的后面  
            //defaultDate:'2016-12-31',//默认日期  
            minDate:'1900-01-01 00:00:00',//最小日期  
            maxDate:'2099-12-31 23:59:59',//最大日期  
            //monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
            //dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
            //dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
            //dayNamesMin: ['日','一','二','三','四','五','六'],  
            onSelect: function(selectedDate) {//选择日期后执行的操作 
				//alert(selectedDate);
            }  
            });  
        }); 
 </script>
</head>
<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
  <tbody>
    <tr valign="top">
      <td id="colloaForm"><form action="../../emp.do?action=add" method="post" >
          <table class="tableForm" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" align="center" border="0">
            <colgroup>
            <col width="100">
            <col>
            <col width="100">
            <col>
            </colgroup>
            <tbody>
               <tr>
                <td class="fieldLable">从属于</td>
                <td class="select_box">
                <select name="depart_id">
                			<option value="0">请选择</option>
 							<c:forEach items="${bm }" var="bm">
 							<option value="${bm.depart_id }">${bm.depart_name }</option>
 							</c:forEach>
                			</select></td>
				<td class="fieldLable">个人状态</td>
				<td><input id="dbf.jobStatus" checked="checked" value="在岗" name="emp_status" autocomplete="off" type="radio">
                  在岗
                  <input id="dbf.jobStatus" value="出差" name="emp_status" autocomplete="off" type="radio">
                  出差
                  <input id="dbf.jobStatus" value="离岗" name="emp_status" autocomplete="off" type="radio">
                  离岗</td>
              </tr>
              <tr>
                <td class="fieldLable"><b style="color: red;">*</b>姓名</td>
                <td id="dbf.name" dbf.type="required,unique(userX)"><input id="e.dbf.name" class="fieldEditable" name="emp_name" onblur="checkname()"><span id="nameid" style="color:red; display: none;" >不能为空</span></td>
                <td class="fieldLable">工号</td>
                <td id="dbf.jobSid"><input id="code" class="fieldEditable" name="emp_code"><span id="codeid" style="color:red; display: none;" ></span></td>
              </tr>
              <tr>
                <td class="fieldLable">性别</td>
                <td><input id="dbf.gender" checked="checked" value="男" name="emp_sex" autocomplete="off" type="radio">
                  男
                  <input id="dbf.gender" value="女" name="emp_sex" autocomplete="off" type="radio">
                  女</td>
                <td class="fieldLable">在职状态</td>
                <td><input id="dbf.jobStatus" checked="checked" value="在职" name="emp_state" autocomplete="off" type="radio">
                  在职
                  <input id="dbf.jobStatus" value="试用" name="emp_state" autocomplete="off" type="radio">
                  试用
                  <input id="dbf.jobStatus" value="退休" name="emp_state" autocomplete="off" type="radio">
                  退休	
                  <input id="dbf.jobStatus" value="离职" name="emp_state" autocomplete="off" type="radio">
                  离职</td>
              </tr>
              <tr>
                <td class="fieldLable">移动电话</td>
                <td id="dbf.mobile"><input id="e.dbf.mobile" class="fieldEditable" name="emp_mobile" onblur="checkMobile()"><span id="mobileid" style="color:red; display: none;">不能为空</span></td>
				<td class="fieldLable">固定电话</td>
                <td><input id="e.dbf.mobile" class="fieldEditable" name="emp_phone" onblur="checkPhone()"><span id="phoneid" style="color:red; display: none;">不能为空</span></td>
			</tr>                
              	<tr>  
                <td class="fieldLable">电子邮件</td>
                <td id="dbf.email"><input id="emp_email" class="fieldEditable"  name="emp_email" onblur="checkemail()"><span id="emailid" style="color:red; display: none;">不能为空</span></td>
              	<td class="fieldLable">即时通信(QQ)</td>
                <td id="dbf.mobile"><input id="e.dbf.mobile" class="fieldEditable" name="emp_qq" onblur="checkQQ()"><span id="qqid" style="color:red; display: none;">不能为空</span></td>
              </tr>
              <tr>
                <td class="fieldLable">出生日期</td>
                <td id="dbf.birthday" dbf.source="date,editable" dbf.type="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                  <div class="fieldEditable" contenteditable="true"><input type="text" id="csDate" name="emp_birth" onblur="checkbirth()" placeholder="请输入出生日期" /><span id="birthid" style="color:red; display: none;">不能为空</span></div></td>
                <td class="fieldLable">入职日期</td>
                <td id="dbf.jobJoinTime" dbf.source="date,editable" dbf.type="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                  <div class="fieldEditable" contenteditable="true"><input type="text" id="rzDate" name="emp_join" onblur="checkjoin()" placeholder="请输入入职日期" /><span id="joinid" style="color:red; display: none;">不能为空</span></div></td>
              </tr>
              <tr>
                <td class="fieldLable">转正日期</td>
                <td id="dbf.jobStartTime" dbf.source="date,editable" dbf.type="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                  <div class="fieldEditable" contenteditable="true"><input type="text" id="zzDate" name="emp_formal" placeholder="请输入转正日期" /></div></td>
                  <td class="fieldLable">离职日期</td>
                <td id="dbf.jobJoinTime" dbf.source="date,editable" dbf.type="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                  <div class="fieldEditable" contenteditable="true"><input type="text" id="lzDate" name="emp_leave" placeholder="请输入离职日期" /></div></td>
              </tr>
              <tr>
                <td class="fieldLable">附加描述</td>
                <td id="dbf.description" colspan="3"><input id="e.dbf.description" class="fieldEditable" name="emp_description"></td>
              	<td class="fieldLable"><a class="button"  name="submit" onclick="check()">确定</a><a class="button" href="javascript:history.back()">取消</a>
            </td>
              </tr>
             </tbody>
             </table>
             </form>
  </tbody>
</table>
</body>
</html>