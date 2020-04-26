<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>color get</title>


    <%  //printing Selected Color in jsp
        //Yash Goswami
        String color = request.getParameter("color");
    session.setAttribute("color",color);
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        pw.println("<B>The selected color is: " + color);
        pw.close();
    %>

</head>
<body style="background-color:<%session.getAttribute("color");%>">

</body>
</html>
