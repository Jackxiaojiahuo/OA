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
<title>社区发帖 - 10oa</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/zssq_sqft.css">
<style>
/* Code tidied up by ScrapBook */
.cke {
	visibility: hidden;
}
</style>
<link rel="stylesheet" type="text/css" href="css/editor_gecko.css">
<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		$('input[name=tLabel]').val('');
		$('input[name=tTitle]').val('');
		$('input[name=tContent]').val('');
		$('#t1').click(function() {
			$('#f1').toggle();
		});
		$('#t2').click(function() {
			$('#f2').toggle();
		});
		$('#f1>div').click(function() {//循环给模块标题绑定点击事件
			$("#sid").hide();
			$('#n1').html($(this).html());
			var sid = $(this).html();
			if (sid == '合理化建议') {
				$('input[name=tSId]').val(1);
			}
			if (sid == '技术交流') {
				$('input[name=tSId]').val(2);
			}
			if (sid == '企业文化') {
				$('input[name=tSId]').val(3);
			}
			if (sid == '生活娱乐') {
				$('input[name=tSId]').val(4);
			}
			if(sid == '(空)'){
				$('input[name=tSId]').val(0);
			}
			$('#f1').hide();
		});
		$('#f2>div').click(function() {//循环给模块标题绑定点击事件
			$('#t2+div').html($(this).html());
			$('#f2').hide();
		});
	});
	function etSId(){
		var sid=$('input[name=tSId]').val();
		if(sid==null||sid==""||sid==0){
			$('#t1+div').html('');
			$("#sid").show();
			return false;
		}
		$("#sid").hide();
		return true;
	}
	function etLabel(){
		var label=$('input[name=tLabel]').val();
		if(label==null||label==""){
			$("#gjz").show();
			return false;
		}
		$("#gjz").hide();
		return true;
	}
	function etTitle(){
		var title=$('input[name=tTitle]').val();
		if(title==null||title==""){
			$("#zhuti").show();
			return false;
		}
		$("#zhuti").hide();
		return true;
	}
	function etContent(){
		var content=$('input[name=tContent]').val();
		if(content==null||content==""||content=="<p><br></p>"){
			$('#neirong').show();
			return false;
		}
		$('#neirong').hide();
		return true;
	}
	function bjq() {
		if(etSId()&etLabel()&etTitle()&etContent()){	
			document.forms[0].submit();
		}
	}
</script>
</head>
<body id="colloaBody">
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr valign="top">
				<td id="colloaForm"><form action="../../Topic.do?action=add1" method="post">
						<table class="tableForm" style="table-layout: fixed;" summary=""
							cellspacing="0" cellpadding="0" border="0">
							<colgroup>
								<col width="10%">
								<col width="40%">
								<col width="20%">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td class="fieldLable"><b style="color: red;">*</b>分类</td>
									<td id="dbf.psid" colspan="2"
										dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.postX.discuss' and statusX>0 order by sortId,name"
										dbf.key="0" dbf.type="required!0">
										<span id="n1" style="padding-right: 100px">&nbsp;合理化建议</span>
										<img id="t1" src="css/fieldSource.gif">
										<input type="hidden"
										name="tSId" value="1"></td>
										<td></td>
								</tr>
								<tr>
									<td class="fieldLable"><b style="color: red;">*</b>标签</td>
									<td id="dbf.keyInfo" colspan="2"><input id="e.dbf.keyInfo"
										name="tLabel" onblur="etLabel()" style="border: 0px none;background-color: rgb(243, 250, 255);" size="65px" required="required" placeholder="请输入标签"></td>
									<td>
										<span id="gjz" style="color: red;display: none;background-color: #fffccc;">&nbsp;&nbsp;&nbsp;&nbsp;关键字不能为空</span>
									</td>
								</tr>
								<tr>
									<td class="fieldLable"><b style="color: red;">*</b>主题</td>
									<td colspan="2"><input
										id="e.dbf.name" name="tTitle" onblur="etTitle()" size="65px" style="border: 0px none;background-color: rgb(243, 250, 255);" required="required" placeholder="请输入主题"></td>
									<td><span id="zhuti" style="color: red;display: none;background-color: #fffccc;">&nbsp;&nbsp;&nbsp;&nbsp;主题不能为空</span></td>
								</tr>
								<tr>
									<td id="dbf.memoContent" colspan="4" dbf.type="html,required"><textarea
											id="e.dbf.memoContent" class="fieldEditable"
											style="height: 360px; visibility: hidden; display: none;"
											dbf.type="htm"></textarea></td>
								</tr>
								<tr>
									<div style="padding: 0 20px;">
										<td id="content" style="vertical-align: top;" dbf.source=""
											dbf.type="html">
											<link rel="stylesheet" type="text/css"
												href="../../bjq/dist/css/wangEditor.min.css">
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
												<div id="editor-trigger" >
													
												</div>
												<!-- <textarea id="editor-trigger" style="display:none;">
            <p>请输入内容...</p>
        </textarea> -->	
											</div>
											<input type="hidden" name="tContent">
											<script
												type="text/javascript"
												src="../../bjq/dist/js/lib/jquery-1.10.2.min.js"></script> <script
												type="text/javascript" src="../../bjq/dist/js/wangEditor.js"></script>
											<!--<script type="text/javascript" src="../dist/js/wangEditor.min.js"></script>-->
											<script type="text/javascript">
												// 阻止输出log
												// wangEditor.config.printLog = false;

												var editor = new wangEditor(
														'editor-trigger');

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
												editor.onchange = function() {
													console.log(this.$txt
															.html());

													// 获取编辑器区域完整html代码
													var html = editor.$txt
															.html();
													$("input[name=tContent]").val(html);
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
											</script>
											 <span style="color: red;display: none;background-color: #fffccc;" id="neirong" >
				                          		&nbsp;输入的帖子内容
				                          	</span>
										</td>
									</div>
								</tr>
							</tbody>
						</table>
					</form>
					<form method="post">
						<input id="viewState" name="viewState" type="hidden">
					</form> <script language="javaScript">
						/* Code removed by ScrapBook */
					</script><br>
					<div id="_vWorkflowActionsShow" align="right">
						<a class="button" onclick="bjq()">确定</a><a href="javascript:history.go(-1)"
							class="button">取消</a>
					</div> <br></td>
			</tr>
		</tbody>
	</table>
	<div id="f1"
		style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 340px; top: 55px; left: 140px; display: none;">
		<div id="155040" style="height: auto; padding-left: 5px;">合理化建议</div>
		<div id="155020" style="height: auto; padding-left: 5px;">技术交流</div>
		<div id="155010" style="height: auto; padding-left: 5px;">企业文化</div>
		<div id="155030" style="height: auto; padding-left: 5px;">生活娱乐</div>
	</div>
	<div id="f2"
		style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 815px; top: 105px; left: 295px; display: none;">
		<iframe src="css/zssq_sqft_index_7.html"
			style="width: 100%; height: 95%;" frameborder="0"></iframe>
	</div>
</body>
</html>
