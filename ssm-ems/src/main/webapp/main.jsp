<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath=request.getScheme()+"://" +request.getServerName() +":" +request.getServerPort() +request.getContextPath() +"/"; %> <base href= <%=basePath%>>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>员工管理系统</title>
    <%--<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-green">
        <div class="layui-logo layui-hide-xs layui-bg-green" style="font-size:20px;font-weight: bold;letter-spacing: 2px;">员工管理系统</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:">
                    <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"
                         class="layui-nav-img">
                    张三
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:" id="password">修改密码</a></dd>
                    <dd><a href="index.html">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test" lay-shrink="all">
                <li class="layui-nav-item">
                    <a class="layui-icon layui-icon-home" href="javascript:"> 首页</a>
                    <dl class="layui-nav-child layui-nav-child-c">
                        <dd><a href="welcome.html" target="content">欢迎页</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="layui-icon layui-icon-set" href="javascript:"> 管理员信息管理</a>
                    <dl class="layui-nav-child layui-nav-child-c">
                        <dd><a href="adduser.html" target="content">新增管理员信息</a></dd>
                        <dd><a href="listuser.html" target="content">管理员信息列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="layui-icon layui-icon-tabs" href="javascript:"> 部门信息管理</a>
                    <dl class="layui-nav-child layui-nav-child-c">
                        <dd><a href="adddepartment.html" target="content">新增部门信息</a></dd>
                        <dd><a href="listdepartment.html" target="content">部门信息列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a class="layui-icon layui-icon-user" href="javascript:"> 员工信息管理</a>
                    <dl class="layui-nav-child layui-nav-child-c">
                        <dd><a href="addemployee.html" target="content">新增员工信息</a></dd>
                        <dd><a href="listemployee.html" target="content">员工信息列表</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div id="title" style="font-size:16px; font-weight:bold; color:#009688; padding:15px; border-bottom:1px solid #ccc;">
            欢迎使用员工管理系统
        </div>
        <iframe src="" name="content" frameborder="0" width="95%" height="100%" style="padding: 20px;"></iframe>
    </div>

    <div class="layui-footer" style="text-align: center;">
        <!-- 底部固定区域 -->
        版权所有
    </div>
</div>

<!-- 修改密码 -->
<div id="passwordLayer" style="display: none; margin-top: 30px; margin-right: 30px">
    <form class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">原密码</label>
            <div class="layui-input-inline">
                <input type="password" name="oldpassword" required lay-verify="required" placeholder="请输入原密码" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码</label>
            <div class="layui-input-inline">
                <input type="password" name="newpassword" required lay-verify="required" placeholder="请输入新密码" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码</label>
            <div class="layui-input-inline">
                <input type="password" name="repassword" required lay-verify="required" placeholder="请再次输入新密码" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="passwordModify">修&nbsp;&nbsp;&nbsp;&nbsp;改</button>
            </div>
        </div>
    </form>
</div>

<script src="./layui/layui.js"></script>
<script>
    //JS
    layui.use(['form', 'layer', 'util'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,$ = layui.$;

        // 监听弹出层
        $('#password').on('click',function(){
            layer.open({
                type:1,
                title:'修改密码',
                content:$('#passwordLayer'),
            })
        });

        // 监听修改密码事件
        form.on('submit(passwordModify)',function(data){
            layer.msg(JSON.stringify(data.field));

            return false // 阻止表单的提交
        });

        // 点击左侧菜单时，改变右边的标题
        $(".layui-nav a[target]").on('click',function () {
            $("#title").html($(this).html());
        })

    });
</script>
</body>

</html>