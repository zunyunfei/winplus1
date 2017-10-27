<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>项目管理系统 by www.mianfeimoban.com</title>
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
    <td height="10" background="<%=basePath %>main/images/top.gif"><table border="0" cellspacing="0" cellpadding="0">
      <tr align="center">
        <td width="80%"><img src="<%=basePath %>main/images/topa.png" width="1550" height="70" border="0" /></td>
        <td width="5%"><a href="#"><img src="<%=basePath %>main/images/topa1.png" width="140" height="70" border="0" /></a></td>
        <td width="5%"><a href="#"><img src="<%=basePath %>main/images/topa2.png" width="140" height="70" border="0" /></a></td>
      </tr>
    </table>
  </tr>
</table>
</body>
</html>