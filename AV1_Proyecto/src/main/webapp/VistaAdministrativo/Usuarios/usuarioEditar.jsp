<%@ page import="modelo.entidades.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="VistaAdministrativo/Usuarios/usuariosEstilos.css">
    </head>
    <body>
        <main class="reparacion">
            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            <div class="container">
                <h1 class="mb-3 titulo">Editar Usuario</h1>
                <form action="/AV1_Proyecto/UsuarioController" method="POST">
                    <input type="hidden" name="accion" value="editar" />
                    <div class="mb-3">
                        <label for="usuario-id" class="form-label">Id</label>
                        <input type="text" class="form-control" id="usuario-id" name="usuario-id" value="<%=usuario.getId()%>" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="usuario-tipo" class="form-label">Tipo</label>
                        <input type="text" class="form-control" id="usuario-tipo" name="usuario-tipo" value="<%=usuario.getTipo()%>" readonly required>
                    </div>
                    <div class="mb-3">
                        <label for="usuario-nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="usuario-nombre" name="usuario-nombre" value="<%=usuario.getNombre()%>" required>
                    </div>
                    <div class="mb-3">
                        <label for="usuario-correo" class="form-label">Correo</label>
                        <input type="email" class="form-control" id="usuario-correo" name="usuario-correo" value="<%=usuario.getCorreo()%>" required>
                    </div>
                    <div class="mb-3 hidden">
                        <label for="usuario-contrasena" class="form-label">Constraseña</label>
                        <input type="password" class="form-control" id="usuario-contrasena" name="usuario-contrasena" value="<%=usuario.getPassword()%>" required>
                    </div>
                    <button type="submit" class="btn btn-success">Actualizar Datos</button>
                    <a href="/AV1_Proyecto/UsuarioController" class="btn btn-secondary">Regresar</a>
                </form>
            </div>
        </main>
        <!-- JS BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
    </body>
</html>
