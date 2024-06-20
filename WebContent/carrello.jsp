<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Carrello" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Carrello carrello=(Carrello) session.getAttribute("aggiunti");
%>
<h1>il tuo carrello</h1>
<% for(Prodotto prodotto : carrello.getAggiunti() ) 
	{%>
	
	<% }%>
</body>
</html>
