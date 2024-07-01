<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Carrello" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    Carrello carrello = (Carrello) session.getAttribute("carrello");
	double tot;
	String email = (String)session.getAttribute("email");
    // Verifica se il carrello è vuoto o non è stato inizializzato
    if (carrello == null || carrello.getAggiunti().isEmpty()) {
        // Messaggio o azione da mostrare se il carrello è vuoto
        tot=0;
        if(email==null)
        	email="ospite";
        %>
        <h1>Il tuo carrello è vuoto.</h1>
        <p>ciao <%= email %> il tuo carrello è vuoto torna alla <a href="${pageContext.request.contextPath}/index.html">pagina dei prodotti</a> per iniziare lo shopping.</p>
        <%
    } else {
        // Se il carrello contiene prodotti, procedi con la visualizzazione
        tot=carrello.ritornaTotale();
        Map<Prodotto, Integer> prodottiMap = new HashMap<>();
        for (Prodotto prodotto : carrello.getAggiunti()) {
            if (prodottiMap.containsKey(prodotto)) {
                prodottiMap.put(prodotto, prodottiMap.get(prodotto) + 1);
            } else {
                prodottiMap.put(prodotto, 1);
            }
        }
%>
        <h1>Il tuo carrello</h1>
        <% for (Map.Entry<Prodotto, Integer> entry : prodottiMap.entrySet()) { %>
            <h4><%= entry.getKey().getNome() %></h4>
            <h4><%= entry.getValue() %></h4>
            <form action="CarrelloAumenta" method="post">
                <input type="hidden" value="<%= entry.getKey().getId() %>" name="prodottoId">
                <input type="submit" value="aggiungi">
            </form>
            <form action="CarrelloDiminuisci" method="post">
                <input type="hidden" value="<%= entry.getKey().getId() %>" name="prodottoId">
                <input type="submit" value="diminuisci">
            </form>
        <% } %>
    <% } %>
    
   
    <h3>il totale è : <%= tot%></h3>
    <form action="AcquistaProdotto" method="post">
    <input type="hidden" value=<%=email %> name="email">
    <input type="hidden" value=<%= tot %> name="totale">
    <input type="submit" value="acquista">
    </form>
    
    <form action="SvuotaCarrello" method="post">
    <input type="submit" value="svuota">
    </form>
 
</body>
