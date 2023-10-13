<%-- 
    Document   : perfil
    Created on : 6 oct. 2023, 00:26:57
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfil</title>
              <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
<body>
    <%@include file="header/header.jsp" %>

    <main class="main-perfil">
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
                    <td><a href=""><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                </c:forEach>

                <!-- comment 
                <tr>
                    <td>2</td>
                    <td>2023-10-17</td>
                    <td>eee8789q</td>
                    <td>S/ 34.00</td>
                    <td>LISTO PARA RECOJER</td>
                    <td><a href=""><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>2023-11-01</td>
                    <td>sdg556gs</td>
                    <td>S/ 15.49</td>
                    <td>EN PROCESO</td>
                    <td><a href=""><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>2023-12-09</td>
                    <td>qwer1234</td>
                    <td>S/ 25.15</td>
                    <td>ENTREGADO</td>
                    <td><a href=""><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>-->
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
         <script src="/AV1_Proyecto/ViewCliente/script.js"></script>

</body>
</html>