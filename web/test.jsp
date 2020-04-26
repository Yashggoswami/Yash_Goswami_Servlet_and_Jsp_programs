<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display words</title>
</head>
<body>
<font >
    <%! int i,n;
        String s1;
    %>
    <% //JSP page to accept a number from the user and display it in words
        //yash goswami
        s1= request.getParameter("num");
        n=s1.length();
        i=0;
        do
        {
            char ch=s1.charAt(i);
            switch(ch)
            {
                case '0': out.println("Zero  ");
                    break;
                case '1': out.println("One  ");
                    break;
                case '2': out.println("Two  ");
                    break;
                case '3': out.println("Three  ");
                    break;
                case '4': out.println("Four ");
                    break;
                case '5': out.println("Five  ");
                    break;
                case '6': out.println("Six  ");
                    break;
                case '7': out.println("Seven  ");
                    break;
                case '8': out.println("Eight  ");
                    break;
                case '9': out.println("Nine  ");
                    break;
            }
            i++;
        }
        while(i<n);
    %>
</font>
</body>
</html>
