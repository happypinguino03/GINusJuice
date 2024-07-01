<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Pannello di Controllo Admin</title>
    <link rel="stylesheet" type="text/css" href="adminStyle.css">
</head>
<body>
    <jsp:include page="../Fragment/hadmin.jsp" />
    
    <main class="admin-content">
        <h1>Benvenuto Admin</h1>
        <h2>Scegli l'operazione da effettuare</h2>
        <a href="aggiungiProdotto.jsp" class="admin-action">Aggiungi Prodotto</a>
        <a href="prodottiAdmin.jsp" class="admin-action">Gestisci Prodotti</a>
        <form action="VediOrdini" method="post" class="admin-form">
            <label>Email</label>
            <input type="text" name="email">
            <label>Inserisci Data Inizio</label>
            <input type="text" placeholder="formato YYYY-MM-DD" name="data1">
            <label>Inserisci Data Fine</label>
            <input type="text" placeholder="formato YYYY-MM-DD" name="data2">
            <input type="submit" value="Vedi Ordini">
        </form>
    </main>
    
    <jsp:include page="../Fragment/footer.jsp" />
</body>
</html>
