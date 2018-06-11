<%@ page import = "java.io.*,java.util.*" %>
<html>
    <head>
        <title>HTTP Response</title>
        <meta charset="utf-8"/>
    </head>
    <body>
    <center>
        <h1>HTTP Response</h1>
        <%
            //Her 5 saniyede bir sayfay? yenileme talimat? veriliyor:
            response.setIntHeader("Refresh", 5);
            
            //Geçerli zaman al?n?r:
            Calendar cal = new GregorianCalendar();
            
            String am_pm;
            int hour = cal.get(Calendar.HOUR);
            int minute = cal.get(Calendar.MINUTE);
            int second = cal.get(Calendar.SECOND);
            
            if(cal.get(Calendar.AM_PM) == 0)
            {
                am_pm = "AM";
            }
            else
            {
                am_pm = "PM";
            }
            String time = hour + ":" + minute + ":" + second + " " + am_pm;
            out.println(time);
        %>
    </center>
    </body>
</html>