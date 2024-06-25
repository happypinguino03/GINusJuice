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
         <!-- includi qui l'hearder-->>
         <jsp:include page="Fragment/hearder.jsp" />
       
        <!-- Contenuto della pagina -->
        <main class="content">
            <!-- Sezione "Chi siamo" -->
            <div id="about-us">
                <div class="description">
                    <h1>Chi siamo?</h1>
                    <p><h3>Siamo due studenti universitari appassionati di mixologia e buon bere. Abbiamo fondato GINusJOI con l'obiettivo di offrire ai nostri clienti una vasta selezione di gin di alta qualità, accompagnata da consigli e ricette per creare cocktail unici. Il nostro sito di e-commerce è progettato per fornire un'esperienza di shopping semplice e piacevole, dove gli amanti del gin possono esplorare le nostre offerte, ricevere consigli personalizzati e trovare tutto ciò di cui hanno bisogno per godersi un drink perfetto, speriamo di essere idonei.</h3></p>
                </div>
                <div class="image">
                    <img src="images/imm_desc.jpg" alt="Immagine illustrativa">
                </div>
            </div>
        </main>

        <h1>I nostri migliori prodotti..</h1>
        <div id="image-carousel">
            <div class="carousel-container">
                <img src="images/imm1.jpeg" class="active" alt="Image 1">
                <img src="images/imm2.jpeg" alt="Image 2">
                <img src="images/imm3.jpeg" alt="Image 3">
                <img src="images/imm4.jpeg" alt="Image 4">
                <img src="images/imm5.jpeg" alt="Image 5">
                <img src="images/imm6.jpeg" alt="Image 6">
                <img src="images/imm7.jpeg" alt="Image 7">
                <img src="images/imm1.jpeg" alt="Image 1">
                <img src="images/imm2.jpeg" alt="Image 2">
                <img src="images/imm3.jpeg" alt="Image 3">
                <img src="images/imm4.jpeg" alt="Image 4">
                <img src="images/imm5.jpeg" alt="Image 5">
                <img src="images/imm6.jpeg" alt="Image 6">
                <img src="images/imm7.jpeg" alt="Image 7">
            </div>
        </div>

        <!-- Barra gialla di informazione sulla spedizione -->
        <div id="shipping-info"> 
            <div class="shipping-content">
                <span>Per gli ordini superiori a 100 euro la spedizione è gratuita</span>
                <span class="close-icon" onclick="closeShippingInfo()">×</span>
            </div>
        </div>

       <!-- includi qui il footer-->>
       <jsp:include page="Fragment/footer.jsp" />
       
       

    <!-- Overlay per il popup di conferma età -->
    <div id="overlay">
         <div id="age-confirmation">
            <font color="#000000"><h2>Hai più di 18 anni?</h2></font>
            <button onclick="checkAge(true)">Sì, sono maggiorenne</button>
            <button onclick="redirectToCocaCola()">No, non sono maggiorenne</button>
        </div>
    </div>

</body>
</html>
