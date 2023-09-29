window.sr = ScrollReveal();

sr.reveal('.scroll', {
    duration: 5000,
    origin: 'bottom'
});

function agregarAlCarrito(productId) {
    var cantidad = 1;

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "CarritoServlet", true);
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Manejar la respuesta del servidor si es necesario
        }
    };
    
    xhr.send("productId=" + productId + "&quantity=" + cantidad);
}