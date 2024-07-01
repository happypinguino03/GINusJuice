<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SHOP</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styleshop.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
     <script src="scripts/scriptshop.js"></script>
</head>
<body>
<jsp:include page="Fragment/herdershop.jsp" />
<div class="container">
    <br>
    <br>   
    <h1>SHOP</h1>
    <br>
    <%
        ArrayList<Prodotto> lista = (ArrayList<Prodotto>) session.getAttribute("listaProdotti");
        if(lista == null){
           // System.out.println("is null");
        } else {
           // System.out.println("is not null");
        }
    %>

    <div class="product-grid">
    <%
        for(Prodotto p : lista){
            //System.out.println(p);
    %>
        <div class="product">
            <div class="product-image">
                <img alt="<%= p.getNome() %>" src="${pageContext.request.contextPath }/images/<%= p.getNome() %>.jpg">
            </div>
            <div class="product-details">
                <h3 class="product-name"> <%= p.getNome() %> </h3>
                <p class="product-description"><strong>Descrizione:</strong> <%= p.getDescrizione() %></p>
                <p class="product-price"><strong>Prezzo:</strong> <%= p.getPrezzo() %>&#8364</p>
                <p class="product-quantity"><strong>Quantita' rimanente in magazzino:</strong> <%= p.getQuantita() %></p>
                <form action="AggiungiProdotto" method="post" onsubmit="showNotification(event)">
                    <input type="hidden" name="prodottoId" value="<%= p.getId() %>">
                    <input type="hidden" name="nome" value="<%= p.getNome() %>">
                    <input type="hidden" name="descrizione" value="<%= p.getDescrizione() %>">
                    <input type="hidden" name="prezzo" value="<%= p.getPrezzo() %>">
                    <input type="hidden" name="iva" value="<%= p.getIva() %>">
                    <input type="hidden" name="quantita" value="<%= p.getQuantita() %>">
                    <button type="submit" class="add-to-cart">Aggiungi al carrello</button>
                </form>
            </div>
        </div>
    <%
        }
    %>
    </div>
</div>
<div id="notification" class="notification">Prodotto inserito nel carrello</div>
<jsp:include page="/Fragment/footer.jsp" />
<script src="${pageContext.request.contextPath}/scripts/scriptshop.js"></script>
</body>
</html>