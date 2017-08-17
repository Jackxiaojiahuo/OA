<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<!DOCTYPE html >
<html>

	<head>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="keywords" content="HTML,CSS,XML,JavaScript">
		<meta charset="utf-8" />
		<link rel="stylesheet" href="../css/xzyg.min.css">
		<link rel="stylesheet" href="../css/xzyg.css">
		<link type="text/css" rel="stylesheet" href="jquery-ui.css" />
		<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
		<script language="JavaScript" src="jquery-ui.min.js"></script>
		<style type="text/css">
			body {
				font: 14px/28px "微软雅黑";
			}
			
			.tableForm *:focus {
				outline: none;
			}
			.tableForm tr {
				width: 650px;
				margin: 0 auto;
			}
			
			.tableForm tr td {
				border-bottom: 1px solid #dfdfdf;
				list-style: none;
				padding: 12px;
				
			}
			.tableForm tr td .fieldLable{
			width: 120px;
				display: inline-block;
				float: left;
		    }
			.tableForm tr td input[type=text] {
				width: 220px;
				height: 25px;
				border: 1px solid #aaa;
				padding: 3px 8px;
				border-radius: 5px;
			}
			
			.tableForm tr td input:focus {
				border-color: #c00;
			}
			
			.tableForm tr td input[type=text] {
				transition: padding .25s;
				-o-transition: padding .25s;
				-moz-transition: padding .25s;
				-webkit-transition: padding .25s;
			}
			
			.tableForm tr td input:focus {
				padding-right: 70px;
			}
			
			.tableForm tr td select {
				width: 220px;
				height: 25px;
				border: 1px solid #aaa;
				padding: 3px 8px;
				border-radius: 5px;
			}
			
			.tableForm tr td select:focus {
				border-color: #c00;
			}
			
			.tableForm tr td select {
				transition: padding .25s;
				-o-transition: padding .25s;
				-moz-transition: padding .25s;
				-webkit-transition: padding .25s;
			}
			
			.tableForm tr td select:focus {
				padding-right: 70px;
			}
			
			.btn-primary {
				color: #fff;
				background-color: #337ab7;
				border-color: #2e6da4;
			}
			
			.btn {
				display: inline-block;
				position: relative;
				left: 30%;
				padding: 15px 12px;
				margin-bottom: 0;
				font-size: 14px;
				font-weight: 400;
				line-height: 1.42857143;
				text-align: center;
				white-space: nowrap;
				vertical-align: middle;
				cursor: pointer;
				-ms-user-select: none;
				user-select: none;
				background-image: none;
				border: 1px solid transparent;
				border-radius: 4px;
			}
			
			.tips {
				color: rgba(0, 0, 0, 0.5);
				 padding-left: 10px; 
			}
			
			 .tips_true,
			.tips_false {
				padding-left: 10px;
			} 
			
			.tips_true {
				color: green;
			}
			
			.tips_false {
				color: red;
			}
		</style>

		<script type="text/javascript">
			function checkna() {

				na = form1.emp_name.value;

				if(na.length < 1 || na.length > 12)

				{

					divname.innerHTML = '<font class="tips_false">长度是1~12个字符</font>';

				} else {

					divname.innerHTML = '<font class="tips_true">输入正确</font>';

				}

			}

			//验证邮箱

			function checkmail() {
				email = form1.emp_email.value;
				var reg = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
				if(reg.test(email) == false) {
					emailid.innerHTML = '<font class="tips_false">Email格式不正确</font>' ;
					return false;
				} else {
					emailid.innerHTML = '<font class="tips_true">输入正确</font>' ;
					return true;
				}
			}
			//验证手机号
			function checkMobile() {
				mobile = form1.emp_mobile.value;
				var regMobile = /^1\d{10}$/;
				if(regMobile.test(mobile) == false) {
					mobileid.innerHTML = '<font class="tips_false">手机号码不正确，请重新输入</font>';
					return false;
				}
				mobileid.innerHTML = '<font class="tips_true">手机号码输入正确</font>'
				return true;
			}
			//验证固定电话
			function checkPhone() {
				phone = form1.emp_phone.value;
				var regphone = /^0\d{2,3}-?\d{7,8}$/;
				if(regphone.test(phone) == false) {
					phoneid.innerHTML = '<font class="tips_false">固定电话格式不正确，请重新输入</font>';
					return false;
				}
				phoneid.innerHTML = '<font class="tips_true">固定电话输入正确</font>'
				return true;
			}
			//验证QQ
			function checkQQ() {
				qq = form1.emp_qq.value;
				var regqq = /^\d{5,10}$/;
				if(regqq.test(qq) == false) {
					qqid.innerHTML = '<font class="tips_false">QQ格式不正确，请重新输入</font>';
					return false;
				}
				qqid.innerHTML = '<font class="tips_true">QQ输入正确</font>'
				return true;
			}
		</script>
		<script>
			jQuery(function($) {
				$.datepicker.regional['zh-CN'] = {
					closeText: '关闭',
					prevText: '<上月',
					nextText: '下月>',
					currentText: '今天',
					monthNames: ['一月', '二月', '三月', '四月', '五月', '六月',
						'七月', '八月', '九月', '十月', '十一月', '十二月'
					],
					monthNamesShort: ['一', '二', '三', '四', '五', '六',
						'七', '八', '九', '十', '十一', '十二'
					],
					dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
					dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
					dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
					weekHeader: '周',
					dateFormat: 'yy-mm-dd',
					firstDay: 1,
					isRTL: false,
					showMonthAfterYear: true,
					yearSuffix: '年'
				};
				$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
			});
			$(function() {
				$("#csDate").datepicker({ //添加日期选择功能  
					numberOfMonths: 1, //显示几个月  
					showButtonPanel: true, //是否显示按钮面板  
					dateFormat: 'yy-mm-dd', //日期格式  
					clearText: "清除", //清除日期的按钮名称  
					closeText: "关闭", //关闭选择框的按钮名称  
					yearSuffix: '年', //年的后缀  
					showMonthAfterYear: true, //是否把月放在年的后面  
					//defaultDate:'2016-12-31',//默认日期  
					minDate: '1900-01-01 00:00:00', //最小日期  
					maxDate: '2099-12-31 23:59:59', //最大日期  
					//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
					//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
					//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
					//dayNamesMin: ['日','一','二','三','四','五','六'],  
					onSelect: function(selectedDate) { //选择日期后执行的操作 
						//alert(selectedDate);
					}
				});
			});
			$(function() {
				$("#rzDate").datepicker({ //添加日期选择功能  
					numberOfMonths: 1, //显示几个月  
					showButtonPanel: true, //是否显示按钮面板  
					dateFormat: 'yy-mm-dd', //日期格式  
					clearText: "清除", //清除日期的按钮名称  
					closeText: "关闭", //关闭选择框的按钮名称  
					yearSuffix: '年', //年的后缀  
					showMonthAfterYear: true, //是否把月放在年的后面  
					//defaultDate:'2016-12-31',//默认日期  
					minDate: '1900-01-01 00:00:00', //最小日期  
					maxDate: '2099-12-31 23:59:59', //最大日期  
					//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
					//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
					//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
					//dayNamesMin: ['日','一','二','三','四','五','六'],  
					onSelect: function(selectedDate) { //选择日期后执行的操作 
						//alert(selectedDate);
					}
				});
			});
			$(function() {
				$("#zzDate").datepicker({ //添加日期选择功能  
					numberOfMonths: 1, //显示几个月  
					showButtonPanel: true, //是否显示按钮面板  
					dateFormat: 'yy-mm-dd', //日期格式  
					clearText: "清除", //清除日期的按钮名称  
					closeText: "关闭", //关闭选择框的按钮名称  
					yearSuffix: '年', //年的后缀  
					showMonthAfterYear: true, //是否把月放在年的后面  
					//defaultDate:'2016-12-31',//默认日期  
					minDate: '1900-01-01 00:00:00', //最小日期  
					maxDate: '2099-12-31 23:59:59', //最大日期  
					//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
					//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
					//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
					//dayNamesMin: ['日','一','二','三','四','五','六'],  
					onSelect: function(selectedDate) { //选择日期后执行的操作 
						//alert(selectedDate);
					}
				});
			});
			$(function() {
				$("#lzDate").datepicker({ //添加日期选择功能  
					numberOfMonths: 1, //显示几个月  
					showButtonPanel: true, //是否显示按钮面板  
					dateFormat: 'yy-mm-dd', //日期格式  
					clearText: "清除", //清除日期的按钮名称  
					closeText: "关闭", //关闭选择框的按钮名称  
					yearSuffix: '年', //年的后缀  
					showMonthAfterYear: true, //是否把月放在年的后面  
					//defaultDate:'2016-12-31',//默认日期  
					minDate: '1900-01-01 00:00:00', //最小日期  
					maxDate: '2099-12-31 23:59:59', //最大日期  
					//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
					//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
					//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
					//dayNamesMin: ['日','一','二','三','四','五','六'],  
					onSelect: function(selectedDate) { //选择日期后执行的操作 
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
					<td id="colloaForm">
						<form name="form1" action="../../emp.do?action=update" method="post">
							<input type="hidden" name="emp_id"  value="${e.emp_id }">
							<table class="tableForm">
								<tbody>
									<tr>
										<td class="fieldLable">从属于</td>
										<td class="select_box">
											<select name="depart_id">
												<option value="0">请选择</option>
												<c:forEach items="${bm }" var="bm">
													<option value="${bm.depart_id }">${bm.depart_name }</option>
												</c:forEach>
											</select>
										</td>
										<td class="fieldLable">个人状态</td>
										<td><input id="dbf.jobStatus" checked="checked" value="在岗" name="emp_status" autocomplete="off" type="radio"> 在岗
											<input id="dbf.jobStatus" value="出差" name="emp_status" autocomplete="off" type="radio"> 出差
											<input id="dbf.jobStatus" value="离岗" name="emp_status" autocomplete="off" type="radio"> 离岗
										</td>
									</tr>
									<tr>
										<td class="fieldLable"><b style="color: red;">*</b>姓名</td>
										<td><input type="text" name="emp_name" value="${e.emp_name }" placeholder="请输入姓名" onblur="checkna()" required/><span class="tips" id="divname"></span></td>
										<td class="fieldLable">工号</td>
										<td><input type="text" id="code" value="${e.emp_code }" name="emp_code" placeholder="请输入工号"><span id="codeid" style="color:red; display: none;"></span></td>
									</tr>
									<tr>
										<td class="fieldLable">性别</td>
										<td><input id="dbf.gender" checked="checked" value="男" name="emp_sex" autocomplete="off" type="radio"> 男
											<input id="dbf.gender" value="女" name="emp_sex" autocomplete="off" type="radio"> 女
										</td>
										<td class="fieldLable">在职状态</td>
										<td><input id="dbf.jobStatus" checked="checked" value="在职" name="emp_state" autocomplete="off" type="radio"> 在职
											<input id="dbf.jobStatus" value="试用" name="emp_state" autocomplete="off" type="radio"> 试用
											<input id="dbf.jobStatus" value="退休" name="emp_state" autocomplete="off" type="radio"> 退休
											<input id="dbf.jobStatus" value="离职" name="emp_state" autocomplete="off" type="radio"> 离职
										</td>
									</tr>
									<tr>
										<td class="fieldLable">移动电话</td>
										<td><input type="text" name="emp_mobile" value="${e.emp_mobile }" placeholder="请输入你的移动电话" onblur="checkMobile()" required/><span class="tips" id="mobileid"></span></td>
										<td class="fieldLable">固定电话</td>
										<td><input type="text" name="emp_phone" value="${e.emp_phone }" placeholder="请输入你的固定电话" onblur="checkPhone()" required/><span class="tips" id="phoneid"></span></td>
									</tr>
									<tr>
										<td class="fieldLable">电子邮件</td>
										<td><input type="text" name="emp_email" value="${e.emp_email }" placeholder="请输入你的邮箱" onblur="checkmail()" required/><span class="tips" id="emailid"></span></td>
										<td class="fieldLable">即时通信(QQ)</td>
										<td><input type="text" name="emp_qq" value="${e.emp_qq }" placeholder="请输入你的QQ" onblur="checkQQ()" required/><span class="tips" id="qqid"></span></td>
									</tr>
									<tr>
										<td class="fieldLable">出生日期</td>
										<td>
											<input type="text" id="csDate" name="emp_birth" value="${e.emp_birth }" onblur="checkbirth()" placeholder="请输入出生日期" required/>
										</td>
										<td class="fieldLable">入职日期</td>
										<td>
											<input type="text" id="rzDate" name="emp_join" value="${e.emp_join }" onblur="checkjoin()" placeholder="请输入入职日期" required/>
										</td>
									</tr>
									<tr>
										<td class="fieldLable">转正日期</td>
										<td>
											<input type="text" id="zzDate" value="${e.emp_formal }" name="emp_formal" placeholder="请输入转正日期" />
										</td>
										<td class="fieldLable">离职日期</td>
										<td>
											<input type="text" id="lzDate" value="${e.emp_leave }" name="emp_leave" placeholder="请输入离职日期" />
										</td>
									</tr>
									<tr>
										<td class="fieldLable">附加描述</td>
										<td id="dbf.description" colspan="3"><input type="text" value="${e.emp_description }" name="emp_description"/></td>
									</tr>
								</tbody>
							</table>
							<b class="btn"><input type="submit" class="btn btn-primary" value="确定"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="button" class="btn btn-primary" value="取消" onclick="location='../../emp.do?action=Emplist'" /></b>
						</form>
			</tbody>
		</table>
	</body>

</html>