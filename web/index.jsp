<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 7:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--Displaying Current Date and Time
Yash Goswami--%>
<h1>Current Date and Time </h1>
<%
    Date date=new Date();
    out.println("<h2>"+date.toString()+"</h2>");
%>

</body>
</html>
