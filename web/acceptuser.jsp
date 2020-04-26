<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Accept User Page</title>
</head>
<body>
<h1>Verifying Details</h1>
<jsp:useBean id="snr"                                                       class="saagnik.ValidateUser"/>
<jsp:setProperty name="snr" property="user"/>
<jsp:setProperty name="snr" property="pass"/>
The Details Entered Are as Under
<br/>
<%--Program to validate a user using JSP tag
Yash Goswami--%>
<p>Username : <jsp:getProperty name="snr" property="user"/></p>
<p>Password : <jsp:getProperty name="snr" property="pass"/></p>
<%if(snr.validate("Yash Goswami", "javaproject")){%>
Welcome! You are a VALID USER<br/>
<%}else{%>
Error! You are an INVALID USER<br/>
<%}%>
</body>
</html>
