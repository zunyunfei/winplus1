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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="<%=basePath %>main/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="59" background="<%=basePath %>main/images/top.gif"><table width="99%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="1%"><a href="http://www.mianfeimoban.com/admin-templates/" target="_blank"><img src="<%=basePath %>main/images/logo.gif" width="557" height="59" border="0" /></a></td>
        <td width="64%" align="right" style="font-size:12px;vertical-align:bottom;">&copy; 2009 <a href="http://www.mianfeimoban.com/" style="color:#0099FF;text-decoration:none;">www.mianfeimoban.com</a> QQ:215288671 Email:215288671@qq.com</td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>