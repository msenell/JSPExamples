<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Formatting Tags</title>
    </head>
    <body>
        <h1>JSTL Formatting Tags</h1>
        <h2>1-&lt;fmt:parseNumber&gt; Tag</h2>
        <c:set var="Amount" value="786,970" />
        <p>Non-Parsed : <c:out value="${Amount}" /></p>
        <fmt:parseNumber var="first" type="number" value="${Amount}" />
        <p>I. Parsing : <c:out value="${first}" /></p>
        <fmt:parseNumber var="second" type="number" integerOnly="true" value="${Amount}" />
        <p>II. Parsing : <c:out value="${second}" /></p>
        <h2>2-&lt;fmt:timeZone&gt; Tag</h2>
        <c:set var="str" value="<%=new java.util.Date()%>" />
        <table border="2" width="100%">
            <tr>
                <td width="100%" colspan="2" bgcolor="#FF7F50">
                    <p align="center">
                        <b>
                            <font color="#000000" size="6">
                                Formatting : 
                                <fmt:formatDate value="${str}" type="both" timeStyle="long" dateStyle="long" />
                            </font>
                        </b>
                    </p>
                </td>
            </tr>
            
            <c:forEach var="zone" items="<%=java.util.TimeZone.getAvailableIDs()%>">
                <tr>
                    <td width="50%" bgcolor="#C0C0C0">
                        <c:out value="${zone}" />
                    </td>
                    <td width="50%" bgcolor="#FFEBCD">
                        <fmt:timeZone value="${zone}">
                            <fmt:formatDate value="${str}" timeZone="${zn}" type="both"/>
                        </fmt:timeZone>
                    </td>
                </tr>
            </c:forEach>
        </table>
                            
        <h2>3-&lt;formatNumber&gt; Tag</h2>
        <c:set var="Amount" value="9850.14115" />
        <h4><c:out value="${Amount}" /></h4>
        <ol>
            <li><fmt:formatNumber value="${Amount}" type="currency" /></li>
            <li><fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></li>
            <li><fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></li>
            <li><fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}"/></li>
            <li><fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></li>
            <li><fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></li>
        </ol>
        
        <h2>4-&lt;parseDate&gt; Tag</h2>
        <c:set var="date" value="20-06-2018" />
        <p>Non-Parsed : <c:out value="${date}" /></p>
        <fmt:parseDate value="${date}" var="parsedDate" pattern="dd-MM-yyyy" />
        <p>Parsed : <c:out value="${parsedDate}" /></p>
    </body>
</html>
