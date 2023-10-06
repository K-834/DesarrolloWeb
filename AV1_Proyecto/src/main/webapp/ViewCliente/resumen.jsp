<%-- 
    Document   : resumen
    Created on : 6 oct. 2023, 00:28:08
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resumen</title>
         <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
    <!-- ICON CDN (BOOTSTRAP ICON) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
    <%@include file="header/header.jsp" %>
      <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
    <main class="main-resumen">
        <nav class="categorias">
            <a href="">CARNES, AVES Y PESCADOS</a>
            <a href="">CONGELADOS</a>
            <a href="">LACTEOS</a>
            <a href="">FRUTAS Y VERDURAS</a>
            <a href="">PANADERIA Y PASTELERIA</a>
            <a href="">BEBIDAS</a>
            <a href="">CUIDADO PERSONAL</a>
            <a href="">LIMPIEZA</a>
        </nav>
        <h1>PEDIDO CONFIRMADO</h1>
        <div class="paneles">
            <div class="panel panel1">
                <b class="txt-confirmacion">¡Hemos confirmado tu pedido con éxito!</b>
                <p class="txt-envio-email">Enviaremos para el email los detalles de su compra</p>
            </div>
            <div class="panel panel2">
                <p class="tarjeta-pedido">Pedido Confirmado: <span class="tarjeta-pedido-codigo">v7410072mafp</span> | <span class="tarjeta-pedido-fecha">4 de septiembre de 2023</span></p>
                <div class="tarjetas">
                    <div class="tarjeta datos-personales">
                        <b>DATOS PERSONALES</b>
                        <p>NOMBRE: <span class="tarjeta-nombre">Álvaro Fernández</span></p>
                        <p>DNI: <span class="tarjeta-dni">48527293</span></p>
                        <p>CORREO: <span class="tarjeta-correo">afernandez@gmail.com</span></p>
                        <p>TELÉFONO: <span class="tarjeta-telefono">948566987</span></p>
                    </div>
                    <div class="tarjeta medio-pago">
                        <b>MEDIO DE PAGO</b>
                        <p>PEDIDO: <span class="bold">v7410072mafp</span></p>
                        <p class="no-bold">Pago con tarjeta de Crédito (Visa)</p>
                        <p class="no-bold">S/ <span>45.54</span></p>
                    </div>
                    <div class="tarjeta info-resumen">
                        <b>RESUMEN</b>
                        <p class="no-bold">Subtotal <span>S/ <span>45.54</span></span></p>
                        <p class="no-bold">Envío <span>S/ <span>0.00</span></span></p>
                        <p class="no-bold tarjeta-total">Total <span>S/ <span>45.54</span></span></p>
                    </div>
                </div>
            </div>
            <div class="panel panel3">
                <div class="info-pedido">
                    <p>PEDIDO: <span>v7410072mafp</span></p>
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
            <button class="btn-seguir-comprando"><i class="bi bi-arrow-left"></i>SEGUIR COMPRANDO<i class="bi bi-cart-fill"></i></button>
        </div>

    </main>
         <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

</body>
</html>