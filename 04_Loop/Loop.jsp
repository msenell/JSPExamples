<%!int fontSize;%>
<html>
    <head>
        <title>Loop Example</title>
        <meta charset="utf-8"/>
    </head>
    <body>
        <% for(fontSize = 1; fontSize <= 3; fontSize++) { %>
            <font color ='blue' size='<%=fontSize%>' text-align='center'>
                JSP Tutorial
            </font><br/>
        <%}%>
        
        <%while(fontSize <= 6) { %>
            <font color ='blue' size='<%=fontSize%>'>
                JSP Tutorial
            </font><br/>
            <%fontSize++;%>
        <%}%>
    </body>
</html>