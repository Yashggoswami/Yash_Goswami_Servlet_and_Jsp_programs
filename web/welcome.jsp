<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>

<html>
<head>

    <title>Send Email using JSP</title>
</head>
<body>



<form action="Servletcontextclass" method="post"><button type="submit">click</button></form>
<form action="sessionServlet" method="post"><button type="submit">click me session</button></form>

<form action="downloadingfilefromsrever.jsp" method="post"><button type="submit">download the jsp file</button></form>

<form action="process.jsp">
    <h1>Division of two number and displaying error if there is an Exception!</h1>
    Number 1st:<input type="text" name="n1" /><br/><br/>
    Number 2nd:<input type="text" name="n2" /><br/><br/>
    <input type="submit" value="divide"/>
</form>

</body>
</html>
