<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core Example</title>
    </head>
    <body>
        <h1>JSTL Core Example</h1>
        <p>
            <c:out value="${'Bu yazı JSTL <c:out/> etiketi ile yazdırıldı.'}"/>
        </p>
        <%--
        <c:import var="site" url="https://www.tutorialspoint.com" />
        <c:out value="${site}" escapeXml="false" />--%>
        <c:set var="salary" scope="session" value="${2500*2}" />
        <c:out value="${'Silinmeden önce Maaş Miktarı : '}${salary}" />
        <c:remove var="salary" />
        <br />
        <c:out value="${'Silindikten sonra Maaş Miktarı : '}${salary}" />
        <c:catch var="catchException">
            <%=2/0%>
        </c:catch>
        <c:if test="${catchException != null}">
            <p>
                Hata tipi : ${catchException} <br />
                Hata mesajı : ${catchException.message}
            </p>
        </c:if>
            
        <c:set var="salary" scope="session" value="${1500}"/>
        <c:if test="${salary < 1600}">
            <p>
                Maaş miktarı düşük!
            </p>
        </c:if>
        <c:choose>
            <c:when test="${salary == 1600}">
                <p>Maaş asgari ücrete eşit.</p>
            </c:when>
            <c:when test="${salary < 1600}">
                <p>Maaş asgari ücretten düşük.</p>
            </c:when>
            <c:otherwise>
                <p>Maaş Asgari ücretten yüksek.</p>
            </c:otherwise>
        </c:choose>
        <ul>
            <c:forEach var="i" begin="1" end="5">
                <li>Item <c:out value="${i}" /></li>
            </c:forEach>
        </ul>
        
        <ul>
            <c:forTokens var="name" items="Mustafa-Mehmet-Dilara" delims="-">
                <li><c:out value="${name}" /></li>
            </c:forTokens>
        </ul>
        <c:url value="/index.jsp" var="indexURL">
            <c:param name="id" value="111" />
            <c:param name="name" value="mustafa" />
        </c:url>
        <c:out value="${indexURL}" />
        
        <c:set var="url" scope="request" value="0" />
        <c:if test="${url < 1}">
            <c:redirect url="https://www.facebook.com/" />
        </c:if>
        <c:if test="${url >= 1}">
            <c:redirect url="https://twitter.com/" />
        </c:if>
    </body>
</html>
