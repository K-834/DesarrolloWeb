
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="/AV1_Proyecto/VistaCliente/Home/index.css" rel="stylesheet" type="text/css"/>
        <script src="https://unpkg.com/scrollreveal"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-white">
            <a class="navbar-brand" href="#"> <img src="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Img/logo.png">  </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" style="color: red;" >Inicio<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: black;">Ofertas del Dia </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../../CatalogoServlet?accion=home" style="color: black;">CATALOGO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#" style="color: black;">Contactos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="/AV1_Proyecto/Pagina1/VistaAdministrativo/Home/Home.jsp" style="color: black; font-weight: bold;">ADMINISTRACIÓN</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="CatalogoServlet?accion=Carrito" style="color: darkblue">Carrito (${contador}) </a>
                    </li>
                </ul>
                <ul class="navbar-nav">

                    <li class="nav-item dropdown">

                        <a class="nav-link dropdown-toggle" href="#" style="color: darkblue;" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Iniciar Session
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/AV1_Proyecto/Pagina1/VistaCliente/Login/Login.jsp">Iniciar </a>
                            <div class="dropdown-divider"></div>

                            <a class="dropdown-item" href="/AV1_Proyecto/Pagina1/VistaCliente/Registro/Registro.jsp">Registrar</a>

                        </div>
                    </li>
                </ul>
            </div>
        </nav> 



        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Img/bn.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Img/bn.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Img/bn.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br>

        <main class="scroll">

            <c:forEach items="${productos}" var="p">
                
                <section>
                    <h2>${p.getNombres()}</h2>
                    <a href="#">
                        <img class="imagenes" src="ControladorIMG?id=${p.getId()}" alt="Imagen del producto">
                    </a>
                    <p>Stock: ${p.getStock()}</p>
                    <p>Precio: S/.${p.getPrecio()}</p>

                    <div class="d-flex mr-auto">

                        <a href="CatalogoServlet?accion=Comprar" class="button">Ver detalles</a>
                        <a href="CatalogoServlet?accion=AgregarCarrito&id=${p.getId()}" class="button">Agregar al carrito</a>

                    </div>
                </section>
                        
            </c:forEach>


        </main>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="/..AV1_Proyecto/VistaCliente/Home/scrolll.js"></script>
    </body>
</html>
