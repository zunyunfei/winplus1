<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath %>resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<link href="<%=basePath %>resources/web/font/iconfont.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>resources/web/css/common.css" rel="stylesheet">
<link href="<%=basePath %>resources/web/css/jw.css" rel="stylesheet">
<link href="<%=basePath %>resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">
<script src="<%=basePath %>resources/web/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>resources/web/layer/layer.js"></script>
<script src="<%=basePath %>resources/web/echart/dist/echarts.js"></script>
<title>登录</title>
 <style type="text/css">
       .error{
           color: #d43f3a;
        }
    </style>
</head>
<body>
<fieldset >
    <div class="proMain">
    	<div class="container">
            <div class="row login">
                <div class="loginPic">
                    <img src="<%=basePath %>resources/web/images/loginImg.png" />
                </div>
                <div class="loginBlock">
                    <img class="cornerImg" src="<%=basePath %>resources/web/images/loginCorner.png" />
                    <div class="item item1">
                        <div class="lLabel">
                            手机号 
                        </div>
                        <div class="lInput">
                         <input type="text" placeholder="手机号" id="phone" name="phone" class="form-control phone" /><span class="errorInfo">用户名不能为空</span>
                        </div>
                    </div>
                    <div class="item">
                        <div class="lLabel">
                            登录密码
                        </div>
                        <div class="lInput">
                            <img src="<%=basePath %>resources/web/images/passwordIcon.png" /><input type="password" placeholder="密码" id="password" name="password" class="form-control password" /><span class="errorInfo"></span>
                        </div>
                    </div>
                    <div class="rest">
                        <p class="error"></p>
                        <span id="loginError"></span><a class="forgetLink" href="${base}/web/forget">忘记密码？</a>
                    </div>
                    <div class="rest">
                        <button class="btn loginBtn submit">立即登录</button>
                    </div>
                    <div class="rest">
                        <span class="registUrl">没有账号？<a href="${base}/web/regis">免费注册</a></span>
                    </div>
        
                </div>
            </div>
        </div>
    </div>
    </fieldset>
<script type="text/javascript" src="<%=basePath %>resources/web/js/login.js"></script>

</body>
</html>