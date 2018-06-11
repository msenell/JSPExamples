<html>
    <head>
        <title>JSP Expression</title>
        <meta charset="utf-8"/>
    </head>
    <body>
        <p>Bugünün tarihi : <%= (new java.util.Date()).toLocaleString() %></p>
    </body>
</html>