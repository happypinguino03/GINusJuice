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
 <%
        ArrayList<Prodotto> lista = (ArrayList<Prodotto>) session.getAttribute("listaProdotti");
        if(lista == null){
           // System.out.println("is null");
        } else {
           // System.out.println("is not null");
        }
    %>
     <%
        for(Prodotto p : lista){
            //System.out.println(p);
    %>
    <h3><%=p.getNome() %></h3>
  	<form action="ModificaNome" action="post">
  		<label>nome</label>
  		<input type="text" name="nome">
  		<input type="hidden" value=<%= p.getId() %> name="id">
  		<input type="submit" value="cambia">
  	</form>
		
	<form action="ModificaDescrizione" action="post">
  		<label>descrizione</label>
  		<textarea rows="10" cols="15" name="descrizione"></textarea>
  		<input type="hidden" value=<%= p.getId() %> name="id">
  		<input type="submit" value="cambia">
  	</form>
  	
  	<form action="ModificaPrezzo" action="post">
  		<input type="hidden" value=<%= p.getId() %> name="id">
  		<label>prezzo</label>
  		<input type="text" name="prezzo">
  		<input type="submit" value="modifica">
  	</form>
  	
  	<form action="ModificaQuantita" action="post">
  		<input type="hidden" value=<%= p.getId() %> name="id">
  		<label>quantità</label>
  		<input type="text" name="quantita">
  		<input type="submit" value="modifica">
  	</form>
  	
  	
  	<form action="EliminaProdotto" action="post">
  		<input type="hidden" value=<%= p.getId() %> name="id">
  		<input type="submit" value="elimina">
  	</form>
  	
    <%} %>
</body>
</html>