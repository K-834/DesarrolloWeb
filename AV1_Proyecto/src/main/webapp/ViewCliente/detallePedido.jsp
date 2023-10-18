<%-- 
    Document   : detallePedido
    Created on : 6 oct. 2023, 00:27:48
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalle Pedido</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="header/header.jsp" %>

        <main class="main-detalle-pedido">
            <%@include file="header/marcas.jsp" %>
            <h1>DETALLE PEDIDO</h1>
            <div class="paneles">

                <div class="panel panel1">
                    <div class="info">
                        <p class="tarjeta-pedido">Código de pedido: <span class="bold">v7410072mafp</span></p>
                        <p class="tarjeta-pedido">Medio de Pago: <span class="bold">Visa</span></p>
                        <p class="tarjeta-pedido">Pago total: <span>S/ <span class="bold">57.30</span></span></p>
                    </div>
                    <div class="codigo-barras">
                        <img src="assets/img/codigo-barras.png" alt="codigo de barras">
                    </div>
                </div>
                <div class="panel panel2">
                    <div class="info-pedido">
                        <p>MÉTODO DE ENTREGA: <span>Retiro en bodega MARISOL</span></p>
                        <p>FECHA: <span>Lunes, 4 de septiembre del 2023</span></p>
                        <p>HORA: <span>Entre las 07:00 PM y las 08:00 PM</span></p>
                        <p>DIRECCIÓN: <span>Calle García Rada 341, Lima</span></p>
                    </div>
                    <table class="tabla-productos">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th class="big-space"></th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <td><img src="assets/img/productos/bisteck.png" alt="bisteck"></td>
                                <td>Bisteck de tapa x Kg.</td>
                                <td class="tabla-precio">S/ 13.90</td>
                                <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                                <td class="tabla-precio">S/ 13.90</td>
                            </tr>
                            <tr>
                                <td><img src="assets/img/productos/crema_leche.png" alt="crema"></td>
                                <td>Crema de Leche</td>
                                <td class="tabla-precio">S/ 8.90</td>
                                <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                                <td class="tabla-precio">S/ 8.90</td>
                            </tr>
                            <tr>
                                <td><img src="assets/img/productos/queso_fresco.png" alt="queso"></td>
                                <td>Queso Fresco</td>
                                <td class="tabla-precio">S/ 34.50</td>
                                <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                                <td class="tabla-precio">S/ 34.50</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <button class="btn-seguir-comprando"><i class="bi bi-arrow-left"></i>VOLVER AL PERFIL</button>
            </div>
        </main>
        <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

    </body>
</html>