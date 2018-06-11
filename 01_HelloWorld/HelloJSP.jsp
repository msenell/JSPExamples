<html>
    <head>
        <title>Hello JSP!</title>
        <meta charset="utf-8"/>
    </head>
    <body>
        Hello JSP!
        <br/>
        <%
            out.println("Your IP Address is : " + request.getRemoteAddr());
        %>
    </body>
</html>