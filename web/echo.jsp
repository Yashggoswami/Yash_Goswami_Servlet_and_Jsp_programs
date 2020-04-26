<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Echoing HTML Request Parameters</title>
</head>
<body>
<h3>Choose an author:</h3>
<form method="get">
    <input type="checkbox" name="author" value="Ram">Ram<br/>
    <input type="checkbox" name="author" value="Yash Goswami">Yash<br/>
    <input type="checkbox" name="author" value="Ali">Ali<br/>
    <input type="submit" value="Submit">
</form>
<%--Program for echoing HTML Request Parameters
by Yash Goswami--%>
<%
    String[] authors = request.getParameterValues("author");
    if (authors != null) {
%>
<h2>You have selected :</h2>
<ul>
    <%
        for (int i = 0; i < authors.length; ++i) {
    %>
    <li><%= authors[i] %></li>
    <%
        }
    %>
</ul>
<a href="<%= request.getRequestURI() %>">BACK</a>
<%
    }
%>
</body>
</html>
