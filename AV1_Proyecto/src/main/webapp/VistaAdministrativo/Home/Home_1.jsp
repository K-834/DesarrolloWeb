<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="proyecto.entidades.home.Contenedores"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/AV1_Proyecto/Pagina1/VistaAdministrativo/estilos.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-12 my-5">
                        <h1>HOLA JUANITO, un día más de trabajo</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <% List<Contenedores> contenedores = (List<Contenedores>) request.getAttribute("contenido"); %>
                    <% for (Contenedores c : contenedores) {%>
                    <div class="col-12 col-md-4 mb-4">
                        <div class="card" style="width: 100%;">
                            <img src="<%= c.getImagen()%>" class="card-img-top" alt="..." style="max-height: 300px; padding: 5px;">
                            <div class="card-body">
                                <h5 class="card-title"><%= c.getTitulo()%></h5>
                                <p class="card-text"></p>
                                <a href="<%= c.getLink()%>" class="btn btn-primary">Ir a la vista</a>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>






        </div>

        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
        <script src="Empleados.js"></script>

    </body>
</html>
