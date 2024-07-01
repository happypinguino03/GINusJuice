// scripcar.js

// Funzione per gestire la richiesta AJAX per il filtro di prezzo
function filterByPrice(minPrice, maxPrice) {
    // Esegui una richiesta AJAX per filtrare i prodotti nel carrello per prezzo
    // Utilizza jQuery per comodità
    $.ajax({
        url: 'FilterProductsServlet', // URL della servlet per il filtro
        type: 'GET', // Metodo della richiesta
        data: {
            minPrice: minPrice,
            maxPrice: maxPrice
        },
        success: function(response) {
            // Aggiorna la visualizzazione dei prodotti nel carrello con la risposta
            $('#products-container').html(response); // Supponiamo che ci sia un div con id 'products-container'
        },
        error: function(xhr, status, error) {
            console.error('Errore durante la richiesta AJAX:', error);
        }
    });
}
