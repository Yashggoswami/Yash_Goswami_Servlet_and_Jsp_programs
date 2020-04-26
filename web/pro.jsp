<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>process page</title>
</head>
<body>
<jsp:useBean id="u" class="org.sssit.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%--Using setproperty and getproperty in jsp
by Yash Goswami--%>
Record:<br>
<jsp:getProperty property="name" name="u"/><br>
<jsp:getProperty property="password" name="u"/><br>
<jsp:getProperty property="email" name="u" /><br>
</body>
</html>
