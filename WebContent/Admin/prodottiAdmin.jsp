<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Prodotto" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Gestisci Prodotti</title>
    <link rel="stylesheet" type="text/css" href="adminStyle.css">
</head>
<body>
    <jsp:include page="../Fragment/hadmin.jsp" />
    
    <main class="admin-content">
        <h1>Gestisci Prodotti</h1>
        <%
            List<Prodotto> lista = (List<Prodotto>) session.getAttribute("listaProdotti");
            if (lista != null) {
                for (Prodotto p : lista) {
        %>
        <div class="product-management">
            <h2 class="product-name"> <%= p.getNome().substring(0,p.getNome().length()-4) %> </h2>
            <form action="ModificaNome" method="post" class="admin-form">
                <label>Nome</label>
                <input type="text" name="nome">
                <input type="hidden" value="<%= p.getId() %>" name="id">
                <input type="submit" value="Cambia">
            </form>
            
            <form action="ModificaDescrizione" method="post" class="admin-form">
                <label>Descrizione</label>
                <textarea rows="10" cols="15" name="descrizione"></textarea>
                <input type="hidden" value="<%= p.getId() %>" name="id">
                <input type="submit" value="Cambia">
            </form>
            
            <form action="ModificaPrezzo" method="post" class="admin-form">
                <label>Prezzo</label>
                <input type="text" name="prezzo">
                <input type="hidden" value="<%= p.getId() %>" name="id">
                <input type="submit" value="Modifica">
            </form>
            
            <form action="ModificaQuantita" method="post" class="admin-form">
                <label>Quantità</label>
                <input type="text" name="quantita">
                <input type="hidden" value="<%= p.getId() %>" name="id">
                <input type="submit" value="Modifica">
            </form>
            
            <form action="EliminaProdotto" method="post" class="admin-form">
                <input type="hidden" value="<%= p.getId() %>" name="id">
                <input type="submit" value="Elimina">
            </form>
        </div>
        <%      }
            }
        %>
    </main>
    
    <jsp:include page="../Fragment/footer.jsp" />
</body>
</html>
