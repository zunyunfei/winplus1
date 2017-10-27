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
<form action="<%=basePath%>add" method="post"></form>
<table width="1000px" border="1">
<tr align="center">
<td>序号</td>
<td><input type="text" name="id"></td>
</tr>

<tr align="center">
<td>用户名</td>
<td><input type="text" name="user_name"></td>
</tr>
<tr align="center">   
<td>角色</td>
<td>
<select name="role.role_id">
<option value="">请选择</option>
<c:forEach items="${rlist}" var="r">
<option value="${r.role_id}">${r.permission_ename}</option>
</c:forEach>
</select>

</td>
</tr>
<tr align="center">

<td>手机号</td>
<td><input type="text" name="mobile_Phone"></td>
</tr>
<tr align="center">
<td>创建时间</td>
<td><input type="text" name="create_date"></td>
</tr>

<tr align="center">
<td colspan="2"><input type="submit" value="提交"></td>
</tr>
</table>
</center>
</body>
</html>