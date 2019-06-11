<!DOCTYPE html>
<%@ page contentType="text/html; charset=iso-8859-2" language="java"
         import="java.sql.*" errorPage="" %>
<%
  request.setCharacterEncoding("8859_2");
%>
<html>
<head>
  <title>Java Web - laboratorium 4</title>
  <meta charset="UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<h1>Witamy</h1>
<form action='/JavaLab4_war_exploded/hello' method='post'>
  Imiê:
  <input type='text' name='firstName'><br>
  Nazwisko:
  <input type='text' name='lastName'><br>
  Email:
  <input type='email' name='email'><br>
  <input type='submit'>
</form>
<a href="/JavaLab4_war_exploded/personList">Person List</a>
</body>
</html>