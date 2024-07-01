<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>benvenuto admin questo è il tuo pannello di controllo</h1>
<h2>scegli quello che vuoi fare</h2>
<a href="aggiungiProdotto.jsp"> aggiungi</a>
<br>
<form action="VediOrdini" method="post">
<label>email</label>
<input type="text" name="email">
<label>inserisci data</label>
<input type="text" placeholder="formato YYYY-MM-DD" name="data1">
<label>inserisci data</label>
<input type="text" placeholder="formato YYYY-MM-DD" name="data2">
<input type="submit" value="vedi">
</form>
</form>
</body>
</html>