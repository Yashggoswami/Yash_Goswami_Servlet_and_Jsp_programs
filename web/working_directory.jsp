<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Working Directory</title>
</head>
<body>
<h1>Present Working Directory</h1>
<%--jsp program to display all the present working Directory
by Yash Goswami--%>
        <%
  java.io.File f = new java.io.File(".");
 %>
<p>Current directory is <%= f.getCanonicalPath() %>
<p>Listing:
<ul>
        <%
  String[] list = f.list();
  for (int i=0; i<list.length; i++) {
    out.print("<li>" + list[i]);
  }
 %>
</body>
</html>
