<%! int day = 3; %>
<html>
    <head>
        <title>if-else and switch-case example</title>
        <meta charset="utf-8"/>
    </head>
    <body>
        <% if(day == 6 || day == 7) { %>
            <p>This is weekend.</p>
        <% }else { %>
            <p>This is not weekend.</p>
        <% } %>
        <p>Today is 
        <%
            switch(day)
            {
                case 1:
                    out.println("Monday");
                    break;
                case 2:
                    out.println("Tuesday");
                    break;
                case 3:
                    out.println("Wednesday");
                    break;
                case 4:
                    out.println("Thursday");
                    break;
                case 5:
                    out.println("Friday");
                    break;
                case 6:
                    out.println("Saturday");
                    break;
                case 7:
                    out.println("Sunday");
                    break;
            }
        %>
        .</p>
    </body>
</html>