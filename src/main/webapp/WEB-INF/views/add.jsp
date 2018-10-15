<%--
  Created by IntelliJ IDEA.
  User: Mr_Wang
  Date: 2018/9/19
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=utf-8" language="java"  import="java.util.*" %>

<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加用户</title>
</head>
<body>
  <h1>添加用户</h1>
  <form name="studentForm"  action="<%=basePath%>/addStudent" method="post">
      姓名：<input type="text" name="name"><br>
      QQ:<input type="text" name="qq"><br>
      学习类型：<input type="text" name="learn_type"><br>
      入学时间：<input type="text" name="entrance_time"><br>
      毕业院校：<input type="text" name="school"><br>
      日报链接：<input type="text" name="daily_link"><br>
      愿望：<input type="text" name="wish"><br>
      师兄：<input type="text" name="senior"><br>
      方式：<input type="text" name="way"><br>
      创建时间：<input type="text" name="create_time"><br>
      更新时间：<input type="text" name="update_time"><br>
      <input type="submit" value="添加" />
  </form>
</body>
</html>
