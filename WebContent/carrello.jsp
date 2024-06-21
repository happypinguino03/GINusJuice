<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Carrello" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Carrello carrello=(Carrello) session.getAttribute("carrello");
    Map<Prodotto, Integer> prodottiMap = new HashMap<>();
    for(Prodotto prodotto : carrello.getAggiunti())
    {
    if(prodottiMap.containsKey(prodotto))
    	{
    		prodottiMap.put(prodotto, prodottiMap.get(prodotto)+1);
    	}
    else
    	{
    		prodottiMap.put(prodotto, 1);
    	}
    }
    System.out.println("mi trovo qui");
%>
<h1>il tuo carrello</h1>
<% for( Map.Entry<Prodotto,Integer> entry : prodottiMap.entrySet() ) 
	{%>
	<h4> <%= entry.getKey() %> </h4>
	<h4> <%= entry.getValue() %></h4>
	<form action="CarrelloAumenta" method="post">
	<input type="hidden" value=<%= entry.getKey().getId() %> name="prodottoId">
	<input type="submit" value="aggiungi">
	</form>
	<% }%>

</body>
</html>
