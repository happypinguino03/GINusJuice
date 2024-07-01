<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Ordine" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ordini</title>
</head>
<body>
<%ArrayList<Ordine> lista = (ArrayList<Ordine>) session.getAttribute("ordini"); %>

<%for(Ordine ordine: lista){ %>
	<h3><%= ordine.getEmail() %></h3>
	<h4><%= ordine.getOrdineId() %></h4>
	<h4><%= ordine.getTotale() %></h4>
	<h4><%= ordine.getDataStringa() %></h4>
<%} %>
</body>
</html>