<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Il tuo titolo</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/styleindex.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="scripts/scriptindex.js"></script>
</head>
<body>

    <!-- Overlay di sfocatura per il contenuto principale -->
    <div id="main-content">
        <!-- Menu di navigazione -->
        <header id="navbar">
            <div id="logo">GINusJOI</div>
            <nav id="menu">
                <a href="login.jsp" class="disabled" disabled>Login</a>
                <a href="successo.jsp" class="disabled" disabled>Successo</a>
                <a href="Logout" class="disabled" disabled>Logout</a>
                <a href="ListaProdotti" class="disabled" disabled>Shop</a>
                <a href="carrello.jsp" class="disabled" disabled>Carrello</a>
            </nav>
            <div id="icons">
                <a href="#" class="disabled" disabled><i class="fas fa-search"></i></a>
                <a href="login.jsp" class="disabled" disabled><i class="fas fa-user"></i></a>
                <a href="carrello.jsp" class="disabled" disabled><i class="fas fa-shopping-cart"></i></a>
            </div>
        </header>
        <!-- Contenuto della pagina -->
        <main class="content">
            <!-- Sezione "Chi siamo" -->
            <div id="about-us">
                <div class="description">
                    <h1>Chi siamo?</h1>
                    <p><h3>Siamo due studenti universitari appassionati di mixologia e buon bere. Abbiamo fondato GINusJOI con l'obiettivo di offrire ai nostri clienti una vasta selezione di gin di alta qualità, accompagnata da consigli e ricette per creare cocktail unici. Il nostro sito di e-commerce è progettato per fornire un'esperienza di shopping semplice e piacevole, dove gli amanti del gin possono esplorare le nostre offerte, ricevere consigli personalizzati e trovare tutto ciò di cui hanno bisogno per godersi un drink perfetto.</h3></p>
                </div>
                <div class="image">
                    <img src="images/imm_desc.jpg" alt="Immagine illustrativa">
                </div>
            </div>
        </main>
   <div id="image-carousel">
    <img src="images/imm1.jpeg" class="active" alt="Image 1">
    <img src="images/imm2.jpeg" alt="Image 2">
    <img src="images/imm3.jpeg" alt="Image 3">
     <img src="images/imm4.jpeg" alt="Image 4">
    <img src="images/imm5.jpeg" alt="Image 5">
     <img src="images/imm6.jpeg" alt="Image 6">
    <img src="images/imm7.jpeg" alt="Image 7">
    
</div>
    
    
        <!-- Barra gialla di informazione sulla spedizione -->
        <div id="shipping-info">
            <div class="shipping-content">
                <span>Per gli ordini superiori a 100 euro la spedizione è gratuita</span>
                <span class="close-icon" onclick="closeShippingInfo()">×</span>
            </div>
        </div>

        <!-- Contenuto della pagina -->
        <main class="content">
            <!-- Helper Fragment -->
            <div id="helper" style="display: none;">
                <a href="login.jsp" class="disabled" disabled>login</a>
                <br>
                <a href="successo.jsp" class="disabled" disabled>successo</a>
                <br>
                <form action="Logout" method="post">
                    <input type="submit" value="disconnetti" class="disabled" disabled>
                    <br>
                </form>
                <a href="registrazione.jsp" class="disabled" disabled>registrati</a>
                <br>
                <form action="ListaProdotti" method="post">
                    <input type="submit" value="shop" class="disabled" disabled>
                </form>
                <br>
                <a href="carrello.jsp" class="disabled" disabled>carrello</a>
            </div>

            <!-- Footer Fragment -->
            <footer id="footer">
                <p>© 2024 La tua azienda. Tutti i diritti riservati.</p>
            </footer>
        </main>
  
    <!-- Overlay per il popup di conferma età -->
    <div id="overlay">
        <div id="age-confirmation" style="display: none;">
            <h2>Sei maggiorenne?</h2>
            <button onclick="checkAge(true)">Sì, sono maggiorenne</button>
            <button onclick="redirectToCocaCola()">No, non sono maggiorenne</button>
        </div>
    </div>

</body>
</html>
