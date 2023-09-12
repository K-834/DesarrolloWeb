
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../estilos.css">
        <title>Pagina Administración</title>
        <link rel="stylesheet" href="homeEstilos.css">
    </head>
    <body>
        <div class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            
            
            <div class="container">
                <center> <h1>HOLA JUANITO, un dia mas de trabajo</h1> </center>
                <div class="home-contenedor">
                    <a href="../../../UsuarioServlet">Gestión de Usuarios</a>
                    <a href="../../../ProductoServlet">Gestión de Productos</a>
                    <a href="/AV1_Proyecto/Pagina1/VistaAdministrativo/Pedidos/GestionPedidos.jsp">Gestión de Pedidos</a>
                </div>
            </div>

        </div>

        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
    <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
     <script src="Empleados.js"></script>
    </body>
</html>
