<%-- 
    Document   : perfil
    Created on : 6 oct. 2023, 00:26:57
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
        <title>Perfil</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="header/header.jsp" %>

        <main class="main-perfil">
            <%@include file="header/marcas.jsp" %>

            <h1>Mi Perfil</h1>
            <div class="perfil-campos">
                <div class="perfil-campo">
                    <label for="perfil-nombre">NOMBRE</label>
                    <p class="perfil-input" id="perfil-nombre">${usuario}</p>
                </div>
                <div class="perfil-campo">
                    <label for="apellido">APELLIDO</label>
                    <p class="perfil-input" id="perfil-apellido">---</p>
                </div>
                <div class="perfil-campo">
                    <label for="correo">CORREO</label>
                    <p class="perfil-input" id="perfil-correo">${usuarioCorreo}</p>
                </div>
                <div class="perfil-campo">
                    <label for="documento">DOCUMENTO</label>
                    <p class="perfil-input" id="perfil-nombre">---</p>
                </div>
                <div class="perfil-campo">
                    <label for="nombre">TELEFONO</label>
                    <p class="perfil-input" id="perfil-nombre">---</p>
                </div>
                <div class="perfil-campo">
                    <button class="btn-editar-datos" data-abrireditardatos="abrireditardatos">EDITAR DATOS</button>
                </div>
            </div>
            <h2>PEDIDOS REALIZADOS</h2>
            <table class="tabla-pedidos-perfil">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Fecha</th>
                        <th>Pago Total</th>
                        <th>Estado</th>
                        <th>Acción</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${compras}" var="pe">
                        <tr>
                            <td>${pe.getId()}</td>
                            <td>${pe.getFecha()}</td>
                            <td>S/ ${pe.getMonto()}</td>
                            <td>${pe.getEstado()}</td>
                            <td><button data-bs-toggle="modal" data-bs-target="#exampleModal${pe.getId()}"><i class="bi bi-arrow-right-square-fill"></i> - Ver</button></td>
                        </tr>
                         
                    </c:forEach>
                        
                </tbody>
            </table>
        </main>
        <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

        </div>


        <div class="popup popup-editar-datos hidden" id="popup-editar-datos">
            <h1>Datos de Usuario</h1>
            <input id="documento-editar-datos" type="text" placeholder="Número de DNI">
            <input id="telefono-editar-datos" type="text" placeholder="Número de Teléfono">
            <input class="password-editar-datos" id="password-editar-datos" type="password" placeholder="Contraseña">
            <button data-editardatos="editardatos">EDITAR DATOS</button>
            <p class="ad-editar-datos">*Para editar tus datos es necesario que ingreses tu contraseña</p>
        </div>

        <!-- Modal -->
        <c:forEach items="${compras}" var="pe">
            <div class="modal fade" id="exampleModal${pe.getId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <c:forEach items="${productosPerfil}" var="p">
                                <div class="producto">
                                    <div class="imagen">
                                        <img src="ControladorIMG?id=${p.getId()}" alt="Producto">
                                    </div>
                                    <p class="nombre">${p.getNombres()}</p>
                                    <p class="marca">Cantidad: ${p.getDescripcion()}</p>
                                    <p class="precio">Precio: S/. ${p.getPrecio()}</p>
                                </div>
                            </c:forEach>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

    </body>
</html>