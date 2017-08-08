<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/hr/info/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/sq.min.css">
<link rel="stylesheet" href="../css/sq.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css" />
<script src="jquery-1.8.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="jquery-ui.min.js"></script>
<script>
function checkapplydate(){
	  var applydate=$("input[name='tv_applydate']").val();
	  var applydateid=$("#applydateid");
		if(applydate==""){
			applydateid.show();
			return false;
		}
		return true;
}
function checkcdate(){
	  var cdate=$("input[name='tv_cdate']").val();
	  var cdateid=$("#cdateid");
		if(cdate==""){
			cdateid.show();
			return false;
		}
		return true;
}
function checkddate(){
	  var ddate=$("input[name='tv_ddate']").val();
	  var ddateid=$("#ddateid");
		if(ddate==""){
			ddateid.show();
			return false;
		}
		return true;
}
function check(){
	if(checkapplydate()&checkcdate()&checkddate()){
	document.forms[0].submit();
	}
}
</script>
<script>
	jQuery(function($) {
		$.datepicker.regional['zh-CN'] = {
			closeText : '关闭',
			prevText : '<上月',
					nextText: '下月>',
			currentText : '今天',
			monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月',
					'九月', '十月', '十一月', '十二月' ],
			monthNamesShort : [ '一', '二', '三', '四', '五', '六', '七', '八', '九',
					'十', '十一', '十二' ],
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
	$(function() {
		$("#sqDate").datepicker({ //添加日期选择功能  
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
				$("#applydateid").hide();
			}
		});
	});
	$(function() {
		$("#ccDate").datepicker({ //添加日期选择功能  
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
				$("#cdateid").hide();
			}
		});
	});
	$(function() {
		$("#zDate").datepicker({ //添加日期选择功能  
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
				$("#ddateid").hide();
			}
		});
	});
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm">
					<div class="formTaskflowContainer">
						<form class="formTaskflow" action="../../work.do?action=kqsq" method="post">
						<input type="hidden" name="sq" value="0">
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" align="center" border="0">
								<colgroup>
									<col width="60">
									<col>
									<col width="80">
									<col width="150">
								</colgroup>
								<tbody>
										<tr>
										<td style="text-align: right;">&nbsp;<span
											style="color: rgb(255, 0, 0);">*</span>主题:
										</td>
										<td id="dbf.subject" dbf.type="required" colspan="5"><input
											id="e.dbf.subject" class="fieldEditable" name="tv_theme" value="出差申请-${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }"></td>
									</tr>
									<tr>
										<td style="text-align: right;">&nbsp;步骤:</td>
										<td colspan="3"><span id="mapping.dbf.procXSource">填单</span></td>
										<td style="text-align: right;">&nbsp;结束时间:</td>
                  <td id="dbf.endTime" dbf.type="date" dbf.source="date,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div class="fieldEditable" contenteditable="true"><input type="text" id="selectDate" name="tv_shopdate" placeholder="请输入结束时间" /></div></td>
									</tr>
								</tbody>
							</table>
							<div style="text-align: center;">
								<span style="font-size: 20px;"><strong>出差申请单</strong></span>
							</div>
							<div>
								<table class="tableListBorder" style="table-layout: fixed;"
									cellspacing="0" cellpadding="0" align="center" border="0">
									<colgroup>
										<col width="100">
										<col width="180">
										<col width="100">
										<col width="250">
										<col width="100">
										<col>
									</colgroup>
									<tbody>
										<tr>
											 <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
                    <td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable" value="${s_emp.emp_name }"><input type="hidden" name="emp_id" value="${s_emp.emp_id }">
                     </td>
											<td style="text-align: center;">所属部门</td>
											<td id="dbf.operatorSource" dbf.type="required" dbf.source="" dbf.key="">
                    <input id="e.dbf.operatorSource" class="fieldEditable"
                     value="${s_emp.dept.depart_name }"><input type="hidden" name="depart_id" value="${s_emp.dept.depart_id }"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请时间</td>
											<td id="dbf.time2" dbf.type="date,required" dbf.source="date">
												<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
												<div>
													<input type="text" id="sqDate" name="tv_applydate" onblur="checkapplydate()" placeholder="请输入申请时间"/><span id="applydateid" style="color:red; display: none;">不能为空</span>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差时间</td>
											<td id="dbf.time0" dbf.type="date,required"
												dbf.source="datetime,editable">
												<div class="fieldEditable" contenteditable="true">
													<input type="text" id="ccDate" name="tv_cdate" onblur="checkcdate()" placeholder="请输入出差时间"/><br/>
													<span id="cdateid" style="color:red; display: none;">不能为空</span>
												</div>
											</td>
											<td style="text-align: center;" dbf.type="" dbf.source="">~</td>
											<td id="dbf.time1" dbf.type="date,required"
												dbf.source="datetime,editable">
												<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->

												<div class="fieldEditable" contenteditable="true">
													<input type="text" id="zDate" name="tv_ddate" onblur="checkddate()" placeholder="请输入出差时间"/><br/>
													<span id="ddateid" style="color:red; display: none;">不能为空</span>
												</div>
											</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>目的地</td>
											<td id="dbf.text5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_termini"></td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差事由</td>
											<td id="出差事由" colspan="5" dbf.type="required" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_reason"></td>
										</tr>
										<tr>
											<td style="text-align: center;">交通工具</td>
											<td colspan="5">&nbsp; <input id="交通工具" name="交通工具"
												type="checkbox" value="汽车"> 汽车&nbsp;&nbsp; <input id="交通工具"
												name="tv_traffic" type="checkbox" value="火车"> 火车&nbsp;&nbsp; <input
												id="交通工具" name="tv_traffic" type="checkbox" value="飞机">
												飞机&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="轮船">
												轮船&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="私家车">
												私家车&nbsp;&nbsp; <input id="交通工具" name="tv_traffic" type="checkbox" value="其他 ">
												其他 <input id="其他" name="tv_traffic"></td>
										</tr>
										<tr>
											<td style="text-align: center;">出差报告</td>
											<td id="出差汇报" style="height: 150px; vertical-align: top;"
												colspan="5" dbf.type="" dbf.source=""><input id="e.dbf.positionX" class="fieldEditable" name="tv_report"></td>
										</tr>
										<tr>
											<td style="text-align: center;">出差结果</td>
											<td colspan="5">&nbsp; <input value="目标达成" name="tv_result" type="radio"> 目标达成&nbsp; <input
												name="tv_result" type="radio" value="目标基本达成 ">
												目标基本达成 <input name="tv_result" type="radio" value="目标未达成">
												目标未达成
											</td>
										</tr>
										  <tr style="text-align: right;">
                  <td colspan="6" dbf.type="" dbf.source=""><a class="button" onclick="check()">提交主管审批</a><a class="button" href="javascript:history.back()">取消</a></td>
                  </tr>
									</tbody>
								</table>
							</div>
							<div>&nbsp;</div>
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" align="center" border="0">
								<colgroup>
									<col width="60">
									<col>
								</colgroup>
							</table>
							<div>&nbsp;</div>
						</form>
					</div>
					<table style="table-layout: fixed;" cellspacing="0" cellpadding="0"
						border="0">
						<colgroup>
							<col width="60%">
							<col width="2%">
							<col>
						</colgroup>
						<tbody>
							<!-- <tr valign="top">
								<td class="boxBorder">
									<div style="padding: 2px 10px;">
										<div style="float: right;">
											<a href="ccsq_lct.html">› 显示流程图</a>
										</div>
										【处理过程】
									</div>
								</td>
								<td></td>
								<td>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
									</div>
									<div class="boxBorder">
										<div
											style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
									</div> -->
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>