<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.htm">index</a>
<%
String nome=null;
if(session.getAttribute("nome")==null)
	nome="ospite";
else
	nome=(String) session.getAttribute("nome");
%>
<h1> hi, <%= nome %></h1>
</body>
</html>