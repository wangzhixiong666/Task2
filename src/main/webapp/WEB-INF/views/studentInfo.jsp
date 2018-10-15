<%--
  Created by IntelliJ IDEA.
  User: Mr_Wang
  Date: 2018/9/25
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.util.*" %>
<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="/tags" prefix="date"%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>学生列表</title>
</head>
<body>
<h2><a href="${pageContext.request.contextPath}/toAddStudent">添加用户</a> </h2>
<%--${pageContext.request.contextPath}是绝对路径--%>
<form action="${pageContext.request.contextPath }/findStudent" method="GET">
    <label for="name">姓名：</label>
    <input id="name" name="name">
    <input type="submit" value="查询"/>
</form>
<table width="100%" border="1">
 <tbody>
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
         <td><date:date value ="${student.entrance_time} "/></td>
         <td>${student.school}</td>
         <td>${student.id}</td>
         <td>${student.daily_link}</td>
         <td>${student.wish}</td>
         <td>${student.senior}</td>
         <td>${student.way}</td>
         <td><date:date value ="${student.create_time} "/></td>
         <td><date:date value ="${student.update_time} "/></td>
         <td><a href="${pageContext.request.contextPath}/toUpdateStudent/${student.id}">编辑</a></td>
         <td><form action="${pageContext.request.contextPath}/deleteStudent/${student.id}" method="post">
             <input type="hidden" name="_method" value="DELETE">
             <input TYPE="submit" value="删除"></form>
         </td>
     </tr>
 </c:forEach>
 </tbody>
</table>
</body>
</html>
