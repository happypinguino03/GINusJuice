// Funzione per chiudere la barra gialla di informazione sulla spedizione
function closeShippingInfo() {
    document.getElementById("shipping-info").style.display = "none";
}

// Funzione per controllare l'età
function checkAge(isAdult) {
    var overlay = document.getElementById("overlay");
    var ageConfirmation = document.getElementById("age-confirmation");
    var body = document.querySelector("body");

    if (isAdult) {
        // Se l'utente è maggiorenne, rimuovi l'overlay e l'effetto di sfocatura
        overlay.style.display = "none";
        ageConfirmation.style.display = "none";
        body.classList.remove("blur");

        // Abilita tutti i link e i pulsanti della pagina
        var disabledElements = document.querySelectorAll(".disabled");
        disabledElements.forEach(function(element) {
            element.classList.remove("disabled");
            element.removeAttribute("disabled");
        });
    } else {
        // Se l'utente non è maggiorenne, mostra l'overlay e disabilita i link e i pulsanti della pagina
        overlay.style.display = "flex";
        body.classList.add("blur");

        // Disabilita tutti i link e i pulsanti della pagina
        var interactiveElements = document.querySelectorAll("a, button");
        interactiveElements.forEach(function(element) {
            element.classList.add("disabled");
            element.setAttribute("disabled", true);
        });
    }
}

// Funzione per reindirizzare a coca-cola.it
function redirectToCocaCola() {
    window.location.href = "https://www.coca-cola.it";
}

// Funzione per il carosello di immagini
function startImageCarousel() {
    const images = document.querySelectorAll('#image-carousel img');
    let currentIndex = 0;

    setInterval(() => {
        const previousIndex = currentIndex;
        currentIndex = (currentIndex + 1) % images.length;

        images[previousIndex].classList.remove('active');
        images[previousIndex].classList.add('previous');

        images[currentIndex].classList.add('active');
        images[currentIndex].classList.remove('previous');
    }, 3000);
}

// Esegui la funzione di controllo età quando la pagina si carica
window.onload = function() {
    var overlay = document.getElementById("overlay");
    var ageConfirmation = document.getElementById("age-confirmation");

    // Mostra l'overlay e il popup di conferma età
    overlay.style.display = "flex";
    ageConfirmation.style.display = "block";

    // Centra il popup verticalmente
    var overlayHeight = overlay.offsetHeight;
    var ageConfirmationHeight = ageConfirmation.offsetHeight;
    ageConfirmation.style.top = `${(overlayHeight - ageConfirmationHeight) / 2}px`;

    // Aggiungi la classe blur per applicare lo sfondo sfocato
    document.body.classList.add("blur");
    
    // Avvia il carosello di immagini
    startImageCarousel();
};
