<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>inserisci i dati da aggiungere</h1>
<form action="AggiungiProdottoDatabase" method="post">
<label>ID</label>
<input type="text" placeholder="inserisci id" name="id">
<label></label>
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
<input type="submit" value="aggiungi">
</form>

<form action="AggiungiImmagine" method="post" enctype="multipart/form-data">
    <label>Immagine</label>
    <input type="file" name="file" accept="image/*" required>
    <input type="submit" value="Carica">
</form>
</body>
</html>