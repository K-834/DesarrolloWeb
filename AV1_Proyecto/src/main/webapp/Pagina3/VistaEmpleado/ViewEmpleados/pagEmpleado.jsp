<?php
include('../Plantilla/ConexionBD.php');
$con = connection();
$sql = "SELECT * FROM services ORDER BY `idService` DESC";
$query = mysqli_query($con, $sql);
// Mostrar la notificación si existe
if (isset($_SESSION['mensaje'])) {
echo '<div class="alert alert-success">' . $_SESSION['mensaje'] . '</div>';
unset($_SESSION['mensaje']); // Limpia el mensaje para que no se muestre en futuras visitas
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Empleado</title>
        <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="estilosEmpleado.css">
        <script src="Empleados.js"></script>
    </head>
    <body>
        <div class="reparacion">

            <div id="barra">
                <%@include file="barra.jsp" %>
            </div>

            <div class="servicios" style=" margin-right: 30px;">
                <header>
                    <h1>Lista de Servicios</h1>
                </header>
                <form>
                    <table>
                        <thead>
                            <tr>
                                <th style=" width: 10%;">ID</th>
                                <th style=" width: 10%;">Servicio</th>
                                <th style=" width: 10%;">Mascota</th>
                                <th style=" width: 10%;">Raza</th>
                                <th style=" width: 20%;">Estado</th>
                                <th style=" width: 20%;">Progreso</th>
                                <th style=" width: 10%;">Fecha</th>
                                <th style=" width: 10%;" class="last-th">Hora</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php
                            if ($query){
                            for ($i = 0; $i < mysqli_num_rows($query); $i++) {
                            $row = mysqli_fetch_assoc($query);
                            $percent = $row['progress'];
                            echo "<tr class='data-row'>";
                            echo "<td name='idService'>" . $row['idService'] . "</td>";
                            echo "<td name='name'>" . $row['name'] . "</td>";
                            echo "<td name='pet'>" . $row['pet'] . "</td>";
                            echo "<td name='type'>" . $row['type'] . "</td>";
                            echo "<td name='state' value='" . $row['state'] . "'><state-tag style='--progress: " . $percent . "'>" . $row['state'] . "</state-tag></td>";
                            echo "<td name='progress' value='" . $percent . "'><progress-meter><progress-percent style='--progress: " . $percent . "'></progress-percent></td></progress-meter>";
                            echo "<td name='date'>" . $row['date'] . "</td>";
                            echo "<td class='last-td' name='time'>" . $row['time'] . " <i class='fas fa-edit' data-bs-toggle='modal' data-bs-target='#modal_intranet_editar_servicio'></i></td>";
                            echo "</tr>";

                            }
                            }
                            $con->close();
                            ?>      

                        </tbody>
                    </table>
                    <div class="btn-contenedor">
                        <input class="btn add" type="button" value="Agregar" data-bs-toggle="modal" data-bs-target="#modal_intranet_agregar_servicio">
                    </div>
                </form>
            </div>
        </div>


        <div class="modal fade" id="modal_intranet_agregar_servicio" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="title">AGREGAR SERVICIO</div>
                        <div class="content">
                            <form method="post" action="servicio.php" >
                                <input type="hidden" name="formularioId" value="nuevoservicio">
                                <div class="user-details">
                                    <div class="input-box">
                                        <span class="details">Servicio</span>
                                        <select class="details-list" required name = "servicio">
                                            <option selected>Baño</option>
                                            <option>Desparacitación</option>
                                            <option>Servicio Completo</option>
                                            <option>Otros</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Mascota</span>
                                        <select class="details-list" required name = "tipodemascota" id="tipoMascotaSelect">
                                            <option selected>Gato</option>
                                            <option>Perro</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Raza</span>
                                        <select class="details-list" required name = "razademascota" id="razaMascotaSelect">
                                            <option selected>Pitbull</option>
                                            <option>Doberman</option>
                                            <option>American Bully</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Estado</span>
                                        <select class="details-list" required name = "estado">
                                            <option selected>Pendiente</option>
                                            <option>En Progreso</option>
                                            <option>Finalizado</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Progreso: <span id="progressValue">0</span>%</span>
                                        <input type="range" value="0" min="0" max="100" name="progreso" id="progressInput">
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Fecha</span>
                                        <input type="date" required name = "date" id="dateInput">
                                    </div>
                                </div>            
                                <div class="button">
                                    <input type="submit" value="Guardar">
                                    <input type="reset" value="Cancelar" data-bs-dismiss="modal">
                                </div>
                            </form>
                        </div>
                    </div>  
                </div>  
            </div>  
        </div>


        <div class="modal fade" id="modal_intranet_editar_servicio" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="title">EDITAR SERVICIO: </div>
                        <div class="content">
                            <form method="post" action="servicio.php" >
                                <input type="hidden" name="formularioId" value="editarservicio">
                                <input type="hidden" name="idServicio" value="">
                                <div class="user-details">
                                    <div class="input-box">
                                        <span class="details">Servicio</span>
                                        <select class="details-list" required name = "servicio">
                                            <option selected>Baño</option>
                                            <option>Desparacitación</option>
                                            <option>Servicio Completo</option>
                                            <option>Otros</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Mascota</span>
                                        <select class="details-list" required name = "tipodemascota" id="e_tipoMascotaSelect">
                                            <option selected>Gato</option>
                                            <option>Perro</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Raza</span>
                                        <select class="details-list" required name = "razademascota" id="e_razaMascotaSelect">
                                            <option selected>Pitbull</option>
                                            <option>Doberman</option>
                                            <option>American Bully</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Estado</span>
                                        <select class="details-list" required name = "estado">
                                            <option selected>Pendiente</option>
                                            <option>En Progreso</option>
                                            <option>Finalizado</option>
                                        </select>
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Progreso: <span id="e_progressValue">0</span>%</span>
                                        <input type="range" value="0" min="0" max="100" name="progreso" id="e_progressInput">
                                    </div>
                                    <div class="input-box">
                                        <span class="details">Fecha</span>
                                        <input type="date" required name = "date" id="e_dateInput">
                                    </div>
                                </div>            
                                <div class="button">
                                    <input type="submit" value="Editar">
                                    <input type="reset" value="Cancelar" data-bs-dismiss="modal">
                                </div>
                            </form>
                        </div>
                    </div>  
                </div>  
            </div>  
        </div>

        <script src="Empleados.js"></script>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>

    </body>

</html>