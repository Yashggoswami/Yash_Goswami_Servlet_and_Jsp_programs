<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login - Success</title>
</head>
<body>
<%@page import="LoginBean"%>

<p>You are successfully logged in!</p>
<%
    LoginBean bean=(LoginBean)request.getAttribute("bean");
    out.print("Welcome, "+bean.getName());
%>
</body>
</html>
