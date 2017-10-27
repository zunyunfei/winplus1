<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/winplus/resources/web/images/icon.ico" type="image/x-icon"
	rel="shortcut icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/winplus/resources/sys/ying/iconfont.css">
<link rel="stylesheet" href="/winplus/resources/sys/style/bootstrap.css">
<link rel="stylesheet" href="/winplus/resources/sys/style/style.css">
<script type="text/javascript" src="/winplus/resources/sys/js/jquery.js"></script>
<title>后台首页</title>
</head>
<body>

	<div class="box-right-main">
		<h2>
			<span class="glyphicon glyphicon-play" style="margin-right: 5px"></span>管理员账号
		</h2>

		<div class="tablelist">
			<table class="table tabletop">
				<tr>
					<td class="pull-right" style="padding-right: 30px">
			   <a href="<%=basePath%>toadd">新增</a></td>
				</tr>
			</table>
			<form action=""></form>
			<table class="table table-bordered tablebox">
				<tr class="center">
					<td>序号</td>
					<td>用户名</td>
					<td>角色</td>
					<td>手机号</td>
					<td>创建时间</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${ulist}" var="u">
					<tr>
						<td>${u.id}</td>
						<td>${u.user_name}</td>
						<td>${u.role.permission_ename}</td>
						<td>${u.mobile_Phone}</td>
						<td>${u.create_date}</td>
						<td><a href="${base}/sys/eidtUserView/${u.id}"
							class="btn btn-primary btn-sm">编辑</a>
							 <a href="javascript:;"id="${u.id}" class="btn btn-primary btn-sm delUser">删除</a></td>
					</tr>
				</c:forEach>
			</table>

		</div>
		<!-- 内容结束 -->

	</div>
	<!-- 容器结束 -->
</body>
<table class="table table-bordered tablebox">
			<tr align="center">
				<td>
				共有${count}条记录&nbsp;&nbsp; 当前第${pagerow }页/共${pagetotal}页&nbsp;&nbsp;
				</td>
			</tr>
		</table>
<script type="text/javascript">
	$(function() {
		$(".add").click(function() {
			window.location.href = "${base}/sys/addAccountPage";
		});

		$(".delUser").click(function() {
			if(confirm("你确定要删除吗？")){
				var uid = $(this).attr("uid");
				$.post("${base}/sys/delUser/" + uid, function(result) {
					if (result.code == 0) {
						location.reload();
						;
					}
					;
				}, 'json');
			}
		});
	});
</script>













<!-- 
<form action="user" method="post">
<table width="1000px" border="1">
<tr align="center">
<td>序号</td>
<td>用户名</td>
<td>角色</td>
<td>手机号</td>
<td>创建时间</td>
<td>操作</td>
</tr>
<c:forEach items="${ulist}" var="u">
<tr>
<td>${u.id}</td>
<td>${u.user_name}</td>
<td>${u.role.permission_ename}</td>
<td>${u.mobile_Phone}</td>
<td>${u.create_date}</td>
<td><a href="toupdate?id=${u.id}">编辑</a>
<a href="delete?id=${u.id}">删除</a>
</td>
</tr>
</c:forEach>
</table>
<table align="center" width="1000px" border="1">
			<tr align="center">
				<td>
				共有${count}条记录&nbsp;&nbsp; 当前第${pagerow }页/共${pagetotal}页&nbsp;&nbsp;
		
				</td>

			</tr>
		</table>

</form>
</center>
 -->
</body>
</html>