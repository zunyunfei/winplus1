<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.mianfeimoban.com</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(<%=basePath %>main/images/left.gif);
}
-->
</style>
<link href="<%=basePath %>main/css/css.css" rel="stylesheet"
	type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="<%=basePath %>main/images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="<%=basePath %>main/images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="<%=basePath %>main/images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="<%=basePath %>main/images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="<%=basePath %>main/images/ico04.gif";
	}
}

</SCRIPT>

<body>
	<table width="198" border="0" cellpadding="0" cellspacing="0"
		class="left-table01">
		<tr>
			<TD>
				
				<!-- 菜单栏：理财产品 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%"><img name="img5" id="img5"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('5');"
										style="font-size: 18px; text-decoration: none;">理财产品</a></td>
								</tr>
							</table></td>
					</tr>
				</table> 
				
				
				<!-- 理财产品：固收类 、  私募/股权类  、 海外基金-->
				<table id="subtree5" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu13"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="<%=basePath %>mainsubject"
							target="mainFrame" class="left-font03" onClick="tupian('13');">固收类</a></td>
					</tr>
					<tr>
						<td height="20"><img id="xiaotu14"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td><a href="addquanxian.html" target="mainFrame"
							class="left-font03" onClick="tupian('14');">私募/股权类</a></td>
					</tr>

					<tr>
						<td height="20"><img id="xiaotu14"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td><a href="addquanxian.html" target="mainFrame"
							class="left-font03" onClick="tupian('14');">海外基金</a></td>
					</tr>
				</table> 
				
				
				<!-- 菜单栏：钱包管理 -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img8" id="img8"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('8');"
										style="font-size: 18px; text-decoration: none;">钱包管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE> 
				
				
				<!-- 钱包管理：钱包缴费记录-->
				<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu20"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="addrenwu.htm" target="mainFrame"
							class="left-font03" onClick="tupian('20');">钱包缴费记录</a></td>
					</tr>
				</table> 
				
				
				<!-- 菜单栏：学院管理 -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img7" id="img7"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('7');"
										style="font-size: 18px; text-decoration: none;">学院管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE> 
				
				
				<!-- 学院管理：资讯分类 、资讯管理-->
				<table id="subtree7" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu17"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="sendxiaoxi.htm" target="mainFrame"
							class="left-font03" onClick="tupian('17');">资讯分类</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu18"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listtakexiaoxi.htm"
							target="mainFrame" class="left-font03" onClick="tupian('18');">资讯管理</a></td>
					</tr>
				</table> 
				
			
				<!-- 菜单栏：会员管理 -->
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29">
							<table width="85%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="8%"><img name="img1" id="img1"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('1');"
										style="font-size: 18px; text-decoration: none;">会员管理</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</TABLE> 
				
				
				<!-- 会员管理：账号管理 、理财师审核 、绑卡管理、付息计划、充值管理、提现管理、邀请奖励-->
				<table id="subtree1" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu1"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listxiangmuxinxi.htm"
							target="mainFrame" class="left-font03" onClick="tupian('1');">账号管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu4"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listjihua.htm" target="mainFrame"
							class="left-font03" onClick="tupian('4');">理财师审核</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu2"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listxuqiu.htm" target="mainFrame"
							class="left-font03" onClick="tupian('2');">绑卡管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu5"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listmokuai.htm" target="mainFrame"
							class="left-font03" onClick="tupian('5');">付息计划</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu3"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listgongneng.htm" target="mainFrame"
							class="left-font03" onClick="tupian('3');">充值管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu6"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listshangchuan.htm"
							target="mainFrame" class="left-font03" onClick="tupian('6');">提现管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu7"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listchengbenxinxi.htm"
							target="mainFrame" class="left-font03" onClick="tupian('7');">邀请奖励</a></td>
					</tr>
				</table> 
				
				
				<!-- 菜单栏：盈+统计 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img2" id="img2"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('2');"
										style="font-size: 18px; text-decoration: none;">盈+统计</a></td>
								</tr>
							</table></td>
					</tr>
				</table> 
				
				
				<!-- 盈+统计：财务统计、用户综合统计-->
				<table id="subtree2" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu7"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listkehuxinxi.html"
							target="mainFrame" class="left-font03" onClick="tupian('7');">财务统计</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu7"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listkehuxinxi.html"
							target="mainFrame" class="left-font03" onClick="tupian('7');">用户综合统计</a></td>
					</tr>
				</table> 
				
				
				<!-- 菜单栏：盈+设置 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img3" id="img3"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('3');"
										style="font-size: 18px; text-decoration: none;">盈+设置</a></td>
								</tr>
							</table></td>
					</tr>
				</table>
				
				
				<!-- 盈+设置：公告管理 、  意见反馈-->
				<table id="subtree3" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu8"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listyuangong.html"
							target="mainFrame" class="left-font03" onClick="tupian('8');">公告管理</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu9"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listzhiwu.htm" target="mainFrame"
							class="left-font03" onClick="tupian('9');"> 意见反馈</a></td>
					</tr>
				</table>
				
				
				 <!-- 菜单栏：系统设置 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="left-table03">
					<tr>
						<td height="29"><table width="85%" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<tr>
									<td width="8%" height="12"><img name="img4" id="img4"
										src="<%=basePath %>main/images/ico04.gif" width="18"
										height="18" /></td>
									<td width="92%"><a href="javascript:" target="mainFrame"
										class="left-font03" onClick="list('4');"
										style="font-size: 18px; text-decoration: none;">系统设置</a></td>
								</tr>
							</table></td>
					</tr>
				</table> 
				
				
				<!-- 系统设置：账户设置、 角色设置  、 密码设置-->
				<table id="subtree4" style="DISPLAY: none" width="80%" border="0"
					align="center" cellpadding="0" cellspacing="0" class="left-table02">
					<tr>
						<td width="9%" height="20"><img id="xiaotu11"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listGongZiType.htm"
							target="mainFrame" class="left-font03" onClick="tupian('11');">账户设置</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu12"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listMonthYuanGongGongZi.htm"
							target="mainFrame" class="left-font03" onClick="tupian('12');">角色设置</a></td>
					</tr>
					<tr>
						<td width="9%" height="20"><img id="xiaotu12"
							src="<%=basePath %>main/images/ico06.gif" width="8" height="12" /></td>
						<td width="91%"><a href="listMonthYuanGongGongZi.htm"
							target="mainFrame" class="left-font03" onClick="tupian('12');">密码设置</a></td>
					</tr>
				</table>

			</TD>

		</tr>

	</table>
</body>
</html>