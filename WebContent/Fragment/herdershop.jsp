<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styleindex.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<meta charset="UTF-8">
<title>hearder</title>
</head>
<body>
 <header id="navbar">
            <div id="logo">GINusJOI</div>
            <nav id="menu">
                <a href="index.jsp" >Home</a>
                <a href="ListaProdotti" method="post">Shop</a>
                <a href="carrello.jsp" >Carrello</a>
                <a href="contatti.jsp">Contattaci</a>
            </nav>
            <div id="icons">
                <a href="login.jsp"><i class="fas fa-user"></i></a>
                <a href="carrello.jsp"><i class="fas fa-shopping-cart"></i></a>
            </div>
        </header>
</body>
</html>