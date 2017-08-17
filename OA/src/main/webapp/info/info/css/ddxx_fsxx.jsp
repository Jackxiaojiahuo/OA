<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/info";
%>
<!DOCTYPE html>
<html>
	<head>
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
	<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script>
	<script>
		$(function(){
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
		})
		function bjq(){
	
        var editor = new wangEditor('editor-trigger');
			// 获取编辑器区域完整html代码
			var html= editor.$txt.html();
			
			$("#html").text(html);
			$("#bjq").val(html.innerHTML);
		}
	</script>
	</head>
	<body id="colloaBody">
<table style="min-width: 950px; width: 100%; height: 100%;" cellspacing="0" cellpadding="0" border="0">
      <tbody>
    <tr valign="top">
          <td id="colloaForm"><form>
              <input type="hidden" id="bjq" name="bjq" value="">
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
                  <td id="dbf.subject" dbf.type="required"><input id="e.dbf.subject" class="fieldEditable"></td>
                  <td style="text-align: right;">优先级:&nbsp;</td>
                  <td><input id="dbf.priority" value="-1" name="dbf.priority" autocomplete="off" type="radio">
                      低
                      <input id="dbf.priority" checked="" value="0" name="dbf.priority" autocomplete="off" type="radio">
                      中
                      <input id="dbf.priority" value="1" name="dbf.priority" autocomplete="off" type="radio">
                      高</td>
                </tr>
                  <tr>
                  <td>&nbsp;收件人<b style="color: red;">*</b></td>
                  <td id="dbf.receiver"  colspan="3" dbf.type="required" dbf.source="form.fieldSource.userX" dbf.key=""><img class="fieldGetValueBySource" id="t1" src="css/fieldSource.gif">
                      <div id="e.dbf.receiverSource">&nbsp;</div></td>
                </tr>
                  <tr>
                  <td>&nbsp;抄送</td>
                  <td id="dbf.copyTo" colspan="3" dbf.source="form.fieldSource.userX" dbf.key=""><img class="fieldGetValueBySource" id="t2" src="css/fieldSource.gif">
                      <div id="e.dbf.copyToSource">&nbsp;</div></td>
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
                          <div id="editor-trigger"> </div>
                          <!-- <textarea id="editor-trigger" style="display:none;">
            <p>请输入内容...</p>
        </textarea> --> 
                        </div>
                      <p><br>
                        </p>
                      <div style="display: none" id="html"> </div>
                      <script type="text/javascript" src="../../bjq/dist/js/lib/jquery-1.10.2.min.js"></script> 
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

        // 表情显示项
        editor.config.emotionsShow = 'value';
        editor.config.emotions = {
            'default': {
                title: '默认',
                data: './emotions.data'
            },
            'weibo': {
                title: '微博表情',
                data: [
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/7a/shenshou_thumb.gif',
                        value: '[草泥马]'    
                    },
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif',
                        value: '[神马]'    
                    },
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/bc/fuyun_thumb.gif',
                        value: '[浮云]'    
                    },
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/c9/geili_thumb.gif',
                        value: '[给力]'    
                    },
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/f2/wg_thumb.gif',
                        value: '[围观]'    
                    },
                    {
                        icon: 'http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/70/vw_thumb.gif',
                        value: '[威武]'
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
        editor.onchange = function () {
            console.log(this.$txt.html());
			
			// 获取编辑器区域完整html代码
			var html= editor.$txt.html();
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
        <div id="_vWorkflowActionsShow" align="right"><a class="button" onClick="bjq()">保存</a><a class="button">发送</a><a href="javascript:history.go(-1)" class="button">取消</a></div>
        <br></td>
        </tr>
  </tbody>
    </table>
<div id="f2" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 130px; left: 280px; display: none;">
      <div style="padding-left: 0px;">
    <input id="10050" name="超级管理员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 超级管理员</div>
      <div style="padding-left: 0px;">
    <input id="1010" name="所有人" type="checkbox">
    <img src="css/userX0.gif" border="0"> 所有人</div>
      <div style="padding-left: 0px;">
    <input id="10010" name="系统管理员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 系统管理员</div>
      <div style="padding-left: 0px;">
    <input id="1000001" name="阿尔法集团" type="checkbox">
    <img src="css/userX0.gif" border="0"> 阿尔法集团</div>
      <div style="padding-left: 15px;">
    <input id="1000002" name="总经办" type="checkbox">
    <img src="css/userX0.gif" border="0"> 总经办</div>
      <div style="padding-left: 30px;">
    <input id="1000061" name="陈杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈杰</div>
      <div style="padding-left: 30px;">
    <input id="1000056" name="陈宗涛" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈宗涛</div>
      <div style="padding-left: 30px;">
    <input id="1000054" name="刘军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘军</div>
      <div style="padding-left: 30px;">
    <input id="1000111" name="王刚" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王刚</div>
      <div style="padding-left: 30px;">
    <input id="1000059" name="王耀中" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王耀中</div>
      <div style="padding-left: 30px;">
    <input id="1000053" name="周立强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 周立强</div>
      <div style="padding-left: 30px;">
    <input id="1000060" name="朱铁桥" type="checkbox">
    <img src="css/userX0.gif" border="0"> 朱铁桥</div>
      <div style="padding-left: 30px;">
    <input id="1000014" name="总经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 总经理</div>
      <div style="padding-left: 30px;">
    <input id="1000015" name="副总经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 副总经理</div>
      <div style="padding-left: 15px;">
    <input id="1000003" name="人事部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 人事部</div>
      <div style="padding-left: 30px;">
    <input id="1000069" name="陈莹" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈莹</div>
      <div style="padding-left: 30px;">
    <input id="1000068" name="王萍" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王萍</div>
      <div style="padding-left: 30px;">
    <input id="1000067" name="吴燕" type="checkbox">
    <img src="css/userX0.gif" border="0"> 吴燕</div>
      <div style="padding-left: 30px;">
    <input id="1000017" name="人事经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 人事经理</div>
      <div style="padding-left: 30px;">
    <input id="1000030" name="绩效专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 绩效专员</div>
      <div style="padding-left: 30px;">
    <input id="1000028" name="行政专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 行政专员</div>
      <div style="padding-left: 30px;">
    <input id="1000029" name="招聘专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 招聘专员</div>
      <div style="padding-left: 15px;">
    <input id="1000004" name="财务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 财务部</div>
      <div style="padding-left: 30px;">
    <input id="1000076" name="陈有道" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈有道</div>
      <div style="padding-left: 30px;">
    <input id="1000073" name="刘长玉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘长玉</div>
      <div style="padding-left: 30px;">
    <input id="1000075" name="严必行" type="checkbox">
    <img src="css/userX0.gif" border="0"> 严必行</div>
      <div style="padding-left: 30px;">
    <input id="1000018" name="财务经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 财务经理</div>
      <div style="padding-left: 30px;">
    <input id="1000026" name="出纳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 出纳</div>
      <div style="padding-left: 30px;">
    <input id="1000025" name="会计" type="checkbox">
    <img src="css/userX0.gif" border="0"> 会计</div>
      <div style="padding-left: 15px;">
    <input id="1000117" name="科技公司" type="checkbox">
    <img src="css/userX0.gif" border="0"> 科技公司</div>
      <div style="padding-left: 30px;">
    <input id="1000005" name="采购部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购部</div>
      <div style="padding-left: 45px;">
    <input id="1000087" name="刘大军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘大军</div>
      <div style="padding-left: 45px;">
    <input id="1000086" name="陈龙天" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈龙天</div>
      <div style="padding-left: 45px;">
    <input id="1000094" name="陈慧红" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈慧红</div>
      <div style="padding-left: 45px;">
    <input id="1000088" name="何以书" type="checkbox">
    <img src="css/userX0.gif" border="0"> 何以书</div>
      <div style="padding-left: 45px;">
    <input id="1000020" name="采购经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购经理</div>
      <div style="padding-left: 45px;">
    <input id="1000027" name="采购员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购员</div>
      <div style="padding-left: 30px;">
    <input id="1000009" name="技术部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 技术部</div>
      <div style="padding-left: 45px;">
    <input id="1000098" name="乐文" type="checkbox">
    <img src="css/userX0.gif" border="0"> 乐文</div>
      <div style="padding-left: 45px;">
    <input id="1000100" name="高大山" type="checkbox">
    <img src="css/userX0.gif" border="0"> 高大山</div>
      <div style="padding-left: 45px;">
    <input id="1000109" name="姜大声" type="checkbox">
    <img src="css/userX0.gif" border="0"> 姜大声</div>
      <div style="padding-left: 45px;">
    <input id="1000104" name="李华林" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李华林</div>
      <div style="padding-left: 45px;">
    <input id="1000099" name="王美丽" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王美丽</div>
      <div style="padding-left: 45px;">
    <input id="1000110" name="程茜" type="checkbox">
    <img src="css/userX0.gif" border="0"> 程茜</div>
      <div style="padding-left: 45px;">
    <input id="1000112" name="李浩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李浩</div>
      <div style="padding-left: 45px;">
    <input id="1000114" name="技术经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 技术经理</div>
      <div style="padding-left: 30px;">
    <input id="1000006" name="生产部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 生产部</div>
      <div style="padding-left: 45px;">
    <input id="1000064" name="李跃" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李跃</div>
      <div style="padding-left: 45px;">
    <input id="1000077" name="刘峰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘峰</div>
      <div style="padding-left: 45px;">
    <input id="1000066" name="石杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 石杰</div>
      <div style="padding-left: 45px;">
    <input id="1000083" name="赵斌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵斌</div>
      <div style="padding-left: 45px;">
    <input id="1000070" name="赵玉龙" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵玉龙</div>
      <div style="padding-left: 45px;">
    <input id="1000091" name="生产经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 生产经理</div>
      <div style="padding-left: 30px;">
    <input id="1000033" name="营销部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 营销部</div>
      <div style="padding-left: 45px;">
    <input id="1000105" name="李海燕" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李海燕</div>
      <div style="padding-left: 45px;">
    <input id="1000106" name="刘建华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘建华</div>
      <div style="padding-left: 45px;">
    <input id="1000108" name="杨磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杨磊</div>
      <div style="padding-left: 45px;">
    <input id="1000116" name="营销经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 营销经理</div>
      <div style="padding-left: 15px;">
    <input id="1000118" name="工程公司" type="checkbox">
    <img src="css/userX0.gif" border="0"> 工程公司</div>
      <div style="padding-left: 30px;">
    <input id="1000135" name="李琪" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李琪</div>
      <div style="padding-left: 30px;">
    <input id="1000120" name="工程部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 工程部</div>
      <div style="padding-left: 45px;">
    <input id="1000082" name="李白军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李白军</div>
      <div style="padding-left: 45px;">
    <input id="1000136" name="孙末" type="checkbox">
    <img src="css/userX0.gif" border="0"> 孙末</div>
      <div style="padding-left: 30px;">
    <input id="1000035" name="售后部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 售后部</div>
      <div style="padding-left: 45px;">
    <input id="1000138" name="王兰英" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王兰英</div>
      <div style="padding-left: 45px;">
    <input id="1000093" name="王霞美" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王霞美</div>
      <div style="padding-left: 45px;">
    <input id="1000139" name="朱红" type="checkbox">
    <img src="css/userX0.gif" border="0"> 朱红</div>
      <div style="padding-left: 45px;">
    <input id="1000115" name="售后经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 售后经理</div>
      <div style="padding-left: 30px;">
    <input id="1000008" name="网络部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 网络部</div>
      <div style="padding-left: 45px;">
    <input id="1000065" name="陈曦" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈曦</div>
      <div style="padding-left: 45px;">
    <input id="1000081" name="李倩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李倩</div>
      <div style="padding-left: 45px;">
    <input id="1000079" name="徐超" type="checkbox">
    <img src="css/userX0.gif" border="0"> 徐超</div>
      <div style="padding-left: 45px;">
    <input id="1000092" name="网络经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 网络经理</div>
      <div style="padding-left: 45px;">
    <input id="1000032" name="IT工程师" type="checkbox">
    <img src="css/userX0.gif" border="0"> IT工程师</div>
      <div style="padding-left: 30px;">
    <input id="1000034" name="销售部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售部</div>
      <div style="padding-left: 45px;">
    <input id="1000071" name="李萌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李萌</div>
      <div style="padding-left: 45px;">
    <input id="1000103" name="沈华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 沈华</div>
      <div style="padding-left: 45px;">
    <input id="1000089" name="沈涛辉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 沈涛辉</div>
      <div style="padding-left: 45px;">
    <input id="1000062" name="张旭" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张旭</div>
      <div style="padding-left: 45px;">
    <input id="1000085" name="张瑶瑶" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张瑶瑶</div>
      <div style="padding-left: 45px;">
    <input id="1000107" name="季道晓" type="checkbox">
    <img src="css/userX0.gif" border="0"> 季道晓</div>
      <div style="padding-left: 45px;">
    <input id="1000019" name="销售经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售经理</div>
      <div style="padding-left: 45px;">
    <input id="1000031" name="销售员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售员</div>
      <div style="padding-left: 15px;">
    <input id="1000119" name="现代事务所" type="checkbox">
    <img src="css/userX0.gif" border="0"> 现代事务所</div>
      <div style="padding-left: 30px;">
    <input id="1000125" name="李静" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李静</div>
      <div style="padding-left: 30px;">
    <input id="1000123" name="产权部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 产权部</div>
      <div style="padding-left: 45px;">
    <input id="1000130" name="谭升" type="checkbox">
    <img src="css/userX0.gif" border="0"> 谭升</div>
      <div style="padding-left: 45px;">
    <input id="1000126" name="王芳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王芳</div>
      <div style="padding-left: 30px;">
    <input id="1000122" name="法务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 法务部</div>
      <div style="padding-left: 45px;">
    <input id="1000127" name="刘伟" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘伟</div>
      <div style="padding-left: 45px;">
    <input id="1000132" name="秦志强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 秦志强</div>
      <div style="padding-left: 30px;">
    <input id="1000124" name="税务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 税务部</div>
      <div style="padding-left: 45px;">
    <input id="1000128" name="王磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王磊</div>
      <div style="padding-left: 45px;">
    <input id="1000133" name="王中磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王中磊</div>
      <div style="padding-left: 30px;">
    <input id="1000121" name="咨询部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 咨询部</div>
      <div style="padding-left: 45px;">
    <input id="1000129" name="刘杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘杰</div>
      <div style="padding-left: 45px;">
    <input id="1000134" name="赵媛媛" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵媛媛</div>
      <div style="padding-left: 15px;">
    <input id="1000013" name="北京机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 北京机构</div>
      <div style="padding-left: 30px;">
    <input id="1000045" name="范晶" type="checkbox">
    <img src="css/userX0.gif" border="0"> 范晶</div>
      <div style="padding-left: 30px;">
    <input id="1000040" name="舒文杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 舒文杰</div>
      <div style="padding-left: 30px;">
    <input id="1000044" name="汤家鹏" type="checkbox">
    <img src="css/userX0.gif" border="0"> 汤家鹏</div>
      <div style="padding-left: 30px;">
    <input id="1000038" name="王伟中" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王伟中</div>
      <div style="padding-left: 30px;">
    <input id="1000037" name="王艳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王艳</div>
      <div style="padding-left: 30px;">
    <input id="1000042" name="萧利" type="checkbox">
    <img src="css/userX0.gif" border="0"> 萧利</div>
      <div style="padding-left: 30px;">
    <input id="1000043" name="张超" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张超</div>
      <div style="padding-left: 30px;">
    <input id="1000041" name="张娜娜" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张娜娜</div>
      <div style="padding-left: 30px;">
    <input id="1000036" name="张倩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张倩</div>
      <div style="padding-left: 30px;">
    <input id="1000022" name="北京分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 北京分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000011" name="杭州机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杭州机构</div>
      <div style="padding-left: 30px;">
    <input id="1000046" name="陈斌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈斌</div>
      <div style="padding-left: 30px;">
    <input id="1000047" name="张传栋" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张传栋</div>
      <div style="padding-left: 30px;">
    <input id="1000048" name="陈君" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈君</div>
      <div style="padding-left: 30px;">
    <input id="1000049" name="胡梦泉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 胡梦泉</div>
      <div style="padding-left: 30px;">
    <input id="1000050" name="薛明伟" type="checkbox">
    <img src="css/userX0.gif" border="0"> 薛明伟</div>
      <div style="padding-left: 30px;">
    <input id="1000021" name="杭州分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杭州分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000010" name="上海机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 上海机构</div>
      <div style="padding-left: 30px;">
    <input id="1000101" name="李欣" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李欣</div>
      <div style="padding-left: 30px;">
    <input id="1000095" name="王红梅" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王红梅</div>
      <div style="padding-left: 30px;">
    <input id="1000096" name="张秀云" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张秀云</div>
      <div style="padding-left: 30px;">
    <input id="1000102" name="张志强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张志强</div>
      <div style="padding-left: 30px;">
    <input id="1000023" name="上海分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 上海分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000012" name="深圳机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 深圳机构</div>
      <div style="padding-left: 30px;">
    <input id="1000051" name="王丽萍" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王丽萍</div>
      <div style="padding-left: 30px;">
    <input id="1000052" name="魏海洋" type="checkbox">
    <img src="css/userX0.gif" border="0"> 魏海洋</div>
      <div style="padding-left: 30px;">
    <input id="1000055" name="刘浩然" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘浩然</div>
      <div style="padding-left: 30px;">
    <input id="1000057" name="吴微" type="checkbox">
    <img src="css/userX0.gif" border="0"> 吴微</div>
      <div style="padding-left: 30px;">
    <input id="1000058" name="陈建华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈建华</div>
      <div style="padding-left: 30px;">
    <input id="1000024" name="深圳分公司经理" type="checkbox">
    <img src="css/zssq_sqft_index_7.html" border="0"> 深圳分公司经理</div>
    </div>
<div id="f3" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 153px; left: 280px; display: none;">
      <iframe src="css/zssq_sqft_index_7.html" style="width: 100%; height: 95%;" frameborder="0"></iframe>
    </div>
<div id="f1" style="position: absolute; z-index: 10; background-color: rgb(255, 255, 255); cursor: default; border: 1px solid rgb(221, 221, 221); box-sizing: border-box; padding: 5px; overflow-x: hidden; overflow-y: auto; height: 250px; width: 830px; top: 105px; left: 280px; display: none;">
      <div style="padding-left: 0px;">
    <input id="10050" name="超级管理员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 超级管理员</div>
      <div style="padding-left: 0px;">
    <input id="1010" name="所有人" type="checkbox">
    <img src="css/userX0.gif" border="0"> 所有人</div>
      <div style="padding-left: 0px;">
    <input id="10010" name="系统管理员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 系统管理员</div>
      <div style="padding-left: 0px;">
    <input id="1000001" name="阿尔法集团" type="checkbox">
    <img src="css/userX0.gif" border="0"> 阿尔法集团</div>
      <div style="padding-left: 15px;">
    <input id="1000002" name="总经办" type="checkbox">
    <img src="css/userX0.gif" border="0"> 总经办</div>
      <div style="padding-left: 30px;">
    <input id="1000061" name="陈杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈杰</div>
      <div style="padding-left: 30px;">
    <input id="1000056" name="陈宗涛" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈宗涛</div>
      <div style="padding-left: 30px;">
    <input id="1000054" name="刘军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘军</div>
      <div style="padding-left: 30px;">
    <input id="1000111" name="王刚" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王刚</div>
      <div style="padding-left: 30px;">
    <input id="1000059" name="王耀中" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王耀中</div>
      <div style="padding-left: 30px;">
    <input id="1000053" name="周立强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 周立强</div>
      <div style="padding-left: 30px;">
    <input id="1000060" name="朱铁桥" type="checkbox">
    <img src="css/userX0.gif" border="0"> 朱铁桥</div>
      <div style="padding-left: 30px;">
    <input id="1000014" name="总经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 总经理</div>
      <div style="padding-left: 30px;">
    <input id="1000015" name="副总经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 副总经理</div>
      <div style="padding-left: 15px;">
    <input id="1000003" name="人事部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 人事部</div>
      <div style="padding-left: 30px;">
    <input id="1000069" name="陈莹" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈莹</div>
      <div style="padding-left: 30px;">
    <input id="1000068" name="王萍" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王萍</div>
      <div style="padding-left: 30px;">
    <input id="1000067" name="吴燕" type="checkbox">
    <img src="css/userX0.gif" border="0"> 吴燕</div>
      <div style="padding-left: 30px;">
    <input id="1000017" name="人事经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 人事经理</div>
      <div style="padding-left: 30px;">
    <input id="1000030" name="绩效专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 绩效专员</div>
      <div style="padding-left: 30px;">
    <input id="1000028" name="行政专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 行政专员</div>
      <div style="padding-left: 30px;">
    <input id="1000029" name="招聘专员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 招聘专员</div>
      <div style="padding-left: 15px;">
    <input id="1000004" name="财务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 财务部</div>
      <div style="padding-left: 30px;">
    <input id="1000076" name="陈有道" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈有道</div>
      <div style="padding-left: 30px;">
    <input id="1000073" name="刘长玉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘长玉</div>
      <div style="padding-left: 30px;">
    <input id="1000075" name="严必行" type="checkbox">
    <img src="css/userX0.gif" border="0"> 严必行</div>
      <div style="padding-left: 30px;">
    <input id="1000018" name="财务经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 财务经理</div>
      <div style="padding-left: 30px;">
    <input id="1000026" name="出纳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 出纳</div>
      <div style="padding-left: 30px;">
    <input id="1000025" name="会计" type="checkbox">
    <img src="css/userX0.gif" border="0"> 会计</div>
      <div style="padding-left: 15px;">
    <input id="1000117" name="科技公司" type="checkbox">
    <img src="css/userX0.gif" border="0"> 科技公司</div>
      <div style="padding-left: 30px;">
    <input id="1000005" name="采购部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购部</div>
      <div style="padding-left: 45px;">
    <input id="1000087" name="刘大军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘大军</div>
      <div style="padding-left: 45px;">
    <input id="1000086" name="陈龙天" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈龙天</div>
      <div style="padding-left: 45px;">
    <input id="1000094" name="陈慧红" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈慧红</div>
      <div style="padding-left: 45px;">
    <input id="1000088" name="何以书" type="checkbox">
    <img src="css/userX0.gif" border="0"> 何以书</div>
      <div style="padding-left: 45px;">
    <input id="1000020" name="采购经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购经理</div>
      <div style="padding-left: 45px;">
    <input id="1000027" name="采购员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 采购员</div>
      <div style="padding-left: 30px;">
    <input id="1000009" name="技术部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 技术部</div>
      <div style="padding-left: 45px;">
    <input id="1000098" name="乐文" type="checkbox">
    <img src="css/userX0.gif" border="0"> 乐文</div>
      <div style="padding-left: 45px;">
    <input id="1000100" name="高大山" type="checkbox">
    <img src="css/userX0.gif" border="0"> 高大山</div>
      <div style="padding-left: 45px;">
    <input id="1000109" name="姜大声" type="checkbox">
    <img src="css/userX0.gif" border="0"> 姜大声</div>
      <div style="padding-left: 45px;">
    <input id="1000104" name="李华林" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李华林</div>
      <div style="padding-left: 45px;">
    <input id="1000099" name="王美丽" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王美丽</div>
      <div style="padding-left: 45px;">
    <input id="1000110" name="程茜" type="checkbox">
    <img src="css/userX0.gif" border="0"> 程茜</div>
      <div style="padding-left: 45px;">
    <input id="1000112" name="李浩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李浩</div>
      <div style="padding-left: 45px;">
    <input id="1000114" name="技术经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 技术经理</div>
      <div style="padding-left: 30px;">
    <input id="1000006" name="生产部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 生产部</div>
      <div style="padding-left: 45px;">
    <input id="1000064" name="李跃" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李跃</div>
      <div style="padding-left: 45px;">
    <input id="1000077" name="刘峰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘峰</div>
      <div style="padding-left: 45px;">
    <input id="1000066" name="石杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 石杰</div>
      <div style="padding-left: 45px;">
    <input id="1000083" name="赵斌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵斌</div>
      <div style="padding-left: 45px;">
    <input id="1000070" name="赵玉龙" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵玉龙</div>
      <div style="padding-left: 45px;">
    <input id="1000091" name="生产经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 生产经理</div>
      <div style="padding-left: 30px;">
    <input id="1000033" name="营销部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 营销部</div>
      <div style="padding-left: 45px;">
    <input id="1000105" name="李海燕" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李海燕</div>
      <div style="padding-left: 45px;">
    <input id="1000106" name="刘建华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘建华</div>
      <div style="padding-left: 45px;">
    <input id="1000108" name="杨磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杨磊</div>
      <div style="padding-left: 45px;">
    <input id="1000116" name="营销经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 营销经理</div>
      <div style="padding-left: 15px;">
    <input id="1000118" name="工程公司" type="checkbox">
    <img src="css/userX0.gif" border="0"> 工程公司</div>
      <div style="padding-left: 30px;">
    <input id="1000135" name="李琪" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李琪</div>
      <div style="padding-left: 30px;">
    <input id="1000120" name="工程部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 工程部</div>
      <div style="padding-left: 45px;">
    <input id="1000082" name="李白军" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李白军</div>
      <div style="padding-left: 45px;">
    <input id="1000136" name="孙末" type="checkbox">
    <img src="css/userX0.gif" border="0"> 孙末</div>
      <div style="padding-left: 30px;">
    <input id="1000035" name="售后部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 售后部</div>
      <div style="padding-left: 45px;">
    <input id="1000138" name="王兰英" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王兰英</div>
      <div style="padding-left: 45px;">
    <input id="1000093" name="王霞美" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王霞美</div>
      <div style="padding-left: 45px;">
    <input id="1000139" name="朱红" type="checkbox">
    <img src="css/userX0.gif" border="0"> 朱红</div>
      <div style="padding-left: 45px;">
    <input id="1000115" name="售后经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 售后经理</div>
      <div style="padding-left: 30px;">
    <input id="1000008" name="网络部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 网络部</div>
      <div style="padding-left: 45px;">
    <input id="1000065" name="陈曦" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈曦</div>
      <div style="padding-left: 45px;">
    <input id="1000081" name="李倩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李倩</div>
      <div style="padding-left: 45px;">
    <input id="1000079" name="徐超" type="checkbox">
    <img src="css/userX0.gif" border="0"> 徐超</div>
      <div style="padding-left: 45px;">
    <input id="1000092" name="网络经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 网络经理</div>
      <div style="padding-left: 45px;">
    <input id="1000032" name="IT工程师" type="checkbox">
    <img src="css/userX0.gif" border="0"> IT工程师</div>
      <div style="padding-left: 30px;">
    <input id="1000034" name="销售部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售部</div>
      <div style="padding-left: 45px;">
    <input id="1000071" name="李萌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李萌</div>
      <div style="padding-left: 45px;">
    <input id="1000103" name="沈华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 沈华</div>
      <div style="padding-left: 45px;">
    <input id="1000089" name="沈涛辉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 沈涛辉</div>
      <div style="padding-left: 45px;">
    <input id="1000062" name="张旭" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张旭</div>
      <div style="padding-left: 45px;">
    <input id="1000085" name="张瑶瑶" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张瑶瑶</div>
      <div style="padding-left: 45px;">
    <input id="1000107" name="季道晓" type="checkbox">
    <img src="css/userX0.gif" border="0"> 季道晓</div>
      <div style="padding-left: 45px;">
    <input id="1000019" name="销售经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售经理</div>
      <div style="padding-left: 45px;">
    <input id="1000031" name="销售员" type="checkbox">
    <img src="css/userX0.gif" border="0"> 销售员</div>
      <div style="padding-left: 15px;">
    <input id="1000119" name="现代事务所" type="checkbox">
    <img src="css/userX0.gif" border="0"> 现代事务所</div>
      <div style="padding-left: 30px;">
    <input id="1000125" name="李静" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李静</div>
      <div style="padding-left: 30px;">
    <input id="1000123" name="产权部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 产权部</div>
      <div style="padding-left: 45px;">
    <input id="1000130" name="谭升" type="checkbox">
    <img src="css/userX0.gif" border="0"> 谭升</div>
      <div style="padding-left: 45px;">
    <input id="1000126" name="王芳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王芳</div>
      <div style="padding-left: 30px;">
    <input id="1000122" name="法务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 法务部</div>
      <div style="padding-left: 45px;">
    <input id="1000127" name="刘伟" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘伟</div>
      <div style="padding-left: 45px;">
    <input id="1000132" name="秦志强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 秦志强</div>
      <div style="padding-left: 30px;">
    <input id="1000124" name="税务部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 税务部</div>
      <div style="padding-left: 45px;">
    <input id="1000128" name="王磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王磊</div>
      <div style="padding-left: 45px;">
    <input id="1000133" name="王中磊" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王中磊</div>
      <div style="padding-left: 30px;">
    <input id="1000121" name="咨询部" type="checkbox">
    <img src="css/userX0.gif" border="0"> 咨询部</div>
      <div style="padding-left: 45px;">
    <input id="1000129" name="刘杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘杰</div>
      <div style="padding-left: 45px;">
    <input id="1000134" name="赵媛媛" type="checkbox">
    <img src="css/userX0.gif" border="0"> 赵媛媛</div>
      <div style="padding-left: 15px;">
    <input id="1000013" name="北京机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 北京机构</div>
      <div style="padding-left: 30px;">
    <input id="1000045" name="范晶" type="checkbox">
    <img src="css/userX0.gif" border="0"> 范晶</div>
      <div style="padding-left: 30px;">
    <input id="1000040" name="舒文杰" type="checkbox">
    <img src="css/userX0.gif" border="0"> 舒文杰</div>
      <div style="padding-left: 30px;">
    <input id="1000044" name="汤家鹏" type="checkbox">
    <img src="css/userX0.gif" border="0"> 汤家鹏</div>
      <div style="padding-left: 30px;">
    <input id="1000038" name="王伟中" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王伟中</div>
      <div style="padding-left: 30px;">
    <input id="1000037" name="王艳" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王艳</div>
      <div style="padding-left: 30px;">
    <input id="1000042" name="萧利" type="checkbox">
    <img src="css/userX0.gif" border="0"> 萧利</div>
      <div style="padding-left: 30px;">
    <input id="1000043" name="张超" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张超</div>
      <div style="padding-left: 30px;">
    <input id="1000041" name="张娜娜" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张娜娜</div>
      <div style="padding-left: 30px;">
    <input id="1000036" name="张倩" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张倩</div>
      <div style="padding-left: 30px;">
    <input id="1000022" name="北京分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 北京分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000011" name="杭州机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杭州机构</div>
      <div style="padding-left: 30px;">
    <input id="1000046" name="陈斌" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈斌</div>
      <div style="padding-left: 30px;">
    <input id="1000047" name="张传栋" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张传栋</div>
      <div style="padding-left: 30px;">
    <input id="1000048" name="陈君" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈君</div>
      <div style="padding-left: 30px;">
    <input id="1000049" name="胡梦泉" type="checkbox">
    <img src="css/userX0.gif" border="0"> 胡梦泉</div>
      <div style="padding-left: 30px;">
    <input id="1000050" name="薛明伟" type="checkbox">
    <img src="css/userX0.gif" border="0"> 薛明伟</div>
      <div style="padding-left: 30px;">
    <input id="1000021" name="杭州分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 杭州分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000010" name="上海机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 上海机构</div>
      <div style="padding-left: 30px;">
    <input id="1000101" name="李欣" type="checkbox">
    <img src="css/userX0.gif" border="0"> 李欣</div>
      <div style="padding-left: 30px;">
    <input id="1000095" name="王红梅" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王红梅</div>
      <div style="padding-left: 30px;">
    <input id="1000096" name="张秀云" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张秀云</div>
      <div style="padding-left: 30px;">
    <input id="1000102" name="张志强" type="checkbox">
    <img src="css/userX0.gif" border="0"> 张志强</div>
      <div style="padding-left: 30px;">
    <input id="1000023" name="上海分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 上海分公司经理</div>
      <div style="padding-left: 15px;">
    <input id="1000012" name="深圳机构" type="checkbox">
    <img src="css/userX0.gif" border="0"> 深圳机构</div>
      <div style="padding-left: 30px;">
    <input id="1000051" name="王丽萍" type="checkbox">
    <img src="css/userX0.gif" border="0"> 王丽萍</div>
      <div style="padding-left: 30px;">
    <input id="1000052" name="魏海洋" type="checkbox">
    <img src="css/userX0.gif" border="0"> 魏海洋</div>
      <div style="padding-left: 30px;">
    <input id="1000055" name="刘浩然" type="checkbox">
    <img src="css/userX0.gif" border="0"> 刘浩然</div>
      <div style="padding-left: 30px;">
    <input id="1000057" name="吴微" type="checkbox">
    <img src="css/userX0.gif" border="0"> 吴微</div>
      <div style="padding-left: 30px;">
    <input id="1000058" name="陈建华" type="checkbox">
    <img src="css/userX0.gif" border="0"> 陈建华</div>
      <div style="padding-left: 30px;">
    <input id="1000024" name="深圳分公司经理" type="checkbox">
    <img src="css/userX0.gif" border="0"> 深圳分公司经理</div>
    </div>
</body>
</html>
