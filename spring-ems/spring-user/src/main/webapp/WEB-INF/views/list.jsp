<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title></title>
    <style>
        table {
            width: 800px;
            border-collapse: collapse;
        }

        tr, td, th {
            border: 1px #ccc solid;
            text-align: center;
        }
       td,th{
           height: 50px;
       }
        #list{
            height: 666px;
        }
        .bottom{
            width: 800px;
            height: 150px;
            display: inline-block;
            position: absolute;
            text-align: center;

            padding-top: 20px;
        }
    </style>
</head>

<body>
<div id="list">
    <h2>员工管理界面</h2>
    <table>
        <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>身高</th>
            <th>生日</th>
            <th>部门</th>
        </tr>
        <c:forEach items="${emps}" var="emp" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${emp.name}</td>
                <td>${emp.age}</td>
                <td>${emp.sex}</td>
                <td>${emp.height}</td>
                <td>
                    <%--<fmt:formatDate value="${emp.birthday}" pattern="yyyy-MM-dd"/>--%>
                    ${emp.birthday}
                </td>
                <td>${emp.dept.name}</td>
            </tr>
        </c:forEach>
    </table>
    <div class="bottom">
        <a href="/emp/findAll?pageno=${pageNum-1 == 0 ? 1 : pageNum-1}">上一页</a>
        <c:forEach begin="1" end="${pages}" var="p">
            <a href="/emp/findAll?pageno=${p}">${p}</a>
        </c:forEach>
        <a href="/emp/findAll?pageno=${pageNum+1 > pages ? pages : pageNum+1}">下一页</a>
        <a href="/emp/findAll?pageno=${pages}">尾页</a>
    </div>
</div>

</body>
</html>
