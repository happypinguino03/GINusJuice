<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>SHOP</h1>
<br>
<%
	ArrayList <Prodotto> lista=(ArrayList<Prodotto>) session.getAttribute("listaProdotti");
%>

<%for(Prodotto p:lista){
%>
<h3> <%= p.getNome() %>     </h3>
<form action="AggiungiProdotto" method="post">
<input type="hidden"  name="prodottoId" value=<%= p.getId() %> >
<input type="hidden"  name="nome" value=<%= p.getNome() %> >
<input type="hidden"  name="descrizione" value=<%= p.getNome() %> >
<input type="hidden"  name="prezzo" value=<%= p.getPrezzo() %> >
<input type="hidden"  name="iva" value=<%= p.getIva() %> >
<input type="hidden"  name="quantita" value=<%= p.getQuantita() %> >
<input type="submit" value="aggiungi">
</form>
<% 
}
%>

</body>
</html>