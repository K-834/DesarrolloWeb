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
        <form action="" class="form">
            <h1>INICIO DE SESIÓN</h1>
            <input type="text" placeholder="Correo">
            <input type="password" placeholder="Contraseña">
            <button>INGRESAR</button>
            <p>¿No tienes cuenta? <span data-registrate="registrate">Regístrate</span></p>
        </form>
    </div>
    <div class="popup popup-registrate hidden" id="popup-registrate">
        <form action="" class="form">
            <h1>REGISTRO</h1>
            <input type="text" placeholder="Ingrese su nombre">
            <input type="text" placeholder="Ingrese apellido">
            <input type="text" placeholder="Ingrese correo">
            <input type="password" placeholder="Ingrese contraseña">
            <button>REGISTRATE</button>
        </form>
    </div>
         <script src="/AV1_Proyecto/ViewCliente/script.js"></script>
         <script src="/AV1_Proyecto/ViewCliente/IniciarSesion/modal.js"></script>
    <%@include file="header/SesionLog.jsp" %>
</body>
</html>