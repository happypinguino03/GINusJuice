<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styleindex.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<meta charset="UTF-8">
<title>Ihearder</title>
</head>
<body>
 <header id="navbar">
            <div id="logo">GINusJOI</div>
            <nav id="menu">
                <a href="login.jsp" class="disabled" disabled>Login</a>
                <a href="registrazione.jsp" class="disabled" disabled>Registrazione</a>
                <a href="Logout" class="disabled" disabled>Logout</a>
                <a href="ListaProdotti" class="disabled" disabled>Shop</a>
                <a href="carrello.jsp" class="disabled" disabled>Carrello</a>
                <a href="contatti.jsp" class="disabled" disabled>Contattaci</a>
            </nav>
            <div id="icons">
                <a href="login.jsp" class="disabled" disabled><i class="fas fa-user"></i></a>
                <a href="ListaProdotti" class="disabled" disabled><i class="fas fa-shopping-cart"></i></a>
            </div>
        </header>
</body>
</html>