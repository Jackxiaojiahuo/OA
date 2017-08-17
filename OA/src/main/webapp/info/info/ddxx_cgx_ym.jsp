<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/info/info/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>发送消息 - 10oa</title>
	<link rel="shortcut icon" href="css/colloa.ico">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ddxx_fsxx.css">
	<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
	<link rel="stylesheet" type="text/css" href="css/editor_gecko.css">
	<script type="text/javascript" src="jquery-1.8.2.min.js"></script>
	<script>
		$(function(){
			$("body").click(function() {
              	$('#f1').hide();
				$('#f3').hide();
			 });
			$('#t1').click(function(evt){
				$('#f1').toggle();
				evt.stopPropagation(evt);
			}); 
			$('#t3').click(function(evt){
				$('#f3').toggle();
				evt.stopPropagation();
			});
			$('#f3>div').click(function(){//循环给模块标题绑定点击事件
				$('#t3+div').html($(this).html());
				$('#f3').hide();
			});
			$('#f1>div').click(function(){//循环给模块标题绑定点击事件
				var str="";
				var code="";
				$("#f1>div input:checked").each(function() { // 遍历name=test的多选框
  					str+=$(this).attr("name");  // 每一个被选中项的值
  					code+=$(this).next("span").html();
				});
				$('#t1+div').html(str);
				$("input[name=rec]").val(str);
				$("input[name=receiverName]").val(str);
				$("input[name=receiver]").val(code);
				$('#f1').hide();
			});
		})
		function eTitle(){
			var title=$("input[name=title]").val();
			if(title==null||title==""){
				$("#titleId").show();
				return false;
			}
			$("#titleId").hide();
			return true;
		}
		function eReceiver(){
			var receiverName=$("input[name=receiverName]").val();
			if(receiverName==null||receiverName==""){
				$("#senderId").show();
				return false;
			}
			$("#senderId").hide();
			return true;
		}
		function check(boxType){
			$("input[name=boxType]").val(boxType);
			if(eReceiver()&eTitle()){
				document.forms[0].submit();
			}
			
		}
	</script>
	</head>
	<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
      <tbody>
    <tr valign="top">
          <td id="colloaForm">
          <form action="../../email.do" id="email" method="post">
              <input type="hidden" name="action" value="update">
          		<!-- 保存还是发送 -->
              <input type="hidden" name="boxType">
              <input type="hidden" name="send_id" value="${outbox.send_id }">
              <table class="tableForm" style="table-layout: fixed;" summary="" cellspacing="0" cellpadding="0" border="0">
              <colgroup>
                <col width="80">
                <col>
                <col width="80">
                <col width="120">
                </colgroup>
              <tbody>
                  <tr>
                  <td>&nbsp;主题<b style="color: red;">*</b></td>
                  <td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" name="title" onblur="eTitle()" value="${outbox.outbox_title }" class="fieldEditable"><span style="color: red; display: none;" id="titleId">请输入主题</span></td>
                  <td style="text-align: right;">优先级:&nbsp;</td>
                  <td><input id="dbf.priority" value="0" name="sendType" autocomplete="off" type="radio">
                      低
                      <input id="dbf.priority" checked="checked" value="1" name="sendType" autocomplete="off" type="radio">
                      中
                      <input id="dbf.priority" value="2" name="sendType" autocomplete="off" type="radio">
                      高</td>
                </tr>
                  <tr>
                  <td>&nbsp;收件人<b style="color: red;">*</b></td>
                  <td id="dbf.receiver"  colspan="3" dbf.type="required" dbf.source="form.fieldSource.userX" dbf.key=""><img class="fieldGetValueBySource" id="t1" src="css/fieldSource.gif">
                     <input type="text" disabled="true"  size="100px" name="rec" value="${outbox.outbox_receiverName }"><span style="color: red; display: none;" id="senderId">&nbsp;请选择发信人</span></td>                 
                      <!-- 收件人 -->
                      <input type="hidden" name="receiverName" value="${outbox.outbox_receiverName }">
                      <!-- 收件人编号 -->
                      <input type="hidden"  name="receiver" value="${outbox.outbox_receiver }">
   					<!-- 发件人 -->
                      
                </tr>
                  <tr>
                  <td>&nbsp;附件</td>
                  <td id="dbf.attachment" colspan="3" dbf.source="files"><img class="fieldGetValueBySource" id="t3" src="css/fieldSource.gif">
                      <div id="e.dbf.attachment"></div></td>
                </tr>
                  <tr>
                  <td id="dbf.contentX" colspan="4" dbf.type="html"><textarea id="e.dbf.contentX" class="fieldEditable" style="height: 360px; visibility: hidden; display: none;" dbf.type="htm"></textarea>
                  </tr>
                  <tr>
                  <div style="padding:0 20px;">
                      <td id="content" style="vertical-align: top;" dbf.source="" dbf.type="html"><link rel="stylesheet" type="text/css" href="../../bjq/dist/css/wangEditor.min.css">
                      <style type="text/css">
						#editor-trigger {
							height: 400px;
							/*max-height: 500px;*/
						}
						.container {
							width: 1018px;
							margin: 0 auto;
							position: relative;
						}
					</style>
                      <div id="editor-container" class="container">
                          <div id="editor-trigger">${outbox.outbox_content } </div>
                          <!-- <textarea id="editor-trigger" style="display:none;">
            <p>请输入内容...</p>
        </textarea> --> 
                        </div>
                      <p><br>
                        </p>
                        <!-- <div id="html"></div> -->
                      <input type="hidden" id="content" value="${outbox.outbox_content }" onblur="eContent()" name="content">
                       <script type="text/javascript" src="../../bjq/dist/js/wangEditor.js"></script> 
                      <!--<script type="text/javascript" src="../dist/js/wangEditor.min.js"></script>--> 
                      <script type="text/javascript">
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
        editor.onchange = function () {
            console.log(this.$txt.html());
			
			// 获取编辑器区域完整html代码
			var html= editor.$txt.html();
			//$("#html").text(html);
			$("input[name=content]").val(html);
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
    </script></td>
                    </div>
                </tr>
                </tbody>
            </table>
            </form>
        </div>
        <form method="post" >
              <input id="viewState" name="viewState" type="hidden">
            </form>
        <div id="_vWorkflowActionsShow" align="right"><a class="button" onClick="check(0)">保存</a><a onClick="check(1)" class="button">发送</a><a href="../../email.do?action=ss&type=3" class="button">取消</a></div>
        <br></td>
        </tr>
  </tbody>
    </table>
<div id="f3" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 130px; left: 130px; display: none;">
      <iframe src="css/zssq_sqft_index_7.html" style="width: 100%; height: 95%;" frameborder="0"></iframe>
    </div>
	<div id="f1" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 105px; left: 130px; display: none;">
   		<c:forEach var="b" items="${bm }"> 
   		<div style="padding-left: 0px;">
     	${b.depart_name }</div>
	   	<c:forEach var="e" items="${eList }"> 
			 <c:if test="${e.depart_id==b.depart_id }">
				 <div style="padding-left: 50px;">
	    		<input name="${e.emp_name }," type="checkbox">
	    		<span style="display: none;">${e.emp_code },</span>
	    		${e.emp_name }</div>
    		</c:if>
	   	</c:forEach>
   	</c:forEach>
   </div>
</body>
</html>
