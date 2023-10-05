<%@page import="proyecto.entidades.carrito.Producto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="catalogo.css"/>
        <link href="/AV1_Proyecto/Pagina1/VistaCliente/Home/index.css" rel="stylesheet" type="text/css"/>
        <script src="https://unpkg.com/scrollreveal"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/86bdd0308e.js" crossorigin="anonymous"></script>
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
                        <a class="nav-link" href="#"style="color: black;">Ofertas del Dia </a>
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
                        <a class="nav-link" href="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Carrito/carrito.jsp" style="color: darkblue">
                            <div class="d-flex">
                                <i class="fa-solid fa-cart-shopping" style="color: black"></i>
                                <span class="cart-num">
                                    0
                                </span>
                            </div>
                        </a>
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

        <div class="contain w-100">
            <img src="../../bn21.png" class="img-fluid w-100" alt="...">
        </div>

        <main>
            <div class="container">
                <div class="row">
                    <div class="aside-links col-lg-2">
                        <nav class="nav flex-column">
                            <a class="nav-link border-bottom" href="#">Mujeres</a>
                            <a class="nav-link border-bottom" href="#">Hombres</a>
                            <a class="nav-link border-bottom" href="#">No Binarios</a>
                            <a class="nav-link border-bottom" href="#">Género Fluido</a>
                            <a class="nav-link border-bottom" href="#">etc</a>
                        </nav>
                    </div>
                    <div class="catalogo col col-lg-10">
                        <div class="row row-cols-2 row-cols-md-3 row-cols-lg-4">
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col my-1">
                                <div class="card">
                                    <a href="../DetallesProd/detalle.jsp">
                                        <img src="../../perfume1.jpg" class="card-img-top" alt="Perfume_1">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">Perfume 1</h5>
                                        <p class="card-text">Some quick example text</p>
                                        <a href="#" class="btn btn-primary w-100">Agregar</a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>

        </main>

        <%--
                <main class="scroll">
                    <%
                        List<Producto> listaDeProductos = (List<Producto>) request.getAttribute("contenido.catalogo");
                        for (Producto producto : listaDeProductos) {
                    %>
                    <section>
                        <h2><%= producto.getNombre()%></h2>
                        <a href="productoDetalles.jsp?productId=<%= producto.getId()%>">
                            <img class="imagenes" src="/AV1_Proyecto/Pagina1/VistaCliente/Productos/Img/perfume1.jpg" alt="Imagen del producto">
                        </a>
                        <p><%= producto.getDescripcion()%></p>
                        <p>Precio: $<%= producto.getPrecio()%></p>
                        <div class="d-flex mr-auto">
                            <a href="/AV1_Proyecto/Pagina1/VistaCliente/Productos/DetallesProd/detalle.jsp" class="button">Ver detalles</a>
                            <a href="#" onclick="agregarAlCarrito('<%= producto.getId()%>')">Agregar al carrito</a>

                </div>
            </section>
        </main>
        --%>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="/AV1_Proyecto/Pagina1/VistaCliente/Home/scrolll.js"></script>
    </body>
</html>
