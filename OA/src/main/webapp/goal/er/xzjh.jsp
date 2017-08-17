<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/goal/er/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'xzjh.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="css/xzjh.min.css">
<link rel="stylesheet" href="css/xzjh.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css" />
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="jquery-ui.min.js"></script>
<script>

/* 计划名称 */

 function prospectusna(){
	var pid = $("#pid").val();
	if(pid == ""){
		$("#prospectusnaid").html("计划名称不能为空");
		return false;
	}
	
	$("#prospectusnaid").html("");
	return true;
}
/*计划内容  */
function chkcontentna(){
	var conid = $("#conid").val();
	if(conid == ""){
		$("#contentnaid").html("计划内容不能为空");
		return false;
	}
	
	$("#contentnaid").html("");
	return true;
}

 
 $(function(){
	$("#pid").blur(function(){
	  prospectusna();
    });
    $("#conid").blur(function(){
	  chkcontentna();
    });
   

$("#myform").submit(function(){
	var flag1 = prospectusna();
	var flag2 = chkcontentna();
	
	if(flag1&&flag2){
		return true;
	}else{
		return false;
	}
 });

});
 
/* 开始时间 */
function checkprospectus_create_time(){
	  var create=$("input[name='prospectus_create_time']").val();
	  var createid=$("#createid");
		if(create==""){
			createid.show();
			return false;
		}
		return true;
}
/* 结束时间 */
function checkprospectus_terminal_time(){
	  var terminal=$("input[name='prospectus_terminal_time']").val();
	  var terminalid=$("#terminalid");
		if(terminal==""){
			terminalid.show();
			return false;
		}
		return true;
}
/*提交按钮  */
function check(){
	if(checkprospectus_create_time()&checkprospectus_terminal_time()&prospectusna()&chkcontentna()){
	document.forms[0].submit();
	}
}

	$(function($) {
		$.datepicker.regional['zh-CN'] = {
			closeText : '关闭',
			prevText : '<上月',
			nextText : '下月>',
			currentText : '今天',
			monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
				'七月', '八月', '九月', '十月', '十一月', '十二月' ],
			monthNamesShort : [ '一', '二', '三', '四', '五', '六',
				'七', '八', '九', '十', '十一', '十二' ],
			dayNames : [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ],
			dayNamesShort : [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ],
			dayNamesMin : [ '日', '一', '二', '三', '四', '五', '六' ],
			weekHeader : '周',
			dateFormat : 'yy-mm-dd',
			firstDay : 1,
			isRTL : false,
			showMonthAfterYear : true,
			yearSuffix : '年'
		};
		$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
	});
	
	$(function(){ 
	 $("#selectDate").datepicker({//添加日期选择功能  
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
	/* 开始时间日历 */
	$(function() {
		$("#ksDate").datepicker({ //添加日期选择功能  
			numberOfMonths : 1, //显示几个月  
			showButtonPanel : true, //是否显示按钮面板  
			dateFormat : 'yy-mm-dd', //日期格式  
			clearText : "清除", //清除日期的按钮名称  
			closeText : "关闭", //关闭选择框的按钮名称  
			yearSuffix : '年', //年的后缀  
			showMonthAfterYear : true, //是否把月放在年的后面  
			//defaultDate:'2016-12-31',//默认日期  
			minDate : '1900-01-01 00:00:00', //最小日期  
			maxDate : '2099-12-31 23:59:59', //最大日期  
			//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
			//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
			//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
			//dayNamesMin: ['日','一','二','三','四','五','六'],  
			onSelect : function(selectedDate) { //选择日期后执行的操作 
				//alert(selectedDate);
				$("#createid").hide();
			}
		});
	});
	/* 结束时间日历 */
	$(function() {
		$("#jsDate").datepicker({ //添加日期选择功能  
			numberOfMonths : 1, //显示几个月  
			showButtonPanel : true, //是否显示按钮面板  
			dateFormat : 'yy-mm-dd', //日期格式  
			clearText : "清除", //清除日期的按钮名称  
			closeText : "关闭", //关闭选择框的按钮名称  
			yearSuffix : '年', //年的后缀  
			showMonthAfterYear : true, //是否把月放在年的后面  
			//defaultDate:'2016-12-31',//默认日期  
			minDate : '1900-01-01 00:00:00', //最小日期  
			maxDate : '2099-12-31 23:59:59', //最大日期  
			//monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],  
			//dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],  
			//dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],  
			//dayNamesMin: ['日','一','二','三','四','五','六'],  
			onSelect : function(selectedDate) { //选择日期后执行的操作 
				//alert(selectedDate);
				$("#terminalid").hide();
			}
		});
	});
</script>

<!-- <script>
		 $(function($){
			$('#t1').click(function(){
				$('#f1').toggle();
			});
			$('#t2').click(function(){
				$('#f2').toggle();
			});
			$('#t3').click(function(){
				$('#f3').toggle();
			});
			
			$('#f1>div').click(function(){//循环给模块标题绑定点击事件
				$('#t1+div').html($(this).html());
				$('#f1').hide();
			});
			$('#f2>div').click(function(){//循环给模块标题绑定点击事件
				$('#t2+div').html($(this).html());
				$('#f2').hide();
			});
			$('#f3>div').click(function(){//循环给模块标题绑定点击事件
				$('#t3+div').html($(this).html());
				$('#f3').hide();
			});
		 
			function bjq(){
        var editor = new wangEditor('editor-trigger');
			// 获取编辑器区域完整html代码
			var html= editor.$txt.html();
			
			$("#html").text(html);
			$("#bjq").val(html.innerHTML);
		}
	</script> -->
<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><div class="formTaskflowContainer">
						<form class="formTaskflow" name="myform" action="../../pros.do?action=add" method="post" >
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0" align="center">
								<colgroup>
									<col>
									<col width="180">
								</colgroup>
								<tbody>
									<tr>
										<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">制定计划</span><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
											<span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人:
											<span id="mapping.dbf.participantsSource"></span> --></td>
										<!-- <td>&nbsp;优先级: <input id="dbf.priority" value="-1"
										name="dbf.priority" autocomplete="off" type="radio"> 低
										<input id="dbf.priority" checked="" value="0"
										name="dbf.priority" autocomplete="off" type="radio"> 中
										<input id="dbf.priority" value="1" name="dbf.priority"
										autocomplete="off" type="radio"> 高
									</td> -->
									</tr>
								</tbody>
							</table>
							<table cellspacing="0" cellpadding="0" border="0">
								<tbody>
									<tr>
										<td id="dbf.subject"
											style="font-size: 20px; font-weight: bold; text-align: center; line-height: 1;"
											dbf.source="" dbf.type="required">
											 <textarea id="pid" name="prospectus_name" class="fieldEditable" style="height: 40px;  font-size: 20px; font-weight: bold; text-align: center;"></textarea>
											  <div id="prospectusnaid" ></div> 
											<!-- <input id="e.dbf.positionX" class="fieldEditable" font-size: 150px; name="prospectus_name"  placeholder="请输入计划名称"> --></td>
									</tr>
								</tbody>
							</table>
							<table class="tableListBorder" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0" align="center">
								<tbody>
									<tr>
										 <td style="text-align: center;">
										<table
												class="tableListBorder" style="table-layout: fixed;"
												cellspacing="0" cellpadding="0" border="0" align="center">
												<colgroup>
													<col width="100">
													<col width="350">
													<col width="100">
													<col>
												</colgroup>
												<tbody>
													<tr>
														<td style="text-align: center;">计划分类</td>
														<td><input id="计划分类" value="年度计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 年度 <input
															id="计划分类" value="季度计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 季度 <input
															id="计划分类" value="月度计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 月度 <input
															id="计划分类" value="周计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 周 <input
															id="计划分类" value="项目计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 项目 <input
															id="计划分类" checked="" value="其他计划" name="prospectus_classify"
															autocomplete="off" type="radio"> 其他</td>
														<td style="text-align: center;">计划状态</td>
														<td >&nbsp; 
														 
														 <input id="评审状态" name="pros_state" type="radio" checked="" value="评审中">
												转评审&nbsp;&nbsp; 
												<input id="评审状态" name="pros_state" type="radio"  value="发布执行"> 发布执行&nbsp;&nbsp; 
												<input id="评审状态" name="pros_state" type="radio" value="已关闭">
											已关闭&nbsp;&nbsp; </td>
													</tr>
													<tr>
														<td style="text-align: center;">创建人</td>
														<td><input id="cid" class="fieldEditable" readonly="readonly" value="${s_emp.emp_name }" name="prospectus_create_name">
															   </td>
														<td style="text-align: center;">所属部门</td>
														<td >&nbsp; 
														<input type="text"  readonly="readonly"  value="${s_emp.dept.depart_name }"/>
														<input type="hidden" name="depart_id" value="${s_emp.dept.depart_id}">
														 <!-- <input id="所属部门" name="depart_id" type="radio" checked="" value="2"> 总经办&nbsp;&nbsp; 
														 <input id="所属部门" name="depart_id" type="radio" value="3">
												人事部&nbsp;&nbsp; <input id="所属部门" name="depart_id" type="radio" value="5">
											采购部&nbsp;&nbsp;  --></td>
														<!-- <td><input id="e.dbf.positionX" class="fieldEditable" name="depart_id"></td> -->
													</tr>
													<tr>
														
														<td style="text-align: center;"><strong><font
																color="#ff0000">*</font></strong>执行时间</td>
														<td id="dbf.time0" dbf.type="date" dbf.source="date">
															<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
															<div class="fieldEditable">
																<input type="text" id="ksDate" name="prospectus_create_time" onblur="checkprospectus_create_time()" placeholder="请输入开始时间"/>
																<span id="createid" style="color:red; display: none;">不能为空</span>
															</div>	
															<!-- <input type="text" id="jsDate" name="prospectus_terminal_time" onblur="checkprospectus_terminal_time()" placeholder="请输入结束时间"/>
																<span id="terminalid" style="color:red; display: none;">不能为空</span> -->
														</td>
														<td style="text-align: center;"><strong><font
																color="#ff0000"></font></strong>结束时间</td>
														<td id="dbf.time0" dbf.type="date" dbf.source="date">
															<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
															<div class="fieldEditable">
																<input type="text" id="jsDate" name="prospectus_terminal_time" onblur="checkprospectus_terminal_time()" placeholder="请输入结束时间"/>
																<span id="terminalid" style="color:red; display: none;">不能为空</span>
															</div>	
															
														</td>		
													</tr>
													
													<!-- <tr>
														<td style="text-align: center;"><span
															style="color: rgb(255, 0, 0);">*</span>开始时间</td>
														<td id="dbf.time0" dbf.type="date" dbf.source="date">
															<img class="fieldGetValueBySource" src="../css/fieldSource.gif">
															<div>
																<input type="text" id="ksDate" name="prospectus_create_time" onblur="checkprospectus_create_time()" placeholder="请输入开始时间"/>
																<span id="createid" style="color:red; display: none;">不能为空</span>
															</div>
														</td>
														<td style="text-align: center;"><span
															style="color: rgb(255, 0, 0);">*</span>结束时间</td>
														<td id="dbf.time1" dbf.type="date" dbf.source="date">
															<img class="fieldGetValueBySource" src="../css/fieldSource.gif">
															<div>
																<input type="text" id="jsDate" name="prospectus_terminal_time" onblur="checkprospectus_terminal_time()" placeholder="请输入结束时间"/>
																<span id="terminalid" style="color:red; display: none;">不能为空</span>
															</div>
														</td>
													</tr> -->
													<tr>
														<td style="text-align: center;">评审人</td>
														<td id="dbf.text0" dbf.source="form.fieldSource.userX0"
															dbf.type="" dbf.key=""><input id="e.dbf.positionX" class="fieldEditable" name="prospectus_review_name"></td>
														<td style="text-align: center;"><strong><font
																color="#ff0000">*</font></strong>执行人</td>
														<td id="dbf.text1" dbf.source="form.fieldSource.userX"
															dbf.type="required" dbf.key=""><input id="e.dbf.positionX" class="fieldEditable" name="prospectus_executor_name"></td>
													</tr>
								  <tr>
								<td style="text-align: center;">计划内容</td>
														<td id="dbf.text0" colspan="3" dbf.source="form.fieldSource.userX0"
															dbf.type="" dbf.key="">
															<textarea id="conid" class="fieldEditable" name="prospectus_content" style="height: 80px;"></textarea>
															<!-- <input id="conid" class="fieldEditable" name="prospectus_content"> -->
															 <div id="contentnaid" ></div></td>
							</tr> 
													
													
												</tbody>
											</table>  
											</td>
									</tr>
								</tbody>
							</table>
							<!-- <script language="javascript">/* Code removed by ScrapBook */
							</script> -->
						</form>
					</div>
					<form method="post">
						<input id="viewState" name="viewState" type="hidden">
					</form> <!-- <script language="javaScript">/* Code removed by ScrapBook */
					</script> --><br>
					<div id="_vWorkflowActionsShow" align="right">
						 <a  class="button" onclick="check()">保存</a><!-- <a class="button">转评审</a> --><!-- <a class="button">直接转执行人知悉</a> -->
						<a class="button" href="javascript:history.back()">取消</a>
					</div> <br>
					<table style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0">
						<colgroup>
							<col width="60%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<!-- <tr valign="top">
								<td class="boxBorder"><div style="padding: 2px 10px;">
										<div style="float: right;">
											<a href="../mg/lct/rwlc.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div></td>
								<td></td>
								<td><div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
									</div>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
									</div></td>
							</tr> -->
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
	
	
	</div>
</body>
</html>

