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

/* 报告名称 */

  function reportna(){
	var rid = $("#rid").val();
	if(rid == ""){
		$("#reportnaid").html("报告名称不能为空");
		return false;
	}
	
	$("#reportnaid").html("");
	return true;
} 
/*计划内容  */
/* function chkcontentna(){
	var conid = $("#conid").val();
	if(conid == ""){
		$("#contentnaid").html("计划内容不能为空");
		return false;
	}
	
	$("#contentnaid").html("");
	return true;
} */

 
 $(function(){
	$("#rid").blur(function(){
	  reportna();
    });
    
   

$("#myform").submit(function(){
	var flag1 = reportna();
	
	
	if(flag1){
		return true;
	}else{
		return false;
	}
 });

}); 
 
/* 开始时间 */
function checkprospectus_create_time(){
	  var create=$("input[name='report_create_time']").val();
	  var createid=$("#createid");
		if(create==""){
			createid.show();
			return false;
		}
		return true;
}
/* 结束时间 */
/* function checkprospectus_terminal_time(){
	  var terminal=$("input[name='prospectus_terminal_time']").val();
	  var terminalid=$("#terminalid");
		if(terminal==""){
			terminalid.show();
			return false;
		}
		return true;
} */
/*提交按钮  */
function check(){
	if(checkprospectus_create_time()&reportna()/* &checkprospectus_terminal_time()&chkcreatena()&chkcontentna() */){
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
	/* $(function() {
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
	}); */
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
						<form class="formTaskflow" name="myform" action="../../repo.do?action=addrep" method="post" >
							<table class="tableForm" style="table-layout: fixed;"
								cellspacing="0" cellpadding="0" border="0" align="center">
								<colgroup>
									<col>
									<col width="180">
								</colgroup>
								<tbody>
									<tr>
										<td>&nbsp;步骤: <span id="mapping.dbf.procXSource">制定报告</span><!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人:
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
											 <textarea id="rid" name="report_name" class="fieldEditable" style="height: 40px;  font-size: 20px; font-weight: bold; text-align: center;"></textarea> 
											<div id="reportnaid" ></div> 
											
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
														<td style="text-align: center;">报告分类</td>
														<td><input id="报告分类" value="年度报告" name="report_classify"
															autocomplete="off" type="radio"> 年度 <input
															id="报告分类" value="季度报告" name="report_classify"
															autocomplete="off" type="radio"> 季度 <input
															id="报告分类" value="月度报告" name="report_classify"
															autocomplete="off" type="radio"> 月度 <input
															id="报告分类" value="周报告" name="report_classify"
															autocomplete="off" type="radio"> 周 <input
															id="报告分类" value="项目报告" name="report_classify"
															autocomplete="off" type="radio"> 项目 <input
															id="报告分类" checked="" value="其他报告" name="report_classify"
															autocomplete="off" type="radio"> 其他</td>
														<td style="text-align: center;">报告状态</td>
														<td >&nbsp; <input id="报告状态" name="repo_state"
											type="radio" checked="" value="评审中"> 转评审&nbsp;&nbsp;

											<input id="报告状态" name="repo_state" type="radio" value="已关闭">
											直接关闭&nbsp;&nbsp; </td>
													</tr>
													<tr>
														<td style="text-align: center;">创建人</td>
														<td><input id="cid" class="fieldEditable" readonly="readonly" value="${s_emp.emp_name }" name="report_create_name">
															 <div id="createnaid" ></div></td>
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
														<td style="text-align: center;">评审人</td>
														<td id="dbf.text0" dbf.source="form.fieldSource.userX0"
															dbf.type="" dbf.key="">
															<input id="e.dbf.positionX" class="fieldEditable" name="report_review_name">
															<!-- <textarea id="conid" class="fieldEditable" name="prospectus_content" style="height: 25px;"></textarea> -->
															<!-- <input id="conid" class="fieldEditable" name="prospectus_content"> -->
															 <div id="contentnaid" ></div></td>
														<td style="text-align: center;"><strong><font
																color="#ff0000">*</font></strong>创建时间</td>
														<td id="dbf.time0" dbf.type="date" dbf.source="date">
															<!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
															<div class="fieldEditable">
																<input type="text" id="ksDate" name="report_create_time" onblur="checkprospectus_create_time()" placeholder="请输入开始时间"/><span id="createid" style="color:red; display: none;">不能为空</span>
																
																<!-- <input type="text" id="jsDate" name="prospectus_terminal_time" onblur="checkprospectus_terminal_time()" placeholder="请输入结束时间"/> --><!-- <span id="terminalid" style="color:red; display: none;">不能为空</span> -->
																
																
															</div>
															
																
	
														</td>
															
															
													</tr>
														<tr>
										<td style="text-align: center;">报告内容</td>
										<td id="报告内容" style="vertical-align: top;" colspan="3"
											dbf.source="" dbf.type=""><textarea id="e.报告内容" name="report_content"
												class="fieldEditable" style="height: 120px;"></textarea></td>
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
													<!-- <tr>
														<td style="text-align: center;">评审人</td>
														<td id="dbf.text0" dbf.source="form.fieldSource.userX0"
															dbf.type="" dbf.key=""><input id="e.dbf.positionX" class="fieldEditable" name="prospectus_review_name"></td>
														 <td style="text-align: center;"><strong><font
																color="#ff0000">*</font></strong>执行人</td>
														<td id="dbf.text1" dbf.source="form.fieldSource.userX"
															dbf.type="required" dbf.key="">
															<input id="e.dbf.positionX" class="fieldEditable" name="prospectus_executor_name"></td>
													</tr> -->
								<!-- <tr>
								<td style="text-align: center;">计划内容</td>
								 <td id="dbf.subject" style="height: 100px; vertical-align: top;
											style="font-size: 20px;  line-height: 1;"
											dbf.source="" dbf.type="required"><input id="e.dbf.positionX" class="fieldEditable" name="prospectus_name" ></td>
							</tr> -->
													
													<tr>
													
														<%-- <td id="content" style="vertical-align: top;"
															dbf.source="" dbf.type="html"><link rel="stylesheet"
																type="text/css" href="bjq/dist/css/wangEditor.min.css">
															<style type="text/css">
#editor-trigger {
	height: 300px;
	/*max-height: 500px;*/
}

.container {
	width: 1018px;
	margin: 0 auto;
	position: relative;
}
</style>
															<div id="editor-container" class="container">
																<div id="editor-trigger">
																	<table align="center" border="0" style="border: inset"
																		cellpadding="0" cellspacing="0"
																		class="tableListBorder">
																		<colgroup>
																			<col width="60" />
																			<col />
																			<col width="200" />
																			<col width="200" />
																		</colgroup>
																		<tbody>
																			<tr>
																				<td style="TEXT-ALIGN: center">序号</td>
																				<td style="TEXT-ALIGN: center">计划事项</td>
																				<td style="TEXT-ALIGN: center; WIDTH: 96px">执行人</td>
																				<td style="TEXT-ALIGN: center; WIDTH: 130px">执行时间</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">1</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">2</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">3</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">4</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">5</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">6</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																			<tr>
																				<td dbf.source="" dbf.type=""
																					style="TEXT-ALIGN: center">7</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																				<td dbf.source="" dbf.type="">&nbsp;</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<!-- <textarea id="editor-trigger" style="display:none;">
            <p>请输入内容...</p>
        </textarea> -->
															</div>
															<div style="display: none" id="html"></div> <script
																type="text/javascript" src="bjq/dist/js/wangEditor.js">
                      	
                      </script> <script type="text/javascript">
                      // 阻止输出log
                      // wangEditor.config.printLog = false;
                      
                      	var editor = new wangEditor('editor-trigger');
                      
                      	// 上传图片
                      	editor.config.uploadImgUrl = '/upload';
                      	editor.config.uploadParams = {
                      		// token1: 'abcde',
                      		// token2: '12345'
                      	};
                      	editor.config.uploadHeaders = {
                      		// 'Accept' : 'text/x-json'
                      	}
                      	// editor.config.uploadImgFileName = 'myFileName';
                      
                      	// 隐藏网络图片
                      	// editor.config.hideLinkImg = true;
                      
                      	// 表情显示项
                      	editor.config.emotionsShow = 'value';
                      	editor.config.emotions = {
                      		'default' : {
                      			title : '默认',
                      			data : './emotions.data'
                      		},
                      		'weibo' : {
                      			title : '微博表情',
                      			data : [
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/7a/shenshou_thumb.gif',
                      					value : '[草泥马]'
                      				},
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif',
                      					value : '[神马]'
                      				},
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/bc/fuyun_thumb.gif',
                      					value : '[浮云]'
                      				},
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif',
                      					value : '[给力]'
                      				},
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f2/wg_thumb.gif',
                      					value : '[围观]'
                      				},
                      				{
                      					icon : 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif',
                      					value : '[威武]'
                      				}
                      			]
                      		}
                      	};
                      
                      	// 插入代码时的默认语言
                      	// editor.config.codeDefaultLang = 'html'
                      
                      	// 只粘贴纯文本
                      	// editor.config.pasteText = true;
                      
                      	// 跨域上传
                      	// editor.config.uploadImgUrl = 'http://localhost:8012/upload';
                      
                      	// 第三方上传
                      	// editor.config.customUpload = true;
                      
                      	// 普通菜单配置
                      	// editor.config.menus = [
                      	//     'img',
                      	//     'insertcode',
                      	//     'eraser',
                      	//     'fullscreen'
                      	// ];
                      	// 只排除某几个菜单（兼容IE低版本，不支持ES5的浏览器），支持ES5的浏览器可直接用 [].map 方法
                      	// editor.config.menus = $.map(wangEditor.config.menus, function(item, key) {
                      	//     if (item === 'insertcode') {
                      	//         return null;
                      	//     }
                      	//     if (item === 'fullscreen') {
                      	//         return null;
                      	//     }
                      	//     return item;
                      	// });
                      
                      	// onchange 事件
                      	editor.onchange = function() {
                      		console.log(this.$txt.html());
                      
                      		// 获取编辑器区域完整html代码
                      		var html = editor.$txt.html();
                      		$("#html").text(html);
                      	};
                      
                      
                      	// 取消过滤js
                      	// editor.config.jsFilter = false;
                      
                      	// 取消粘贴过来
                      	// editor.config.pasteFilter = false;
                      
                      	// 设置 z-index
                      	// editor.config.zindex = 20000;
                      
                      	// 语言
                      	// editor.config.lang = wangEditor.langs['en'];
                      
                      	// 自定义菜单UI
                      	// editor.UI.menus.bold = {
                      	//     normal: '<button style="font-size:20px; margin-top:5px;">B</button>',
                      	//     selected: '.selected'
                      	// };
                      	// editor.UI.menus.italic = {
                      	//     normal: '<button style="font-size:20px; margin-top:5px;">I</button>',
                      	//     selected: '<button style="font-size:20px; margin-top:5px;"><i>I</i></button>'
                      	// };
                      	editor.create();
                      </script></td> --%>
													</tr>
													<!-- <tr>
														<td style="text-align: center;">附件</td>
														<td id="attachments" colspan="3" dbf.source="files">
															<textarea id="e.dbf.subject"
																class="fieldEditable"
																style="height: 30px; font-size: 10px; font-weight: bold; "></textarea></td>
													</tr> -->
												</tbody>
											</table> <!-- <strong><font color="#ff0000"></font></strong> --> </td>
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

