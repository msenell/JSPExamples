<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=utf-8");
%>
<html>
    <head>
        <title>Reading Form Data</title>
        <meta charset="utf-8"/>
    </head>
    <body>
    <center>
        <h1>Reading Form Data</h1>
        <ul>
            <li><b>İsim :</b> <%=request.getParameter("name")%></li>
            <li><b>Soyisim :</b> <%=request.getParameter("surname")%></li>
        </ul>
    </center>
    </body>
</html>