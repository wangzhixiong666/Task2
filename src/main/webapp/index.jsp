<%--<%@ page ... %>	定义页面的依赖属性，比如脚本语言、error页面、缓存需求等等--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="utf-8"%>
<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<html>
<head>
    <tittle><h1>首页</h1></tittle>
    <style type="text/css">
        a{
            text-decoration: antiquewhite;
            text-align: center;
            font-max-size: large;
        }
        h3{
            width: 180px;
            height:38px;
            margin: 100px auto;
            text-align: center;
        }
    </style>
</head>
<body>
<h3>
    <a href="<%=basePath%>/findAllStudent">学生管理界面</a>
</h3>
</body>
</html>