<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%--using Jsp pageContext implicit object set and getAttribute
yash goswami--%>
<%String name=request.getParameter("uname");
    out.print("Welcome "+name);
    pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);
%>
<a href="second.jsp">second jsp page</a>
</body>
</html>
