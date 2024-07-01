<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Contatti - GINusJOI</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/stylecontact.css">
    <script src="${pageContext.request.contextPath}/scripts/scriptcontact.js" defer></script>
</head>
<body>
    <%@ include file="Fragment/herdershop.jsp" %>
    
    <div class="page-container">
        <div class="contact-container">
            <h2>Contatti</h2>
            
            <div id="contactInfo">
                <p><strong>Telefono:</strong> 081-099-44-33</p>
                <p><strong>Cellulare:</strong> 333-456-789</p>
            </div>
            
            <form id="emailForm">
                <fieldset>
                    <legend>Invia un'email</legend>
                    <label for="email">Il tuo indirizzo email:</label>
                    <input id="email" type="email" name="email" placeholder="Inserisci email" required>
                    <br>
                    <label for="message">Messaggio:</label>
                    <textarea id="message" name="message" rows="4" placeholder="Inserisci il tuo messaggio" required></textarea>
                    <br>
                    <button type="submit">Invia</button>
                </fieldset>
            </form>
            
            <div id="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3129.863868910545!2d14.4646149!3d40.9245264!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bae0793821c51%3A0xb4dc8a844b929970!2sIl%20Re%20Della%20Bistecca!5e0!3m2!1sen!2sus!4v1624022056474!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>

    <%@ include file="Fragment/footer.jsp" %>
</body>
</html>
