<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>No. of Visitor</title>
</head>
<body>
<form>
    <fieldset style="width:100%;height:100%; background-color:ghostwhite;">
        <legend>Yash Website</legend>
        <%//JSP program to count the total number of visits on your website
            //yash goswami
            Integer hitsCount =
                    (Integer)application.getAttribute("hitCounter");
            if( hitsCount ==null || hitsCount == 0 )
            {

                out.println("Welcome to my website!!");
                hitsCount = 1;
            }
            else
            {

                out.println("Welcome to my website!!");
                hitsCount += 1;
            }
            application.setAttribute("hitCounter", hitsCount);
        %>
        <p>You are visitor number: <%= hitsCount%></p>
    </fieldset>
</form>

</body>
</html>

