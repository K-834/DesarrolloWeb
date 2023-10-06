<%-- 
    Document   : detalle
    Created on : 12 set. 2023, 12:34:05
    Author     : EQUIPO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>detalle</title>
        <link href="detalle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-white">
          <a class="navbar-brand" href="#"> <img src="../Img/logo.png">  </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="../../../../CarritoServlet" style="color: red;" >Inicio<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"style="color: black;">Ofertas del Dia </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" style="color: black;">Contactos</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../Carrito/carrito.jsp" style="color: darkblue">Carrito </a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="../../Login/Login.jsp" style="color: darkblue;" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Iniciar Session
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav> 
        </div>
        
        <br>
        <!<!-- DETALLE INDIVIDUAL -->
          <main>
        <div class="contenedorb">
            <img src="../Img/perfume1.jpg" alt="imagend de camara">
            <div class="informacionb">
                <p class="marcab">ESIKA</p>
                <p class="descripcionb">Fragancia vibranza de ESIKA</p>
                <p class="codigob">CODIGO 097805</p>
                <p class="preciob">S/ 279.00</p>
                <p class="stockb">🔥 Solo quedan menos de 5 unidades</p>
                <div class="cantidadb">
                    <p>Cantidad</p>
                    <button class="btn-cantidadb" id="btn-cantidad-sub">-</button>
                    <input class="btn-cantidadb" id="input-cantidad-el" type="text" value="1">
                    <button class="btn-cantidadb" id="btn-cantidad-add">+</button>
                </div>
                <button class="btn btn-primaryb">AÑADIR AL CARRO</button>
                <a href="../../Home/index.jsp" class="btn btn-secondaryb">Volver al catálogo</a>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="script_producto.js" type="module"></script>
    </body>
</html>
