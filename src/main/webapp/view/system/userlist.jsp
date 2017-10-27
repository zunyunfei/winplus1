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

<table width="1000px" border="1">
<tr align="right">
<td>
<a href=<%=basePath %>toadd>新增</a>
</td>
</tr>
</table>
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

</body>
</html>