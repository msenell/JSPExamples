<%-- 
    Document   : LoginSuccess
    Created on : 11.Haz.2018, 14:48:08
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
        //sadece session mevcut ise erişim sağlansın
        String user = (String) session.getAttribute("user");
        String userName = null;
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies != null)
        {
            for(Cookie cookie : cookies)
            {
                if(cookie.getName().equals("user")) userName = cookie.getValue();
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
        }
    %>
    <h3>Hi <%=userName%>, Login successful. Your Session ID: <%=sessionID%></h3>
    <br />
    User: <%=user%>
    <br />
    <a href="CheckoutPage.jsp">Checkout Page</a>
    <form action="LogoutServlet" method="POST">
        <input type="submit" value="Logout"/>
    </form>
</body>
</html>
