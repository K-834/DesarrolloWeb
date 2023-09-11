<?php
    include('../Plantilla/ConexionBD.php');
    $con = connection();
    $sql = "SELECT * FROM compras";
    $query = mysqli_query($con,$sql);
    $resultado= mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empleado - Compras</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilosEmpleado.css">
    <script src="Correito.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

        
    <script>
        function advertencia(){
            var not=confirm("Estás seguro?")
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
                    <h1>Verificacion de ventas</h1>
                </header>

                <table class="TablaAdm">
                    <thead class="EncAdm">
                        <tr>
                            <th>item</th>
                            <th>amount</th>
                            <th>price</th>
                            <th>image</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody class="CrAdm">
                        <?php
                            while($row = mysqli_fetch_array($query)):
                        ?>
                        <tr>
                            <td><?=$row['item']?></td>
                            <td><?=$row['amount']?></td>
                            <td><?=$row['price']?></td>
                            <td><button class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#myModalCampaña<?= $row['item'] ?>"> ver imagen </button></td>
                            <td><a href="Controladores/EditarEmp.php?idCampaña=<?=$row['idCampaña']?>" onclick="return advertencia()"><i class="fa-solid fa-circle-check" style="color: #35d016;"></i></a></td>
                            <td><a href="Controladores/EliminarEmp.php?idCampaña=<?=$row['idCampaña']?>" onclick="return advertencia()"><i class="fa-solid fa-xmark" style="color: #ff0000;"></i></a></td>
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
