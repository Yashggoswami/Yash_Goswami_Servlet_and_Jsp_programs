<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>process</title>
</head>
<body>

<%

    String num1=request.getParameter("n1");
    String num2=request.getParameter("n2");

    int a=Integer.parseInt(num1);
    int b=Integer.parseInt(num2);
    int c=a/b;
    out.print("division of numbers is: "+c);

%>
</body>
</html>
