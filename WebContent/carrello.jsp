<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model.Prodotto" %>
<%@ page import="model.Carrello" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Carrello</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/stylecar.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/scripts/scripcar.js"></script>
</head>
<body>
<jsp:include page="Fragment/herdershop.jsp" />
<div class="container">
<%
    Carrello carrello = (Carrello) session.getAttribute("carrello");
	double tot;
	String email = (String)session.getAttribute("email");
    // Verifica se il carrello è vuoto o non è stato inizializzato
    if (carrello == null || carrello.getAggiunti().isEmpty()) {
        // Se il carrello è vuoto, mostra un messaggio chiaro e un link per tornare allo shop
        tot=0;
        if(email==null)
        	email="ospite";
        %>
        <div class="empty-cart-message">
            <h1>Il tuo carrello è vuoto.</h1>
           <h2> <p>Ciao <%= email %>, il tuo carrello è vuoto. Torna alla <a href="${pageContext.request.contextPath}/index.jsp">home</a> per iniziare lo shopping.</p></h2>
        </div>
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
        <!-- Contenitore orizzontale per i prodotti nel carrello -->
        <div id="products-container">
            <% for (Map.Entry<Prodotto, Integer> entry : prodottiMap.entrySet()) { %>
                <div class="product">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/<%= entry.getKey().getNome() %>.jpg" alt="<%= entry.getKey().getNome() %>">
                    </div>
                    <div class="product-details">
                        <h4><%= entry.getKey().getNome() %></h4>
                        <p><strong>Prezzo:</strong> <%= entry.getKey().getPrezzo() %> <span>&euro;</span></p>
                        <p><strong>Quantità:</strong> <%= entry.getValue() %></p>
                        <!-- Form per aumentare la quantità -->
                        <form action="CarrelloAumenta" method="post">
                            <input type="hidden" value="<%= entry.getKey().getId() %>" name="prodottoId">
                            <button type="submit" class="add-to-cart">Aggiungi</button>
                        </form>
                        <!-- Form per diminuire la quantità -->
                        <form action="CarrelloDiminuisci" method="post">
                            <input type="hidden" value="<%= entry.getKey().getId() %>" name="prodottoId">
                            <button type="submit" class="remove-from-cart">Diminuisci</button>
                        </form>
                    </div>
                </div>
            <% } %>
        </div>
    <% } %>
    
    <h3>Il totale è: <%= tot %> <span>&euro;</span></h3>
    
    <!-- Form per l'acquisto -->
    <form action="AcquistaProdotto" method="post" class="center">
        <input type="hidden" value="<%= email %>" name="email">
        <input type="hidden" value="<%= tot %>" name="totale">
        <button type="submit" class="purchase-button">Acquista</button>
    </form>
    
    <!-- Form per svuotare il carrello -->
    <form action="SvuotaCarrello" method="post" class="center">
        <button type="submit" class="clear-cart-button">Svuota</button>
    </form>
</div>
<jsp:include page="Fragment/footer.jsp" />
</body>
</html>





