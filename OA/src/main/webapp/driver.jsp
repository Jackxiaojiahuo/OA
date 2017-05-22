<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="css/colloa.ico">
<link rel="stylesheet" href="css/jiashi-font-awesome.min.css">
<link rel="stylesheet" href="css/jiashi.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/corechart.js"></script>
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>
<script type="text/javascript">
	gvChartInit();
	$(document).ready(function() {
		$('#myTable1').gvChart({
			chartType : 'PieChart',
			gvSettings : {
				vAxis : {
					title : 'No of players'
				},
				hAxis : {
					title : 'Month'
				},
				width : 500,
				height : 350
			}
		});
	});
</script>
<script type="text/javascript">
	gvChartInit();
	$(document).ready(function() {
		$('#myTable2').gvChart({
			chartType : 'PieChart',
			gvSettings : {
				vAxis : {
					title : 'No of players'
				},
				hAxis : {
					title : 'Month'
				},
				width : 500,
				height : 350
			}
		});
	});
</script>
<script type="text/javascript">
	gvChartInit();
	$(document).ready(function() {
		$('#myTable3').gvChart({
			chartType : 'PieChart',
			gvSettings : {
				vAxis : {
					title : 'No of players'
				},
				hAxis : {
					title : 'Month'
				},
				width : 500,
				height : 350
			}
		});
	});
</script>
</head>
<body>
<table style="min-width: 120px; width: 100%; height: 100%;" border="0"
	cellpadding="0" cellspacing="0">
	<tbody>
		<tr valign="top">
			<td id="colloaContent">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td><h1>
									<img style="cursor: pointer;" src="css/menu.png"> 管理驾驶舱
								</h1></td>
							<td align="right"><script language="javaScript">
								/* Code removed by ScrapBook */
							</script><a
								class="button1 button1A" title="刷新">&nbsp;<i
									class="fa fa-bolt fa-lg"></i></a>
							<script language="javaScript">
								/* Code removed by ScrapBook */
							</script></td>
						</tr>
					</tbody>
				</table> <br>
				<table style="table-layout: fixed;" border="0" cellpadding="0"
					cellspacing="0">
					<colgroup>
						<col width="49%">
						<col width="2%">
						<col width="49%">
					</colgroup>
					<tbody>
						<tr valign="top">
							<td><div class="boxBorder1Caption">财务中心</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px;">
									<table style="text-align: center; table-layout: fixed;"
										border="0" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="33%">
											<col width="34%">
											<col width="33%">
										</colgroup>
										<tbody>
											<tr>
												<td class="sepratorRight">累计收入<br> <a
													class="textHighlight textBig"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=755000&amp;name=%u6536%u5165%u7BA1%u7406"><img
														src="css/coins.gif" border="0"> 845.5</a> 万
												</td>
												<td class="sepratorRight">累计支出<br> <a
													class="textHighlight textBig"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=755500&amp;name=%u652F%u51FA%u7BA1%u7406"><img
														src="css/coins.gif" border="0"> 302.9</a> 万
												</td>
												<td>累计差旅费<br> <a class="textHighlight textBig"
													href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=753100&amp;name=%u8d39%u7528%u7ba1%u7406&amp;ex.sid=753110"><img
														src="css/coins.gif" border="0"> 6.3</a> 万
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="boxBorder1Caption">项目管理</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px; margin-bottom: 0px; border-radius: 0px;">
									<table style="text-align: center; table-layout: fixed;"
										border="0" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="33%">
											<col width="34%">
											<col width="33%">
										</colgroup>
										<tbody>
											<tr>
												<td class="sepratorRight">全部项目<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=400100&amp;name=%u5168%u90E8%u9879%u76EE%u7BA1%u7406">23</a></td>
												<td class="sepratorRight">全部项目任务<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=400200&amp;name=%u5168%u90E8%u9879%u76EE%u4EFB%u52A1">121</a></td>
												<td>全部成本费用<br> <a class="textHighlight textBig"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=400400&amp;name=%u5168%u90E8%u6210%u672C%u8D39%u7528"><img
														src="css/coins.gif" border="0"> 181.3</a> 万
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="boxBorder1Content">
									<table id='myTable1'>
										<caption>不同状态的项目数</caption>
										<thead>
											<tr>
												<th></th>
												<th>实施中</th>
												<th>审批中</th>
												<th>已关闭</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th></th>
												<td>2000</td>
												<td>900</td>
												<td>100</td>
											</tr>
										</tbody>
									</table>
								</div>
								<table style="display: none;" border="0" cellpadding="0"
									cellspacing="0">
									<tbody id="tbData403000">
										<tr style="font-weight: bold;">
											<td>项目状态</td>
											<td>个数</td>
										</tr>
										<tr>
											<td>审批中</td>
											<td>1</td>
										</tr>
										<tr>
											<td>实施中</td>
											<td>13</td>
										</tr>
										<tr>
											<td>已关闭</td>
											<td>9</td>
										</tr>
									</tbody>
								</table> <script language="javaScript">
									/* Code removed by ScrapBook */
								</script>
								<div class="boxBorder1Caption">进销存管理</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px;">
									<table style="text-align: center; table-layout: fixed;"
										border="0" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="33%">
											<col width="34%">
											<col width="33%">
										</colgroup>
										<tbody>
											<tr valign="top">
												<td class="sepratorRight">销售订单<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=331600&amp;name=%u9500%u552e%u7ba1%u7406&amp;ex.sid=331610">23</a><img
													src="css/coins.gif"> 241.4 万
												</td>
												<td class="sepratorRight">采购订单<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogueEx.aspx?sid=331700&amp;name=%u91c7%u8d2d%u7ba1%u7406&amp;ex.sid=331710">23</a>
													<img src="css/coins.gif"> 206.0 万
												</td>
												<td>总库存量<a class="textHighlight textBig"
													style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=331400&amp;name=%u54C1%u79CD%u5E93%u5B58">4310</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="boxBorder1Caption">目标管理</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px;">
									<table style="text-align: center; table-layout: fixed;"
										border="0" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="33%">
											<col width="34%">
											<col width="33%">
										</colgroup>
										<tbody>
											<tr>
												<td class="sepratorRight">全部工作计划<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=132500&amp;name=%u5168%u90E8%u5DE5%u4F5C%u8BA1%u5212">67</a></td>
												<td class="sepratorRight">全部工作任务<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=133500&amp;name=%u5168%u90E8%u5DE5%u4F5C%u4EFB%u52A1">182</a></td>
												<td>全部工作报告<a class="textHighlight textBig"
													style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=134500&amp;name=%u5168%u90E8%u5DE5%u4F5C%u62A5%u544A">47</a></td>
											</tr>
										</tbody>
									</table>
								</div></td>
							<td></td>
							<td><div class="boxBorder1Caption">客户关系</div>
								<div class="boxBorder1Content"
									style="padding: 0px; min-height: 0px; margin-bottom: 0px; border-radius: 0px;">
									<table style="text-align: center; table-layout: fixed;"
										border="0" cellpadding="5" cellspacing="0">
										<colgroup>
											<col width="33%">
											<col width="34%">
											<col width="33%">
										</colgroup>
										<tbody>
											<tr>
												<td class="sepratorRight">全部客户<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=300100&amp;name=%u5168%u90E8%u5BA2%u6237">24</a></td>
												<td class="sepratorRight">全部商机<a
													class="textHighlight textBig" style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=300300&amp;name=%u5168%u90E8%u5546%u673A">22</a></td>
												<td>全部合同<a class="textHighlight textBig"
													style="display: block;"
													href="http://cloud.10oa.com/trial/view/catalogue.aspx?sid=300600&amp;name=%u5168%u90E8%u5408%u540C">23</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="boxBorder1Content">
									<table id='myTable2'>
										<caption>会员地区分布</caption>
										<thead>
											<tr>
												<th></th>
												<th>华硕</th>
												<th>联想</th>
												<th>微星</th>
												<th>三星</th>
												<th>苹果</th>
												<th>戴尔</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>1200</th>
												<td>540</td>
												<td>300</td>
												<td>150</td>
												<td>180</td>
												<td>120</td>
												<td>180</td>
											</tr>
										</tbody>
									</table>
								</div>
								<table style="display: none; text-align: center;" border="0"
									cellpadding="0" cellspacing="0">
									<tbody id="tbData303000">
										<tr style="font-weight: bold;">
											<td>商机状态</td>
											<td>金额</td>
										</tr>
										<tr>
											<td>进行中</td>
											<td>1715000.00</td>
										</tr>
										<tr>
											<td>已成交</td>
											<td>4420000.00</td>
										</tr>
										<tr>
											<td>已丢单</td>
											<td>160000.00</td>
										</tr>
										<tr>
											<td>已搁置</td>
											<td>1620000.00</td>
										</tr>
									</tbody>
								</table> <script type="text/javascript">
									/* Code removed by ScrapBook */
								</script>
								<div class="boxBorder1Caption">人力资源</div>
								<div class="boxBorder1Content">
									<table id='myTable3'>
										<caption>会员地区分布</caption>
										<thead>
											<tr>
												<th></th>
												<th>华硕</th>
												<th>联想</th>
												<th>微星</th>
												<th>三星</th>
												<th>苹果</th>
												<th>戴尔</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th>1200</th>
												<td>540</td>
												<td>300</td>
												<td>150</td>
												<td>180</td>
												<td>120</td>
												<td>180</td>
											</tr>
										</tbody>
									</table>
								</div>
								<table style="display: none;" border="0" cellpadding="0"
									cellspacing="0">
									<tbody id="tbData707000">
										<tr style="font-weight: bold;">
											<td>员工分类</td>
											<td>人数</td>
										</tr>
										<tr>
											<td>在职的员工</td>
											<td>71</td>
										</tr>
										<tr>
											<td>试用期员工</td>
											<td>4</td>
										</tr>
										<tr>
											<td>退休的员工</td>
											<td>3</td>
										</tr>
										<tr>
											<td>临时的员工</td>
											<td>2</td>
										</tr>
									</tbody>
								</table> <script language="javaScript">
									/* Code removed by ScrapBook */
								</script></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>
