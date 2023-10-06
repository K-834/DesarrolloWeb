<%-- 
    Document   : carrito
    Created on : 30/08/2023, 03:20:40 PM
    Author     : andre
--%>

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
            <a class="navbar-brand" href="#"> <img src="/AV1_Proyecto/VistaCliente/Productos/Img/logo.png">  </a>
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
                        <a class="nav-link" href="CatalogoServlet?accion=home" style="color: darkblue">Seguir Comprando </a>
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

        <div class="container mt-4">
            <h3>Carrito</h3>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>NOMBRES</th>
                                <th>PRODUCTO</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO</th>
                                <th>CANT</th>
                                <th>ACCION</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${VerCompras}" var="car">
                                <tr> 
                                    <td>${car.getItem()}</td> 
                                    <td><img src="ControladorIMG?id=${car.getIdProducto()}" width="100" height="100"></td>
                                    <td>${car.getNombres()}</td>
                                    <td>${car.getDescripcion()} </td>
                                    <td>${car.getPrecioCompra()}</td>
                                    <td>
                                        <input type="hidden" id="idprod" value="${car.getIdProducto()}">
                                        <input type="number" id="Cantidad" value="${car.getCantidad()}" class="form-control text-center" min="1">
                                    </td>

                                    <td> 
                                        <input type="hidden" id="idp" value="${car.getIdProducto()}">
                                        <a href="#" id="btnBorrar">Eliminar</a>
                                    </td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" readonly="" class="form-control" value="S/.${totalPagar}">
                            <label>Descuento:</label>
                            <input type="text" readonly="" class="form-control" value="S/. 0.00">
                            <label>Total:</label>
                            <input type="text" readonly="" class="form-control" value="S/.${totalPagar}">
                        </div>
                        <div class="card-footer">
                            <a href="CatalogoServlet?accion=Comprar" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="CatalogoServlet?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="/AV1_Proyecto/VistaCliente/Home/funciones.js" type="text/javascript"></script>

    </body>
</html>
