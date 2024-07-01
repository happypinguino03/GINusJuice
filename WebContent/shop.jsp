<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>SHOP</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styleshop.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="${pageContext.request.contextPath}/scripts/scriptshop.js"></script>
</head>
<body>
<jsp:include page="Fragment/herdershop.jsp" />
<div class="container">
    <br>
    <br>
    <h1>SHOP</h1>
    <br>
    <%-- Mostra la lista dei prodotti --%>
    <div class="product-grid">
        <% 
            ArrayList<Prodotto> lista = (ArrayList<Prodotto>) session.getAttribute("listaProdotti");
            if (lista != null && !lista.isEmpty()) {
                for (Prodotto p : lista) {
        %>
        <div class="product">
            <div class="product-image">
                <img alt="<%= p.getNome() %>" src="${pageContext.request.contextPath}/images/<%= p.getNome() %>.jpg">
            </div>
            <div class="product-details">
                <h3 class="product-name"> <%= p.getNome() %> </h3>
                <p class="product-description"><strong>Descrizione:</strong> <%= p.getDescrizione() %></p>
                <p class="product-price"><strong>Prezzo:</strong> <%= p.getPrezzo() %>&#8364;</p>
                <p class="product-quantity"><strong>Quantità rimanente in magazzino:</strong> <%= p.getQuantita() %></p>
                <form action="AggiungiProdotto" method="post" onsubmit="showNotification(event)">
                    <input type="hidden" name="prodottoId" value="<%= p.getId() %>">
                    <input type="hidden" name="nome" value="<%= p.getNome() %>">
                    <input type="hidden" name="descrizione" value="<%= p.getDescrizione() %>">
                    <input type="hidden" name="prezzo" value="<%= p.getPrezzo() %>">
                    <input type="hidden" name="quantita" value="<%= p.getQuantita() %>">
                    <button type="submit" class="add-to-cart">Aggiungi al carrello</button>
                </form>
            </div>
        </div>
        <% 
                }
            } else {
                out.println("<p>Nessun prodotto disponibile.</p>");
            }
        %>
    </div>
</div>

<form id="filterForm">
    Prezzo Minimo: <input type="text" id="minPrice" name="minPrice">
    Prezzo Massimo: <input type="text" id="maxPrice" name="maxPrice">
    <button type="button" onclick="filterProducts()">Applica Filtro</button>
</form>

<div id="notification" class="notification">Prodotto inserito nel carrello</div>

<br>
<br>
<br>
<jsp:include page="/Fragment/footer.jsp" />

<script src="${pageContext.request.contextPath}/scripts/scriptshop.js"></script>

</body>
</html>

