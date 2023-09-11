<?php
    include('../../Plantilla/ConexionBD.php');
    $con = connection();

    if (!empty($_POST["jbtnActualizar"])) {

        if (!empty($_POST["jtxtIDC"]) && !empty($_POST["jtxtNombres"]) && !empty($_POST["jtxtDescp"])
            && !empty($_POST["jtxtComienzo"]) && !empty($_POST["jtxtFin"])) {


            $id_Campaña = $_POST["jtxtIDC"];
            $nombre = $_POST["jtxtNombres"];
            $descripcion = $_POST["jtxtDescp"];
            $fechaComienzo = $_POST["jtxtComienzo"];
            $fechaFin = $_POST["jtxtFin"];

             // Verificar si se ha cargado una nueva imagen
             if (!empty($_FILES['imagenActualizado']['tmp_name'])) {
                $imagenTmpPath = $_FILES['imagenActualizado']['tmp_name'];
                $imagenBinaria = file_get_contents($imagenTmpPath);

                // Actualizar la campaña en la base de datos con la nueva imagen binaria
                $sql = "UPDATE campaña SET Nombre='$nombre', Descripcion='$descripcion', 
                        FechaComienzo='$fechaComienzo', FechaFin='$fechaFin', imagen='$imagenBinaria' WHERE idCampaña='$id_Campaña'";
            }else{
            // Realizar la consulta de actualización en la base de datos
            $sql = "UPDATE campaña SET Nombre='$nombre', Descripcion='$descripcion', 
                    FechaComienzo='$fechaComienzo', FechaFin='$fechaFin' WHERE idCampaña='$id_Campaña'";
            }


            $query = mysqli_query($con, $sql);
            
            if ($query) {

                header("Location: ../campañas.php");
                exit();

            } else {
                header("Location: ../campañas.php?errorACTUALIZAR");
                exit();
            }
        } else {
            header("Location: ../campañas.php?errorDATOS");
            exit();
        }
    }

    
?>