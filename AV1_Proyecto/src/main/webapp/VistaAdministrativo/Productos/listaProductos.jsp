<%@page import="java.util.List"%>
<%@ page import="modelo.entidades.ProductosCatalogo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<ProductosCatalogo> lista = (List<ProductosCatalogo>) request.getSession().getAttribute("listaProductos");
    int cont = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Productos</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="productosEstilos.css">
    </head>
    <body>
        <main class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
        
            <div class="container">
                <h1 class="mb-3 titulo">Lista de Productos</h1>

                <div class="ux-agregar-buscar">
                    <a href="productoAgregar.jsp" class="btn btn-primary mb-3">Agregar Producto</a>
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
                            <th scope="col">Nombre</th>
                            <th scope="col">Descripcion</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Precio S/</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">
                        <% for (ProductosCatalogo producto : lista) { %>
                        <% cont++;%>
                        <tr class="producto" id="<%=producto.getId()%>">
                            <th scope="row"><%=cont%></th>
                            <td><%=producto.getId()%></td>
                            <td class="producto-row-nombre"><%=producto.getNombres()%></td>
                            <td>
<%--                                TRABJANDO AQUÍ, DIBUJAR LA IMAGEN DE LOS PRODUCTOS!!--%>
                                <img src="/AV1_Proyecto/ControladorIMG?id=${producto.getId()}" alt="<%=producto.getDescripcion()%>">
                            </td>
                            <td><%=producto.getStock()%></td>
                            <td><%=String.format("%.2f", producto.getPrecio())%></td>
                            <td>
                                <form action="../../../ProductoServlet" method="POST">
                                    <input type="hidden" name="accion" id="accion" value="ver" />
                                    <input type="hidden" name="producto-codigo" id="producto-codigo" value="<%=producto.getId()%>" />
                                    <button type="submit" class="btn btn-success">Editar</button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%=producto.getId()%>">Eliminar</button>
                                </form>
                            </td>
                        </tr>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal<%=producto.getId()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Advertencia: Está opción no podrá deshacerse!</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ¿Seguro que deseas eliminar el producto <%=producto.getNombres()%>?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <form action="../../../ProductoServlet" method="POST">
                                            <input type="hidden" name="accion" id="accion" value="eliminar" />
                                            <input type="hidden" name="producto-codigo" id="producto-codigo" value="<%=producto.getId()%>" />
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
        <script src="productosScript.js"></script>
    </body>
</html>
