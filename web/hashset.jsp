<%@ page import="java.util.HashSet" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 5:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hash Set Program</title>
</head>
<body>

<%//hashset program in jsp
    //Yash Goswami
    HashSet<String> hs = new HashSet<String>();
    hs.add("Welocme");
    hs.add("to");
    hs.add("HashSet");
    hs.add("with");
    hs.add("JSP");
    out.print("Entered elements in HashSet are : ");
    out.print(hs);
%>

</body>
</html>
