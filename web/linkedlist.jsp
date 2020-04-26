<%@ page import="java.util.LinkedList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 26-04-2020
  Time: 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LinkedList</title>
</head>
<body>
<%//LinkedList program in jsp
    //Yash Goswami
    LinkedList<String> ll = new LinkedList<String>();
    ll.add("F");
    ll.add("B");
    ll.add("D");
    ll.add("E");
    ll.add("C");
    ll.addLast("Z");
    ll.addFirst("A");
    ll.add(1,"A2");
    out.print("Original Contents of LinkedList are : " + ll + "<br>");
    ll.remove("F");
    ll.remove(2);
    out.print("Contents of LinkedList after removing F and element at pos. 3 are  : " + ll +"<br>");
    ll.removeFirst();
    ll.removeLast();
    out.print("LinkedList after removing the first and last element :" + ll + "<br>");
    String val = ll.get(2);
    ll.set(2,val + "Changed");
    out.print("LinkedList after change " + ll + "<br>");
%>
</body>
</html>
