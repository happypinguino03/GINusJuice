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

    const xhr = new XMLHttpRequest();
    const url = 'FilterProductsServlet'; // Ensure this URL is correct
    const params = `minPrice=${encodeURIComponent(minPrice)}&maxPrice=${encodeURIComponent(maxPrice)}`;

    xhr.open('GET', `${url}?${params}`, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // Parse the JSON response
                const products = JSON.parse(xhr.responseText);

                // Get the product grid element
                const productGrid = document.querySelector('.product-grid');
                productGrid.innerHTML = ''; // Clear existing products

                // Create and insert new product elements
                products.forEach(product => {
                    const productElement = document.createElement('div');
                    productElement.classList.add('product');

                    productElement.innerHTML = `
                        <div class="product-image">
                            <img alt="${product.nome}" src="images/${product.nome}">
                        </div>
                        <div class="product-details">
                            <h3 class="product-name">${product.nome.substring(0, product.nome.length - 4)}</h3>
                            <p class="product-description"><strong>Descrizione:</strong> ${product.descrizione}</p>
                            <p class="product-price"><strong>Prezzo:</strong> ${product.prezzo.toFixed(2)}&#8364;</p>
                            <p class="product-quantity"><strong>Quantità rimanente in magazzino:</strong> ${product.quantita}</p>
                            <form action="AggiungiProdotto" method="post" onsubmit="showNotification(event)">
                                <input type="hidden" name="prodottoId" value="${product.id}">
                                <input type="hidden" name="nome" value="${product.nome}">
                                <input type="hidden" name="descrizione" value="${product.descrizione}">
                                <input type="hidden" name="prezzo" value="${product.prezzo}">
                                <input type="hidden" name="quantita" value="${product.quantita}">
                                <button type="submit" class="add-to-cart">Aggiungi al carrello</button>
                            </form>
                        </div>
                    `;

                    // Append the product element to the product grid
                    productGrid.appendChild(productElement);
                });
            } else {
                console.error('An error occurred during the request.');
            }
        }
    };

    xhr.send();
}
