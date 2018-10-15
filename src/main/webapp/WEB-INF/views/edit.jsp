<%--
  Created by IntelliJ IDEA.
  User: Mr_Wang
  Date: 2018/9/25
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
<head>
    <title>编辑学生</title>
</head>
<body>
<h1>修改用户</h1>
<form name="studentForm" action="<%=basePath%>/updateStudent" method="POST">
    <input type="hidden" name="id" value="${student.id}"/>
    姓名：<input type="text" name="name" value="${student.name}">
    QQ:<INPUT type="text" name="qq" value="${student.qq}">
    学习类型：<input type="text" name="learn_type" value="${student.learn_type}">
    学校：<input type="text" name="school" value="${student.school}"/>
    立愿：<input type="text" name="wish" value="${student.wish}">
    <input type="submit" value="编辑" />
</form>

</body>
</html>
