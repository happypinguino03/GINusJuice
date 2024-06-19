<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="RegistrazioneControl" method="post">
	<label>email</label>
	<input type="text" name="email" placeholder="inserisci email">
	<br>
	<label>nome</label>
	<input type="text" name="nome" placeholder="inserisci nome">
	<br>
	<label>cognome</label>
	<input type="text" name="cognome" placeholder="inserisci cognome">
	<br>
	<label>password</label>
	<input type="text" name="password_hash" placeholder="inserisci password">
	<br>
	<input type="submit" value="registrati">
	<br>
</form>
</body>
</html>