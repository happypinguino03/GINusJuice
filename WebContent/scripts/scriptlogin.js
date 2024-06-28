document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('loginForm');

    const changeBackground = () => {
        document.body.style.backgroundImage = 'url("../images/sfondologin.gif")';
        document.body.style.backgroundSize = 'cover';
    };

    const validateForm = () => {
        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value.trim();
        if (email === '' || password === '') {
            alert('Please fill in both fields.');
            return false;
        }
        return true;
    };

    form.addEventListener('submit', (event) => {
        event.preventDefault(); // Evita l'invio immediato del modulo

        if (validateForm()) {
            // Centra il form
            form.parentElement.style.display = 'flex';
            form.parentElement.style.justifyContent = 'center';
            form.parentElement.style.alignItems = 'center';

            // Avvia l'animazione di sfondo
            changeBackground();

            // Ritarda l'invio del modulo per 2 secondi per mostrare l'animazione
            setTimeout(() => {
                form.submit();
            }, 2000);
        }
    });
});
