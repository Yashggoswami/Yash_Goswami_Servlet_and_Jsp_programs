<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Auto Refresh page</title>
</head>
<body>

    <form>

            <h2>Auto Refreshing Page</h2>
            <%
                //  Jsp program to auto refresh a page
                //Yash Goswami
                response.setIntHeader("Refresh", 1);

                Calendar calendar = new GregorianCalendar();
                String am_pm;
                int hour = calendar.get(Calendar.HOUR);
                int minute = calendar.get(Calendar.MINUTE);
                int second = calendar.get(Calendar.SECOND);
                if(calendar.get(Calendar.AM_PM) == 0)
                    am_pm = "AM";
                else
                    am_pm = "PM";
                String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
                out.println("Current Time: " + CT + "\n");
            %>

    </form>

</body>
</html>
