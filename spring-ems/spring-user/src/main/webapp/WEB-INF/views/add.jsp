<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <h2>添加员工界面</h2>
    <form action="/emp/add" method="post">
        姓名：<input type="text" name="name"> <br>
        年龄：<input type="text" name="age"><br>
        性别：<input type="radio" name="sex" value="male">男
                <input type="radio" name="sex" value="female">女<br>
        身高：<input type="text" name="height"><br>
        生日：<input type="text" name="birthday"><br>
        部门：<select name="dept_id" >
                 <c:forEach items="${depts}"  var="d">
                      <option value="${d.id}">${d.name}</option>
                 </c:forEach>
             </select><br>
        <input type="submit" value="添加">
    </form>
</body>
</html>
