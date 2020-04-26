<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25-04-2020
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.NumberFormat,java.util.Date" %>
<%@ page import="java.text.DateFormat,java.util.Date" %>
<html>
<head>
    <title>Language Setting jsp</title>
</head>
<body>
<%
//JSP application to detect locale,
// language settings and local specific time.
    //Yash Goswami
    Locale locale = request.getLocale();
    String language = locale.getLanguage();
    String country = locale.getCountry();

    String title = "Date Today and Currency";

    String date = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.SHORT, locale).format(new Date( ));

    NumberFormat nft = NumberFormat.getCurrencyInstance(locale);
    String formattedCurr = nft.format(500);
%>

<form>
    <fieldset style="width:100%; background-color:orange;color:red">
        <center>
            <h1>Detecting Locale Language </h1>
        </center>
        <p align="center">
            <%
                out.println("Language : " + language  + "<br />");
                out.println("Country  : " + country   + "<br />");
            %>
        </p>
        <div align="center">
            <h1><% out.print(title); %></h1>
            <p>Local Date: <%  out.print(date); %></p>
            <p>Formatted Currency: <%  out.print(formattedCurr); %></p>
        </div>
    </fieldset>
</form>

</body>
</html>
