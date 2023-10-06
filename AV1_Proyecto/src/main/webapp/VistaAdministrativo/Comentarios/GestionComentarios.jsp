
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion Comentarios</title>
        <!-- CSS BOOTSTRAP -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <link rel="stylesheet" href="comentariosEstilos.css">
    </head>
    <body>
        <main class="reparacion">
            
            <div id="barra">
                <%@include file="../barra.jsp" %>
            </div>
            <div class="container mt-5">
                <h1 class="mb-4">Gestión de Comentarios</h1>


                <!-- Tabla donde se listan los comentarios -->

                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre del Cliente</th>
                            <th>Comentario</th>
                            <th>Fecha</th>
                            <th>Respuesta</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Juan Pérez</td>
                            <td>Buen producto</td>
                            <td>18/05/2023</td>
                            <td>
                                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#respuestaModal">Ver Respuesta</button>
                            </td>
                            <td>
                                <a href="#" class="btn btn-primary btn-sm">Responder</a>
                                <a href="#" class="btn btn-danger btn-sm">Eliminar</a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Mario Moreno</td>
                            <td>Ta bueno tu producto</td>
                            <td>04/06/2023</td>
                            <td>
                                <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#respuestaModal">Ver Respuesta</button>
                            </td>
                            <td>
                                <a href="#" class="btn btn-primary btn-sm">Responder</a>
                                <a href="#" class="btn btn-danger btn-sm">Eliminar</a>
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
            </div>

            <!-- Modal respuesta a comentarios (sin conectar xd) -->

            <div class="modal fade" id="respuestaModal" tabindex="-1" role="dialog" aria-labelledby="respuestaModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="respuestaModalLabel">Respuesta al Comentario de Juan Pérez</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p><strong>Comentario del Cliente:</strong></p>
                            <p>Buen producto</p>
                            <hr>
                            <p><strong>Respuesta del Administrador:</strong></p>
                            <p>Gracias por tu comentario, Juan. Nos alegra que te haya gustado nuestro producto.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
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
