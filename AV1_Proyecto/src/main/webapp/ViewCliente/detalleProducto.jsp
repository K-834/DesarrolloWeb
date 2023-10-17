

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalle Producto</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!--  -->
        <link rel="stylesheet" href="detalleProducto.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <!-- Links Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    
    </head>
    <body>
        
        <%@include file="header/header.jsp" %>
        
        <div class="container-fluid">
            <div class="container-description">
                <div class="cont">
                    <div class="cont-image">
                        <img src="../VistaCliente/perfume1.jpg" class="img-fluid" alt="">
                    </div>
                </div>
                <div class="cont">
                    <div class="cont-txt">
                        <p class="name-product">FRAGANCIA VIBRANZA</p>
                        <p class="name-marca">ESIKA</p>
                        <p class="precio">S/ 279.00</p>
                        <p class="stock">🔥 Solo quedan menos de <span>5</span> unidades</p>
                        <div class="detalle-pr">
                            <p>Descripción del producto:</p>
                            <p>Fragancia elegante y fresca, notas florales y cítricas, ideal para ocasiones especiales. Un aroma cautivante y duradero.</p>
                        </div>
                        <div class="botones">
                            <div class="cantidad-container">
                                <div class="btn-group">
                                    <button class="btn btn-cantidad span-link" id="btn-cantidad-sub">-</button>
                                    <input class="btn btn-cantidad span-link" id="input-cantidad-el" type="text" value="1">
                                    <button class="btn btn-cantidad span-link" id="btn-cantidad-add">+</button>
                                </div>
                                <button class="btn btn-primary mx-1"><span class="span-link">AÑADIR</span></button>
                            </div>
                            <div class="d-flex">
                                <a href="#" class="btn btn-secondary mx-1"><span class="span-link">Volver al catálogo</span></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Botones aumentar disminuir cantidad -->

        <script>
            const inputCantidadEl = document.getElementById("input-cantidad-el");
            const btnCantidadSub = document.getElementById("btn-cantidad-sub");
            const btnCantidadAdd = document.getElementById("btn-cantidad-add");

            btnCantidadSub.addEventListener("click", () => {
                let cantidad = parseInt(inputCantidadEl.value, 10);
                if (cantidad > 1) {
                    cantidad--;
                    inputCantidadEl.value = cantidad;
                }
            });

            btnCantidadAdd.addEventListener("click", () => {
                let cantidad = parseInt(inputCantidadEl.value, 10);
                cantidad++;
                inputCantidadEl.value = cantidad;
            });
        </script>
        
    </body>
</html>
