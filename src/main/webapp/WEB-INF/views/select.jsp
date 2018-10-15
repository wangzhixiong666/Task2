<%--
  Created by IntelliJ IDEA.
  User: Mr_Wang
  Date: 2018/9/29
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>学生信息</title>
    <style type="text/css">
        h1{color: blue}
        {background-size: auto}
    </style>
</head>
<body>
<h1 style="text-align: center">学生信息</h1>

<table width="100%" border="1">
    <tr>
        <th>姓名</th>
        <th>QQ</th>
        <th>学习类型</th>
        <th>入学时间</th>
        <th>毕业院校</th>
        <th>ID</th>
        <th>日报链接</th>
        <th>愿望</th>
        <th>师兄</th>
        <th>方式</th>
        <th>表格创建时间</th>
        <th>表格更新时间</th>
    </tr>
<c:forEach items="${studentList}" var="student" >
    <tr>
    <td>${student.name}</td>
    <td>${student.qq}</td>
    <td>${student.learn_type}</td>
    <td>${student.entrance_time}</td>
    <td>${student.school}</td>
    <td>${student.id}</td>
    <td>${student.daily_link}</td>
    <td>${student.wish}</td>
    <td>${student.senior}</td>
    <td>${student.way}</td>
    <td>${student.create_time}</td>
    <td>${student.update_time}</td>
        <td><a href="${pageContext.request.contextPath}/toUpdateStudent/${student.id}">编辑</a></td>
        <td><form action="${pageContext.request.contextPath}/deleteStudent/${student.id}" method="post">
            <input type="hidden" name="_method" value="DELETE">
            <input TYPE="submit" value="删除"></form>
        </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
