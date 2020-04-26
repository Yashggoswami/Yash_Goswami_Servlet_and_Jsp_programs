<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 5:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yash Goswami</title>
</head>
<body>
<%  //downloading Helloworld.jsp file using jsp and
// fileinputstream by Yash Goswami
    String filename = "HelloWorld.jsp";
    String filepath = "C:\\Users\\USER\\IdeaProjects\\Yash_Goswami_Servlet_and_Jsp_programs\\web\\";
    response.setContentType("APPLICATION/OCTET-STREAM");
    response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");

    java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);

    int i;
    while ((i=fileInputStream.read()) != -1) {
        out.write(i);
    }
    fileInputStream.close();
%>
</body>
</html>
