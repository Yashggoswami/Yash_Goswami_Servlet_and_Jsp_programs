<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 24-04-2020
  Time: 7:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*,javax.mail.*,javax.mail.internet.*" %>
<html>
<head>
    <title>mail</title>
</head>
<body>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%

    String from = "yashgoswami2000";
    String pass = "Y@24giri";
    String[] to = {"yashgirigoswami2000@gmail.com"}; // list of recipient email addresses
    String subject = "Java send mail example";
    String body = "Welcome to JavaMail!";
    Properties props = System.getProperties();
    String host = "smtp.gmail.com";

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.smtp.ssl.trust", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");//587
    props.put("mail.smtp.auth", "true");


       Session sessn = Session.getDefaultInstance(props);
    MimeMessage message = new MimeMessage(sessn);

    try {


        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];

        // To get the array of addresses
        for( int i = 0; i < to.length; i++ ) {
            toAddress[i] = new InternetAddress(to[i]);
        }

        for( int i = 0; i < toAddress.length; i++) {
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }



        message.setSubject(subject);
        message.setText(body);


        Transport transport = sessn.getTransport("smtp");


        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    }
    catch (AddressException ae) {
        ae.printStackTrace();
    }
    catch (MessagingException me) {
        me.printStackTrace();
    }
    %>
</body>
</html>
