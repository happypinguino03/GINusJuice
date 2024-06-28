
function showNotification(event) {
    event.preventDefault(); // Prevent the form from submitting immediately

    const notification = document.getElementById('notification');
    notification.classList.add('show');

    setTimeout(() => {
        notification.classList.remove('show');
    }, 3000); // Hide after 3 seconds

    // Continue with form submission
    setTimeout(() => {
        event.target.submit();
    }, 100); // Submit the form after showing the notification
}
