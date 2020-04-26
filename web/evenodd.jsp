<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yash Goswami</title>
</head>
<body>
<%//even odd program by yash goswami
    int i=Integer.parseInt(request.getParameter("num1"));
    response.setContentType("text/html");
    if(i%2==0){
        out.println("<h2>Number "+i+" is -: Even</h2>");
    }
    else
    {
        out.println("<h2>Number "+i+" is -: Even</h2>");
    }
%>
</body>
</html>
