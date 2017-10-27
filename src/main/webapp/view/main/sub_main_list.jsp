<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%  
	String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目管理系统 by www.mianfeimoban.com</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="<%=basePath %>main/css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="<%=basePath %>main/css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="addrenwu.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="<%=basePath %>main/images/nav04.gif">
            
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		   
		   <form name="myform" action="" method="post">
		    <tr>
			  <td width="21"><img src="<%=basePath %>main/images/ico07.gif" width="20" height="18" /></td>
			  <td width="538">查看内容：名称：
				<input name="name" type="text" size="12"/>
				状态：
				<select name="status">
					<option value="">全部</option>
					<c:forEach items="${statusList }" var="statu">
						<option value="${statu.codevalue }">${statu.codename }</option>
					</c:forEach>
				</select>
				类型：
				<select name="type">
					<option value="">全部</option>
					<c:forEach items="${typeList }" var="type">
						<option value="${type.codevalue }">${type.codename }</option>
					</c:forEach>
				</select>
				<input type="submit" class="right-button02" value="查 询"/>
				
				</td>
			   </form>
		    </tr>
          </table></td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="11" align="center" style="font-size:16px">固收类/P2P</td>
                  </tr>
                  
                  <tr bgcolor="#EEEEEE">
				    <td width="4%" align="center" height="30">ID</td>
                    <td width="10%">合同编号</td>
					<td width="10%">类型</td>
                    <td width="10%">名称</td>
					<td width="10%">总金额</td>
					<td width="10%">已投总金额</td>
					<td width="10%">投资期限</td>
					<td width="10%">投资金额</td>
					<td width="10%">状态</td>
					<td width="10%">添加时间</td>
					<td width="12%">操作</td>
                  </tr>
                  <c:forEach items="${subpage.getContent() }" var="subject">
                  <tr bgcolor="#FFFFFF">
				    <td height="20">${subject.id}</td>
                    <td>${subject.serial_no}</td>
					<td>
					<c:if test="${subject.type==0}">固收类</c:if>
					<c:if test="${subject.type==1}">P2P车贷</c:if>
					<c:if test="${subject.type==2}">P2P房贷</c:if>
					</td>
                    <td>${subject.name}</td>
                    <td>${subject.amount}</td>
                    <td>0</td>
                    <td>${subject.period}天</td>
					<td>${subject.floor_amount}</td>
                    <td>
                    <c:if test="${subject.status==0}">未发布</c:if>
                    <c:if test="${subject.status==1}">募集中</c:if>
                    <c:if test="${subject.status==2}">回款中</c:if>
                    <c:if test="${subject.status==3}">还款完成</c:if>
                   </td>
                    <td>${subject.create_date}</td>
                    <td><a href="editrenwu.htm">编辑|查看</a><a href="listrenwumingxi.htm">查看投资</a></td>
                    
                  </tr>
				  </c:forEach>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="<%=basePath %>main/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09">${subpage.getTotalPages() }</span> 页 | 第 <span class="right-text09">${subpage.getNumber()+1}</span> 页</td>
                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>]</td>
               
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>

</body>
</html>