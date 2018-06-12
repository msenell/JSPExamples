<%-- 
    Document   : sender
    Created on : 12.Haz.2018, 15:17:00
    Author     : senel
--%>

<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%
    String result = null;
    
    String to = request.getParameter("to");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
    
    final String from = "msenell@yandex.com.tr";
    final String pass = "xxx";
    
    Properties prp = System.getProperties();

    prp.put("mail.smtp.host", "smtp.yandex.com.tr");
    prp.put("mail.smtp.socketFactory.port", "465"); //SSL Port
	prp.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
        prp.put("mail.smtp.port", "465");
        prp.put("mail.smtp.ssl.enable", "true");
    
    prp.put("mail.smtp.auth", "true");
        
        Session mailSession = Session.getInstance(prp, 
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication()
                    {
                        return new PasswordAuthentication(from, pass);
                    }
                });
    
    try
    {
        MimeMessage mmsg = new MimeMessage(mailSession);
        
        mmsg.setFrom(new InternetAddress(from));
        
        mmsg.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        
        mmsg.setSubject(subject);
        
        mmsg.setContent("<h1>" + message + "</h1><br/><p>" + message + "</p>", "text/html; charset=utf-8");
        
        Transport.send(mmsg);
        result = "E-Posta başarıyla gönderildi.";
    }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <title>JSP Sender Page</title>
    </head>
    <body>
        <h2><%=result%></h2>
    </body>
</html>
