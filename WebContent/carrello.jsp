<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList <Prodotto> aggiunti=(ArrayList<Prodotto>) session.getAttribute("aggiunti");
%>
<h1>il tuo carrello</h1>
<% for(Prodotto prodotto : aggiunti) 
	{%>
	<p> il tuo prodotto è <%= prodotto.getNome() %> </p>
	<p> la quantità del tuo prodotto è : </p>
	<% }%>
</body>
</html>