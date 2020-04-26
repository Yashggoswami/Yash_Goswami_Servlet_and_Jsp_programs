<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pattern Generator</title>
</head>
<body>
<!--jsp program for Generating Pattern
by Yash Goswami
-->
<%
    int number = Integer.parseInt(request.getParameter("num"));
    for(int i=1;i<=number;i++)
    {
        for(int j=1;j<=i;j++)
        {
            out.print("*");
            out.print(" ");
        }
        out.print("<br>");
    }
%>
</body>
</html>
