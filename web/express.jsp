<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%--Jsp Program to use jsp comment,Directive and Expression
by Yash Goswami--%>
<html>
<head>
    <title>Expression_jsp</title>
</head>
<body>
<p>The square root of 24 is <%= Math.sqrt(24) %></p>

<p>Current time is: <%=  new java.util.Date() %></p>
</body>
</html>
