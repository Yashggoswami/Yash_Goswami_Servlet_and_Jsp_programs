<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>color</title>
</head>
<body>
<form name="Form1" method="get"
      action="ColorGetServlet">
    <b>Color:</b>
    <select name="color" size="1">
        <option value="Red">Red</option>
        <option value="Green">Green</option>
        <option value="blue">Blue</option>
    </select>
    <br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
