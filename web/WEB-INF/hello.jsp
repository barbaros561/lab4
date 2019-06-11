<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Java Web - laboratorium 4</title>
</head>
<body>
<h1>Witaj, ${firstName} ${lastName}!</h1>
<%--Tutaj zmieniany jest kolor i strona spada z konia jak włączam script--%>
<h1>Cześć, <c:out value="${firstName} ${lastName}"/>!</h1>
<%--Tutaj wypisywane jest znak w znak to co wpisałem--%>
<%--<p><a href="email.jsp">mailto: ${email}</a>  </p>--%>
<%--<c:if test="${email!='NULL'}">--%>
<c:choose>
    <c:when test="${not empty email}">
        <a href="mailto:${email}">Wyślij maila na adres ${email}</a>
    </c:when>
    <c:otherwise>
        <h1>NIE WPISANO MAILA</h1>
    </c:otherwise>
</c:choose>
<%--</c:if>--%>
<h1
<c:forEach items="${dniTygodnia}" var="dzien">
    <p>
            ${dzien}
    </p>
</c:forEach>

</body>
</html>