<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title></title>
    <style>
        .left {
            width: 100px;
            height: 95%;
            display: inline-block;
            position: absolute;
            text-align: center;
        }
        .top{
            height: 50px;
            width: 95%;
            display: inline-block;
            position: absolute;
            margin-left: 100px;
            text-align: right;
        }
        .left,.top{
        }

    </style>
</head>
<body>
<div class="left">
    <h2>操作</h2>
    <a href="/emp/toAdd" target="main">添加员工</a> <br>
    <a href="/emp/findAll" target="main">查看员工</a>
</div>
<div class="top">
    <h3 style="display: inline-block;position: absolute;left: 750px">欢迎你：${username}</h3>
</div>

<div style="display: inline-block;margin-left: 130px;width: 95%;height: 90%">
    <iframe height="100%" width="100%" name="main" style="margin-top: 50px" frameborder="0" src="/emp/findAll">
    </iframe>
</div>


</body>
</html>
