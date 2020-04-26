<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
< <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
</head>
<body>
<h1>User Details</h1>
<%-- The form data will be passed to acceptuser.jsp
     for validation on clicking submit
--%>
<form method ="get" action="acceptuser.jsp">
    Enter Username : <input type="text" name="user"><br/><br/>
    Enter Password : <input type="password" name ="pass"><br/>
    <input type ="submit" value="SUBMIT">
</form>
</body>
</html>
