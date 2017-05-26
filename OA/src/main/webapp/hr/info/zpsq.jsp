<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/hr/info/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="colloa.ico">
<link rel="stylesheet" href="../css/sq.min.css">
<link rel="stylesheet" href="../css/sq.css">
<link type="text/css" rel="stylesheet" href="jquery-ui.css"  />
 <script src="jquery-1.8.2.min.js" type="text/javascript"></script>
 <script language="JavaScript" src="jquery-ui.min.js"></script>
   <script>
    function checkname(){
  	  var name=$("input[name=re_name]").val();
  	  var nameid=$("#nameid");
  		if(name==""){//检测姓名是否为空
  			nameid.show();
  			return false;
  			}
  		nameid.hide();
  		return true;
    }
    
    function check(){
	if(checkname()){
		document.forms[0].submit();
	}
  	  	}
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
	 $(function(){  
            $("#sqDate").datepicker({//添加日期选择功能  
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
            $("#dgDate").datepicker({//添加日期选择功能  
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
      <td id="colloaForm"><div class="formTaskflowContainer">
          <form class="formTaskflow" action="../../recruit.do?action=zp" method="post">
          <input type="hidden" name="sq" value="0">
            <table class="tableForm" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
              <colgroup>
              <col width="60">
              <col>
              <col width="80">
              <col width="150">
              </colgroup>
              <tbody>
                <tr>
                  <td style="text-align: right;">&nbsp;<span style="color: rgb(255, 0, 0);">*</span>主题:</td>
                  <td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" class="fieldEditable" name="re_theme"></td>
                  <td style="text-align: right;">&nbsp;优先级:</td>
                  <td><input id="dbf.priority" value="低" name="re_priority" autocomplete="off" type="radio">
                    低
                    <input id="dbf.priority" checked="checked" value="中" name="re_priority" autocomplete="off" type="radio">
                    中
                    <input id="dbf.priority" value="高" name="re_priority" autocomplete="off" type="radio">
                    高</td>
                </tr>
                <tr>
                  <td style="text-align: right;">&nbsp;步骤:</td>
                  <td><span id="mapping.dbf.procXSource">填单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;责任人: <span id="mapping.dbf.responsorSource">李萌,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;参与人: <span id="mapping.dbf.participantsSource"></span></td>
                  <td style="text-align: right;">&nbsp;结束时间:</td>
                  <td id="dbf.endTime" dbf.type="date" dbf.source="date,editable"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                    <div class="fieldEditable" contenteditable="true"><input type="text" id="selectDate" name="re_shopdate"></div></td>
                </tr>
              </tbody>
            </table>
            <div>
              <div style="text-align: center;">&nbsp;</div>
              <div style="text-align: center;"><span style="font-size: 20px;"><strong>招聘申请单</strong></span></div>
            </div>
            <div>
              <table class="tableListBorder" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
                <colgroup>
                <col width="150">
                <col width="300">
                <col width="150">
                <col>
                </colgroup>
                <tbody>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请人</td>
                    <td id="dbf.operator" dbf.type="required" dbf.source="editable,prompt:select sid,name from userX where stype=0 and statusX>0 and name like '%[!prompt]%' order by name" dbf.key="1000071" dbf.value="李萌"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div id="e.dbf.operatorSource" class="fieldEditable" contenteditable="true"><input class="fieldEditable" name="re_name"><span id="nameid" style="color:red; display: none;" >不能为空</span></div></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>所属部门</td>
 <td class="select_box">
            <select name="depart_id">
                			<option value="0">请选择</option>
 							<c:forEach items="${bm }" var="bm">
 							<option value="${bm.depart_id }">${bm.depart_name }</option>
 							</c:forEach>
                			</select>
               		</td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>需求岗位</td>
                    <td id="dbf.positionX" dbf.type="required"><input id="e.dbf.positionX" class="fieldEditable" name="re_post"></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>申请时间</td>
                    <td id="dbf.time2" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="sqDate" name="re_applydate"></div></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>需求人数</td>
                    <td id="dbf.number0" dbf.type="number,required" dbf.source=""><input id="e.dbf.number0" class="fieldEditable" value="0" step="1" name="re_number"></td>
                    <td style="text-align: center;"><span style="color: rgb(255, 0, 0);">*</span>希望到岗日期</td>
                    <td id="dbf.time0" dbf.type="date,required" dbf.source="date"><!--<img class="fieldGetValueBySource" src="../css/fieldSource.gif">-->
                      <div><input type="text" id="dgDate" name="re_positiondate"></div></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">招聘原因说明</td>
                    <td id="招聘原因说明" colspan="3" dbf.type="" dbf.source=""><input id="e.dbf.description" class="fieldEditable" name="re_reason"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">工作内容及职责</td>
                    <td id="工作内容及职责" colspan="3" dbf.type="" dbf.source=""><input id="e.dbf.description" class="fieldEditable" name="re_duty"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">年龄</td>
                    <td id="年龄"><input id="e.年龄" class="fieldEditable" name="re_age"></td>
                    <td style="text-align: center;">性别</td>
                <td><input id="dbf.gender" checked="checked" value="男" name="re_sex" autocomplete="off" type="radio">
                  男
                  <input id="dbf.gender" value="女" name="re_sex" autocomplete="off" type="radio">
                  女			<input id="dbf.gender" value="不限" name="re_sex" autocomplete="off" type="radio">
   	   不限	</td>
                  <tr>
                    <td style="text-align: center;">工作经验</td>
                    <td id="工作经验" colspan="3" dbf.type="" dbf.source=""><input id="e.dbf.description" class="fieldEditable" name="re_experience"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">行业背景</td>
                    <td id="行业背景" colspan="3" dbf.type="" dbf.source=""><input id="e.dbf.description" class="fieldEditable" name="re_lb"></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">其他要求</td>
                    <td id="其他要求" colspan="3" dbf.type="" dbf.source=""><input id="e.dbf.description" class="fieldEditable" name="re_req"></td>
                  </tr>
                  <tr style="text-align: right;">
                  <td colspan="4" dbf.type="" dbf.source=""><a class="button" onclick="check()">保存</a><a class="button">提交主管审批</a><a class="button" href="javascript:history.back()">取消</a></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div>&nbsp;</div>
            <table class="tableForm" style="table-layout: fixed;" cellspacing="0" cellpadding="0" align="center" border="0">
              <colgroup>
              <col width="60">
              <col>
              </colgroup>
              <tbody>
                <!-- <tr>
                  <td style="text-align: right;">&nbsp;附件:</td>
                  <td id="attachments" dbf.source="files">
                    <div id="e.attachments"><input type="file" name="file"><br/></div></td>
                </tr> -->
              </tbody>
            </table>
          </form>
        </div>
       <table style="table-layout: fixed;" cellspacing="0" cellpadding="0" border="0">
          <colgroup>
          <col width="60%">
          <col width="2%">
          <col>
          </colgroup>
          <tbody>
            <tr valign="top">
              <td class="boxBorder"><div style="padding: 2px 10px;">
                  <div style="float: right;"><a href="zpsq_lct.html">› 显示流程图</a></div>
                  【处理过程】</div></td>
              <td></td>
              <td><div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【父事务】</div>
                </div>
                <div class="boxBorder">
                  <div style="padding: 2px 10px; border-bottom: 1px dotted rgb(221, 221, 221); margin-bottom: 5px;">【子事务】</div>
                </div></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>