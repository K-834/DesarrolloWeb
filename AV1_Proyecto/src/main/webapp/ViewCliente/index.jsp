<%-- 
    Document   : index
    Created on : 6 oct. 2023, 00:25:24
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Bodega Web</title>
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/styles.css">
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/IniciarSesion/CitaEstilo.css">
        <link rel="stylesheet" href="/AV1_Proyecto/ViewCliente/IniciarSesion/modalG.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header/header.jsp" %>
        <main>
            <section class="landing">
                <div class="titles">
                    <h1>LOS MEJORES PRODUCTOS<br>MÁS CERCA DE TI</h1>
                    <p>Olvídate de las colas y disfruta de adquirir todo lo que necesitas<br>desde la tranquilidad de tu hogar</p>
                    <button class="btn-comprar" data-comprar="comprar">Comprar Ahora</button>
                </div>
                <img class="señora-imagen" src="assets/img/señora_alpha.png" alt="señora">
                <div class="banner">
                    <div class="banner-img">
                        <img src="assets/img/pro_sanfernando.png" alt="logo san fernando">
                    </div>
                    <div class="banner-img">
                        <img src="assets/img/pro_costeño.png" alt="logo costeño">
                    </div>
                    <div class="banner-img">
                        <img src="assets/img/pro_gloria.png" alt="logo gloria">
                    </div>
                    <div class="banner-img">
                        <img src="assets/img/pro_bimbo.png" alt="logo bimbo">
                    </div>
                    <div class="banner-img">
                        <img src="assets/img/pro_donvittorio.png" alt="logo Don Vittorio">
                    </div>
                </div>
            </section>
        </main>
        <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

        </div>
        <div class="popup popup-login hidden" id="popup-login">
            <form action="/AV1_Proyecto/UsuarioController" class="form" method="POST">
                <input class="hidden" name="accion" type="text" value="login">
                <h1>INICIO DE SESIÓN</h1>
                <input type="text" name="usuario-correo" placeholder="Correo">
                <input type="password" name="usuario-contrasena" placeholder="Contraseña">
                <button>INGRESAR</button>
                <p>¿No tienes cuenta? <span data-registrate="registrate">Regístrate</span></p>
            </form>
        </div>
        <div class="popup popup-registrate hidden" id="popup-registrate">
            <form action="/AV1_Proyecto/UsuarioController" method="POST" class="form">
                <input class="hidden" name="accion" type="text" value="registro">
                <h1>REGISTRO</h1>
                <input type="text" name="usuario-nombre" placeholder="Ingrese su nombre">
                <input type="email" name="usuario-correo" placeholder="Ingrese correo">
                <input type="password" name="usuario-contrasena" placeholder="Ingrese contraseña">
                <button>REGISTRATE</button>
            </form>
        </div>
        <script src="/AV1_Proyecto/ViewCliente/script.js"></script>
        <script src="/AV1_Proyecto/ViewCliente/IniciarSesion/modal.js"></script>
        <%@include file="header/SesionLog.jsp" %>
    </body>
</html>