<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ArrayList jsp</title>
</head>
<body>
<%
    //ArrayList program in jsp
    //Yash Goswami
    ArrayList<Integer> arr = new ArrayList<Integer>();
%>
<% arr.add(23);
    arr.add(12);
    arr.add(5);
    arr.add(42);
    arr.add(16);
    out.print("Elements entered are : ");
    for(int x:arr)
    {
        out.print(x);
        out.print(" ");
    }
%>
</body>
</html>
