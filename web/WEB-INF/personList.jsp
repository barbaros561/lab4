<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Java Web - laboratorium 4</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        table#t01 {
            width: 100%;
            background-color: #f1f1c1;
        }
    </style>
</head>
<body>
<h3>
    <table style="width: 100%">
        <tr>
            <th> Imię</th>
            <th> Nazwisko</th>
            <th> E-mail</th>
        </tr>
        <c:forEach items="${osoby}" var="osoba">
            <tr>
                <th> ${osoba.firstName}</th>
                <th> ${osoba.lastName}</th>
                <th> ${osoba.email}</th>
            </tr>
        </c:forEach>
    </table>
</h3>
</body>
</html>