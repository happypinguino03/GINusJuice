<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/stylelogin.css">
    <script src="${pageContext.request.contextPath}/scripts/scriptlogin.js" defer></script>
</head>
<body>
    <form id="loginForm" action="CheckLogin" method="post">
        <fieldset>
            <label for="email">Email</label>
            <input id="email" type="text" name="email" placeholder="Inserisci email">
            <br>
            <label for="password">Password</label>
            <input id="password" type="password" name="password" placeholder="Inserisci password">
            <br>
            <input type="submit" value="Clicca qui per accedere">
        </fieldset>
    </form>
</body>
</html>
