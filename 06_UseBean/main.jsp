<%!int fontSize;%>
<%@ page import="action.TestBean"%>
<html>
    <head>
        <title>Using JavaBean is JSP</title>
        <meta charset="utf-8"/>
    </head>
    <body>
    <center>
        <h2>Using JavaBean is JSP</h2>
        <jsp:useBean id="test" class="action.TestBean" scope="page"/>
        <jsp:setProperty name="test" property="message" value="Hello JSP" />
        <p>The message is : </p>
        <p>
            <jsp:getProperty name="test" property="message" />
        </p>
    </center>
    </body>
</html>