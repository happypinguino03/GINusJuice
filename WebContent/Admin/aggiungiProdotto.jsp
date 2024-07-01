<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Aggiungi Prodotto</title>
    <link rel="stylesheet" type="text/css" href="adminStyle.css">
</head>
<body>
    <jsp:include page="../Fragment/hadmin.jsp" />
    
    <main class="admin-content">
        <h1>Inserisci i dati del prodotto</h1>
        <form action="AggiungiProdottoDatabase" method="post" class="admin-form">
            <label>ID</label>
            <input type="text" placeholder="inserisci id" name="id">
            <label>NOME</label>
            <input type="text" placeholder="inserisci nome" name="nome">
            <label>DESCRIZIONE</label>
            <textarea rows="10" cols="15" placeholder="inserisci descrizione" name="descrizione"></textarea>
            <label>PREZZO</label>
            <input type="text" placeholder="inserisci prezzo" name="prezzo">
            <label>IVA</label>
            <input type="text" placeholder="inserisci l'iva" name="iva">
            <label>QUANTITA'</label>
            <input type="text" placeholder="inserisci quantità" name="quantità">
            <input type="submit" value="Aggiungi">
        </form>
        
        <form action="AggiungiImmagine" method="post" enctype="multipart/form-data" class="admin-form">
            <label>Immagine</label>
            <input type="file" name="file" accept="image/*" required>
            <input type="submit" value="Carica">
        </form>
    </main>
    
    <jsp:include page="../Fragment/footer.jsp" />
</body>
</html>
