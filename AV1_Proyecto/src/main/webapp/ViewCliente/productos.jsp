<%-- 
    Document   : productos
    Created on : 6 oct. 2023, 00:26:42
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
        <title>Productos</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="header/header.jsp" %>
        
        
        <main class="main-productos">
            <nav class="categorias">
                <button data-categoria="CARNES, AVES Y PESCADOS">CARNES, AVES Y PESCADOS</button>
                <button data-categoria="CONGELADOS">CONGELADOS</button>
                <button data-categoria="LACTEOS">LACTEOS</button>
                <button data-categoria="FRUTAS Y VERDURAS">FRUTAS Y VERDURAS</button>
                <button data-categoria="PANADERIA Y PASTELERIA">PANADERIA Y PASTELERIA</button>
                <button data-categoria="BEBIDAS">BEBIDAS</button>
                <button data-categoria="CUIDADO PERSONAL">CUIDADO PERSONAL</button>
                <button data-categoria="LIMPIEZA">LIMPIEZA</button>
            </nav>
            <h1>PRODUCTOS</h1>
            <div class="catalogo">

                <c:forEach items="${productos}" var="p">

                    <div class="producto">
                        <div class="imagen">
                            <img src="ControladorIMG?id=${p.getId()}" alt="Producto">
                        </div>
                        <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                        <p class="nombre">${p.getNombres()}</p>
                        <p class="marca">Stock: ${p.getStock()}</p>
                        <p class="precio">Precio: S/. ${p.getPrecio()}</p>
                        <center>
                            <div class="d-flex mr-auto">

                                <a href="CatalogoServlet?accion=Comprar" class="button btn-agregar">Ver detalles</a>
                                <a href="CatalogoServlet?accion=AgregarCarrito&id=${p.getId()}" class="button btn-agregar">Agregar al carrito</a>

                            </div>

                        </center>
                    </div>

                </c:forEach>
                <!--
                
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/guiso_cerdo.png" alt="guiso">
                    </div>
                    <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                    <p class="nombre">Guiso de Cerdo x Kg.</p>
                    <p class="marca">San Fernando</p>
                    <p class="precio">S/26.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="guisoCerdo">AGREGAR</button>
                </div>
                -->
            </div>



        </main>
        <div class="fixed" id="fixed">
            <!-- AQUÍ VAN LOS POPUPS CUANDO SE AGREGA UN PRODUCTO AL CARRITO -->
        </div>
            <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

    </body>
</html>