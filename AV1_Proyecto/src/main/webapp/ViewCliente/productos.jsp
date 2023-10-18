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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <%@include file="header/header.jsp" %>


        <main class="main-productos">
            <%@include file="header/marcas.jsp" %>

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

                                <a href="CatalogoServlet?ver=${p.getId()}" class="btn button btn-agregar">Ver detalles</a>
                                <a href="CatalogoServlet?accion=AgregarCarrito&id=${p.getId()}" class="btn button btn-agregar">Agregar al carrito</a>

                            </div>

                        </center>
                    </div>

                </c:forEach>

            </div>

        </main>
        <div class="fixed" id="fixed">
            <!-- AQUÍ VAN LOS POPUPS CUANDO SE AGREGA UN PRODUCTO AL CARRITO -->
        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="/AV1_Proyecto/ViewCliente/script.js"></script>
        <script src="/AV1_Proyecto/ViewCliente/funciones.js"></script>

    </body>
</html>