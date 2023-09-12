<%-- 
    Document   : GestionPedidos
    Created on : Sep 12, 2023, 1:08:11 PM
    Author     : aferz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimiento Pedidos</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="pedidosEstilos.css">
    </head>
    <body>
        <main class="reparacion">

            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            <div class="container mt-5">
                <h1 class="mb-4">Verificación de Pedidos</h1>

                <!-- Filtro de pedidos -->

                <div class="mb-3 col-3">
                    <label for="filtro" class="form-label">Filtrar pedidos:</label>
                    <select class="form-select form-select-sm">
                        <option selected>En Proceso</option>
                        <option>Enviado</option>
                        <option>Entregado</option>
                    </select>
                </div>

                <!-- Tabla donde se lisatn los pedidos -->

                <table class="table">
                    <thead>
                        <tr>
                            <th>ID de Pedido</th>
                            <th>Cliente</th>
                            <th>Fecha de Pedido</th>
                            <th>Productos</th>
                            <th>Total</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Maria Rodríguez</td>
                            <td>2023-09-10</td>
                            <td>Producto 1, Producto 2</td>
                            <td>$100.00</td>
                            <td>
                                <select class="form-select form-select-sm">
                                    <option selected>En Proceso</option>
                                    <option>Enviado</option>
                                    <option>Entregado</option>
                                </select>
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#detallePedidoModal">Detalles</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Jose Diaz</td>
                            <td>08/09/2023</td>
                            <td>Producto 1</td>
                            <td>S/450.00</td>
                            <td>
                                <select class="form-select form-select-sm">
                                    <option selected>En Proceso</option>
                                    <option>Enviado</option>
                                    <option>Entregado</option>
                                </select>
                            </td>
                            <td>
                                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#detallePedidoModal">Detalles</button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- Paginación -->

                <nav aria-label="Paginación">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Anterior</a>
                        </li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="#">1 <span class="visually-hidden">(current)</span></a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">Siguiente</a>
                        </li>
                    </ul>
                </nav>

                <!-- Modal detalles del pedido (sin conectar es el mismo xd)-->

                <div class="modal fade" id="detallePedidoModal" tabindex="-1" role="dialog" aria-labelledby="detallePedidoModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="detallePedidoModalLabel">Detalles del Pedido</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p><strong>ID de Pedido:</strong> 1</p>
                                <p><strong>Cliente:</strong> Maria Rodríguez</p>
                                <p><strong>Fecha de Pedido:</strong> 2023-09-10</p>
                                <p><strong>Productos:</strong> Producto 1, Producto 2</p>
                                <p><strong>Total:</strong> $100.00</p>
                                <p><strong>Estado:</strong> En Proceso</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </main>
        <!-- JS BOOTSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <% //PARA COLOCAR LOS ICONOS EN LA BARRA  %>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
    </body>
</html>