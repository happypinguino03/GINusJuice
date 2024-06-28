<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Login - GINusJOI</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/stylelogin.css">
    <script src="${pageContext.request.contextPath}/scripts/scriptlogin.js" defer></script>
</head>
<body>
    <%@ include file="Fragment/herdershop.jsp" %> 

    <div class="page-container">
        <div class="login-container">
            <form id="loginForm" action="CheckLogin" method="post">
                <fieldset>
                    <legend>Login</legend>
                    <label for="email">Email</label>
                    <input id="email" type="text" name="email" placeholder="Inserisci email" required>
                    <br>
                    <label for="password">Password</label>
                    <input id="password" type="password" name="password" placeholder="Inserisci password" required>
                    <br>
                    <input type="submit" value="Clicca qui per accedere">
                </fieldset>
            </form>
        </div>
    </div>

    <%@ include file="Fragment/footer.jsp" %> 

</body>
</html>

