function showNotification(event) {
    event.preventDefault(); // Impedisce il submit immediato del form

    const notification = document.getElementById('notification');
    notification.classList.add('show');

    setTimeout(() => {
        notification.classList.remove('show');
    }, 3000); // Nasconde dopo 3 secondi

    // Prosegue con il submit del form
    setTimeout(() => {
        event.target.submit();
    }, 100); // Invia il form dopo aver mostrato la notifica
}

function filterProducts() {
    const minPrice = document.getElementById('minPrice').value;
    const maxPrice = document.getElementById('maxPrice').value;

    // Effettua la richiesta Ajax
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // Rimuovi i prodotti attualmente visualizzati
                const productGrid = document.querySelector('.product-grid');
                productGrid.innerHTML = xhr.responseText;
            } else {
                console.error('Si è verificato un errore nella richiesta.');
            }
        }
    };

    // Prepara la richiesta
    const url = 'FilterProductsServlet'; // Assicurati che questo URL sia corretto
    const params = `minPrice=${minPrice}&maxPrice=${maxPrice}`;
    xhr.open('GET', `${url}?${params}`, true);
    xhr.send();
}
