<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Second page</title>
</head>
<body>
<%

    String name=(String)pageContext.getAttribute("user",PageContext.SESSION_SCOPE);
    out.print("Hello "+name);

%>
</body>
</html>
