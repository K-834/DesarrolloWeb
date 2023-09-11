<?php
session_start();

// Función para eliminar un elemento del carrito por su índice
function eliminarItemDelCarrito($indice) {
    if (isset($_SESSION['carrito'])) {
        $carrito = $_SESSION['carrito'];

        // Verificar si el índice es válido
        if (isset($carrito[$indice])) {
            unset($carrito[$indice]);
            $_SESSION['carrito'] = array_values($carrito); // Reindexar el carrito
        }
    }
}

// Verificar si se recibió un índice válido por GET
if (isset($_GET['index']) && is_numeric($_GET['index'])) {
    $indiceAEliminar = (int)$_GET['index'];
    eliminarItemDelCarrito($indiceAEliminar);
}

header("Location: " . $_SERVER['HTTP_REFERER']);
?>
