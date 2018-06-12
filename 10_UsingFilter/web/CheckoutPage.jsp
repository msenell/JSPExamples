<%-- 
    Document   : CheckoutPage
    Created on : 11.Haz.2018, 15:23:29
    Author     : senel
--%>

<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Success Page</title>
    </head>
<body>
    <%
        String userName = null;
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies != null)
        for(Cookie cookie : cookies)
        {
            if(cookie.getName().equals("user"))
                userName = cookie.getValue();
        }
    %>
    <h3>Hi <%=userName%>, do checkout.</h3>
    <br />
    <form action="LogoutServlet" method="POST">
        <input type="submit" value="Logout"/>
    </form>
</body>
</html>
