document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('loginForm');
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');
    let backgroundChanged = false;

    const changeBackground = () => {
        if (!backgroundChanged) {
            document.body.style.backgroundImage = 'url("../images/sfondologin.gif")';
            backgroundChanged = true;
        }
    };

    const handleFirstClick = () => {
        changeBackground();
        emailInput.removeEventListener('focus', handleFirstClick);
        passwordInput.removeEventListener('focus', handleFirstClick);
    };

    emailInput.addEventListener('focus', handleFirstClick);
    passwordInput.addEventListener('focus', handleFirstClick);

    form.addEventListener('submit', (event) => {
        event.preventDefault(); // Impedisce l'invio del form immediato
        // Usa setTimeout per ritardare l'invio del form e far vedere il cambio di sfondo
        setTimeout(() => {
            form.submit();
        }, 2000); // Imposta un ritardo di 2 secondi
    });
});
