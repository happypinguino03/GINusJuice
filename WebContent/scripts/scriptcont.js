document.getElementById("emailForm").addEventListener("submit", function(event) {
    event.preventDefault();
    
    var email = document.getElementById("email").value;
    var message = document.getElementById("message").value;
    
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "${pageContext.request.contextPath}/SendEmailServlet", true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            alert("Email inviata con successo!");
            document.getElementById("emailForm").reset();
        }
    };
    var data = JSON.stringify({ email: email, message: message });
    xhr.send(data);
});
