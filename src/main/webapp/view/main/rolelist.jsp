<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/winplus/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">
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
<center>
      <div class="box-right-main">
                        <h2><span class="glyphicon glyphicon-play" style="margin-right:5px"></span>角色管理</h2>

                      <div class="tablelist">
                        <table class="table tabletop">
                        <tr>
                         <td class="pull-right" style="padding-right:30px">
                         <a href="<%=basePath%>toadd">新增</a></td>
                        </tr>     
                        </table>

<form action="user" method="post">
<table  class="table table-bordered tablebox">
<tr align="center">
<td>序号</td>
<td>角色名</td>
<td>角色描述</td>
<td>创建时间</td>
<td>菜单配置</td>
</tr>
<c:forEach items="${rlist}" var="r">
<tr>
<td>${r.role_id}</td>
<td>${r.permission_ename}</td>
<td>${r.permissionmiaoshu}</td>
<td>${r.create_date}</td>
<td><a href="user?id=${b.roleid}">菜单配置</a>
</td>
</tr>
</c:forEach>
</table>
<table class="table table-bordered tablebox">
			<tr align="center">
				<td>
				共有${count}条记录&nbsp;&nbsp; 当前第${pagerow }页/共${pagetotal}页&nbsp;&nbsp;
				</td>
			</tr>
		</table>

</form>
</center>
</body>
</html>