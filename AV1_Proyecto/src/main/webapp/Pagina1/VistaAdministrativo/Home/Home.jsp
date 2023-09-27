
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../estilos.css">
        <title>Pagina Administración</title>
        <link rel="stylesheet" href="homeEstilos.css">
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    </head>
    <body>
        <div class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            
            
            <div class="container">
                <center> <h1>HOLA JUANITO, un dia mas de trabajo</h1> </center>
                <div class="row justify-content-center">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card" style="width: 100%;">
                        <img src="https://static.vecteezy.com/system/resources/previews/003/237/381/non_2x/line-icon-for-product-vector.jpg" class="card-img-top" alt="..." style="max-height: 300px; padding: 5px;">
                        <div class="card-body">
                            <h5 class="card-title"></h5>
                            <p class="card-text"></p>
                            <a href="/AV1_Proyecto/UsuarioController" class="btn btn-primary">Gestión de usuarios</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card" style="width: 100%;">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaEtlQRBwEKuwxCqHMnxyeWqQjQNjTPE_Sr9Aw6PWfYl7Fok5nWaXRFkw_g7shbWsSflg&usqp=CAU" class="card-img-top" alt="..." style="max-height: 300px; padding: 5px;">
                        <div class="card-body">
                            <h5 class="card-title"></h5>
                            <p class="card-text"></p>
                            <a href="../../../ProductoServlet" class="btn btn-primary">Gestión de Productos</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card" style="width: 100%;">
                        <img src="https://img.freepik.com/vector-premium/icono-comentario_9385-5.jpg?w=2000" class="card-img-top" alt="..." style="max-height: 300px; padding: 5px;">
                        <div class="card-body">
                            <h5 class="card-title"></h5>
                            <p class="card-text"></p>
                            <a href="/AV1_Proyecto/Pagina1/VistaAdministrativo/Pedidos/GestionPedidos.jsp" class="btn btn-primary">Gestión de Comentarios</a>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            
            
            
            

        </div>

        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
    <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
     <script src="Empleados.js"></script>
    </body>
</html>
