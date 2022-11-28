<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
        .error{
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
<h2>登录界面</h2>
<form action="${pageContext.request.contextPath}/user/login">
    <p class="error">${msg}</p>
    用户名：<input type="text" name="username"> <br>
    密码：<input type="password" name="password"> <br>
    <input type="submit" value="登录">
    <a href="${pageContext.request.contextPath}/user/toRegister">去注册</a>
</form>
</body>
</html>
