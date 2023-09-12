<%@page import="proyecto.entidades.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Usuario> lista = (List<Usuario>) request.getSession().getAttribute("listaUsuarios");
    int cont = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Usuarios</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="usuariosEstilos.css">
    </head>
    <body>
        <main class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
        
            <div class="container">
                <h1 class="mb-3 titulo">Lista de Usuarios</h1>

                <div class="ux-agregar-buscar">
                    <a href="usuarioAgregar.jsp" class="btn btn-primary mb-3">Agregar Usuario</a>
                    <button class="btn btn-secondary mb-3" data-limpiar="limpiar">Limpiar Filtro</button>
                    <div class="input-group mb-3">
                        <button type="submit" class="btn btn-outline-secondary" data-buscar="buscar">Buscar</button>
                        <input type="text" class="form-control" id="txt-buscar" name="txt-buscar">
                    </div>
                </div>

                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Codigo</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">
                        <% for (Usuario usuario : lista) { %>
                        <% cont++;%>
                        <tr class="usuario" id="<%=usuario.getCodigo()%>">
                            <th scope="row"><%=cont%></th>
                            <td><%=usuario.getCodigo()%></td>
                            <td><%=usuario.getTipo()%></td>
                            <td class="usuario-row-nombre"><%=usuario.getNombre()%></td>
                            <td><%=usuario.getCorreo()%></td>
                            <td><%=usuario.getContrasena()%></td>
                            <td>
                                <form action="../../../UsuarioServlet" method="POST">
                                    <input type="hidden" name="accion" id="accion" value="ver" />
                                    <input type="hidden" name="usuario-codigo" id="usuario-codigo" value="<%=usuario.getCodigo()%>" />
                                    <button type="submit" class="btn btn-success">Editar</button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%=usuario.getCodigo()%>">Eliminar</button>
                                </form>
                            </td>
                        </tr>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal<%=usuario.getCodigo()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Advertencia: Está opción no podrá deshacerse!</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ¿Seguro que deseas eliminar el producto <%=usuario.getNombre()%>?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <form action="../../../UsuarioServlet" method="POST">
                                            <input type="hidden" name="accion" id="accion" value="eliminar" />
                                            <input type="hidden" name="usuario-codigo" id="usuario-codigo" value="<%=usuario.getCodigo()%>" />
                                            <button type="submit" class="btn btn-danger">Eliminar Producto</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <% }%>
                    </tbody>
                </table>
            </div>   
        </main>
        <!-- JS BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
        <script src="usuariosScript.js"></script>
    </body>
</html>
