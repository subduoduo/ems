<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>员工管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</head>
<body>
<div class="container">
    <div class="wrapper">
        <h2>员工管理系统</h2>
        <form class="layui-form" action="/user/login" style="margin-right: 100px; margin-left: 30px;">
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <i class="layui-icon layui-icon-username" style="font-size: 30px; color: #333"></i>
                </label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <i class="layui-icon layui-icon-password" style="font-size: 30px; color: #333"></i>
                </label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">登&nbsp;&nbsp;&nbsp;&nbsp;陆</button>
                    <button type="reset" class="layui-btn">取&nbsp;&nbsp;&nbsp;&nbsp;消</button>
                    <a class="layui-font-green" style="margin-left: 40px;" id="register">立即注册</a>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- 用户注册 -->
<div id="registerLayer" style="display: none; margin-top: 30px; margin-right: 40px; width: 400px;">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-block">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-block">
                <input type="password" name="repassword" required lay-verify="required" placeholder="请输入确认密码" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-block">
                <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">年龄</label>
            <div class="layui-input-block">
                <input type="text" name="age" required  lay-verify="required" placeholder="请输入年龄" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="register" style="width: 180px;">立即注册</button>
            </div>
        </div>
    </form>
</div>

</div>

<script>
    layui.use(['layer','form'],function () {
        var layer = layui.layer;
        var form = layui.form;
        var $ = layui.jquery;

        // 监听弹出层
        $('#register').on('click',function(){
            layer.open({
                type:1,
                title:'用户注册',
                content:$('#registerLayer')
            })
        });

        // 监听注册事件
        form.on('submit(register)',function(data){
            layer.msg(JSON.stringify(data.field));

            return false // 阻止表单的提交
        })
    })
</script>
</body>
</html>

