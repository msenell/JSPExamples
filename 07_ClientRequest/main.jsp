<%@ page import = "java.io.*,java.util.*" %>
<html>
    <head>
        <title>HTTP Header Request</title>
        <meta charset="utf-8"/>
    </head>
    <body>
    <center>
        <h1>HTTP Header Request</h1>
        <table width = "100%" border = "1" align = "center">
            <tr bgcolor = "#949494">
               <th>Header Name</th>
               <th>Header Value(s)</th>
            </tr>
            <%
                Enumeration headerNames = request.getHeaderNames();
                while(headerNames.hasMoreElements())
                {
                    String attributeName = (String) headerNames.nextElement();
                    out.println("<tr><td>" + attributeName);
                    String attributeValue = (String) request.getHeader(attributeName);
                    out.println("</td><td>" + attributeValue + "</td></tr>");
                }
            %>
    </center>
    </body>
</html>