<%-- 
    Document   : carrito
    Created on : 6 oct. 2023, 00:26:02
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
        <title>Carrito</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    </head>
    <body>
        <%@include file="header/header.jsp" %>

        <main class="main-carrito">
            <nav class="categorias">
                <a href="productos.html">CARNES, AVES Y PESCADOS</a>
                <a href="productos.html">CONGELADOS</a>
                <a href="productos.html">LACTEOS</a>
                <a href="productos.html">FRUTAS Y VERDURAS</a>
                <a href="productos.html">PANADERIA Y PASTELERIA</a>
                <a href="productos.html">BEBIDAS</a>
                <a href="productos.html">CUIDADO PERSONAL</a>
                <a href="productos.html">LIMPIEZA</a>
            </nav>
            <h1>TU CARRITO</h1>
            <div class="paneles">
                <div class="productos">

                    <c:forEach items="${VerCompras}" var="car">

                        <div class="producto">
                            <div class="imagen">
                                <img src="ControladorIMG?id=${car.getIdProducto()}" alt="bisteck">
                            </div>
                            <div class="info">
                                <p class="nombre">${car.getNombres()}</p>
                                <p class="marca">${car.getDescripcion()} </p>
                                <div class="precio">
                                    <p class="unidad">${car.getPrecioCompra()}</p>
                                    <div class="acumulado">
                                        <p class="subtitulo">subtotal:</p>
                                        <p class="subtotal">${car.getPrecioCompra()*car.getCantidad()}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="ux">
                                <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                <a href="#" id="btnBorrar" class="btn-remove"><i class="bi bi-trash3-fill"></i></a>
                                <div class="quantity">
                                    <button class="btn-sub" data-sub="sub">-</button>
                                    <input type="hidden" id="idprod" value="${car.getIdProducto()}">
                                    <input type="number" id="Cantidad" value="${car.getCantidad()}" class="num" min="1">
                                    <button class="btn-add" data-add="add">+</button> 
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>

                <div class="resumen">
                    <div class="info">
                        <p class="titulo">Resumen de Compra</p>
                        <p class="subtotal">Subtotal<span>S/. ${totalPagar}</span></p>
                        <p class="descuento">Descuento (0%)<span>-S/. 0.00</span></p>
                        <p class="total">Total<span>S/. ${totalPagar}</span></p>
                    </div>
                    <div class="ux">
                        <a href="CatalogoServlet?accion=Comprar">IR A PAGAR<i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

            </div>
        </main> 
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="/AV1_Proyecto/ViewCliente/funciones.js"></script>
        <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

    </body>
</html>