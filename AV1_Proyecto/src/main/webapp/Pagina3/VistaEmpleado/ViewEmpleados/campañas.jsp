<?php
    include('../Plantilla/ConexionBD.php');
    $con = connection();
    $sql = "SELECT * FROM campaña ORDER BY idCampaña DESC";
    $query = mysqli_query($con,$sql);
    $resultado= mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empleado - Campañas</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilosEmpleado.css">
    <script src="Correito.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

        
    <script>
        function advertencia(){
            var not=confirm("Estás seguro que deseas eliminar?")
        }
    </script>
</head>

<body>

    <section class="ContenedorAdm" >
        <div class="Dashboard">
            <div id="barra">
            <%@include file="barra.jsp" %>
            </div>

            <div class="registroAdm" style=" margin-right: 30px;">
                <header>
                    <h1>Registro de campañas</h1>
                </header>

                <form action="Controladores/RegistrarEmp.php" class="FormularioAdm" method="POST">
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>ID</label>
                            <input type="text" name="jtxtIDC"  placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Nombres</label>
                            <input type="text" name="jtxtNombres"  placeholder="Escriba aquí..." />
                        </div>
                    </div>

                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>Descripción</label>
                            <input type="text" name="jtxtDescp" style="height: 100px " />
                            
                        </div>
                    </div>

                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>Fecha de Inicio</label>
                            <input type="date" name="jtxtComienzo" />
                        </div>
                        <div class="input-boxAdm">
                            <label>Fecha de Cierre</label>
                            <input type="date" name="jtxtFin"  />
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="input-boxAdm ">
                            <label>Actualizar Foto</label>
                            <input type="file" name="imagenActualizado"/>
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="btn-boxAdm">
                            <input type="submit" name="jbtnGuardar" value="Guardar"></input>
                        </div>

                    </div>
                </form>
                <table class="TablaAdm">
                    <thead class="EncAdm">
                        <tr>
                            <th>ID</th>
                            <th>Nombres</th>
                            <th>Descripción</th>
                            <th>Fecha comienzo</th>
                            <th>Fecha Fin</th>
                            <th>Imagen</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody class="CrAdm">
                        <?php
                            while($row = mysqli_fetch_array($query)):
                        ?>
                        <tr>
                            <td><?=$row['idCampaña']?></td>
                            <td><?=$row['Nombre']?></td>
                            <td><?=$row['Descripcion']?></td>
                            <td><?=$row['FechaComienzo']?></td>
                            <td><?=$row['FechaFin']?></td>
                            <td><button class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#myModalCampaña<?= $row['idCampaña'] ?>"> ver imagen </button></td>
                            <td><a href="Controladores/EditarEmp.php?idCampaña=<?=$row['idCampaña']?>"><i class="fa-solid fa-floppy-disk"></i></a></td>
                            <td><a href="Controladores/EliminarEmp.php?idCampaña=<?=$row['idCampaña']?>" onclick="return advertencia()"><i class="fa-solid fa-trash"></i></a></td>
                        </tr>
                        <?php
                        $imagenBinaria = $row['imagen'];
                        $imagenCodificada = base64_encode($imagenBinaria);
                        echo '<!-- The Modal -->';
                        echo '<div class="modal fade" id="myModalCampaña'.$row['idCampaña'].'" aria-hidden="true" tabindex="-1">';
                        echo '    <div class="modal-dialog modal-xl">';
                        echo '        <link href="../IniciarSesion/modalG.css" rel="stylesheet">';
                        echo '        <div class="modal-content">';
                        echo '            <!-- Modal Header -->';
                        echo '            <div class="modal-header">';
                        echo '                <h4 class="modal-title">Imagen</h4>';
                        echo '                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>';
                        echo '            </div>';
                        echo '            <!-- Modal body -->';
                        echo '            <div class="modal-body">';
                        echo '                <div class="registro1">';
                        echo '                    <div class="Formato-prod-modal">';
                        echo '                        <center><img style="width: 80%;" src="data:image/jpeg;base64,' . $imagenCodificada . '"></center>';
                        echo '                    </div>';
                        echo '                </div>';
                        echo '            </div>';
                        echo '            <!-- Modal footer -->';
                        echo '            <div class="modal-footer">';
                        echo '                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>';
                        echo '            </div>';
                        echo '        </div>';
                        echo '    </div>';
                        echo '</div>';
                        
                            endwhile;
                        ?>
                    </tbody>
                </table>
            </div>
    </section>
 </div>

</body>

</html>
