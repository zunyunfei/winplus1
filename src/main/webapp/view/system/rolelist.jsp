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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action="user" method="post">
<table width="600px" border="1">
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
<table align="center" width="600px" border="1">
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