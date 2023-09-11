<?php
session_start();
include('../Plantilla/ConexionBD.php');
$con = connection();

if (isset($con)) {
    if (isset($_POST['formularioId'])) {
        $idFormulario = $_POST["formularioId"];
        if ($idFormulario == "nuevoservicio") {
            $servicio = $_POST["servicio"];
            $tipodemascota = $_POST["tipodemascota"];
            $razademascota = $_POST["razademascota"];
            $estado = $_POST["estado"];
            $progreso = $_POST["progreso"];
            $date = $_POST["date"];
            $time = $horaActual = date("H:i:s");

            $sql = "SELECT idService FROM services ORDER BY idService DESC LIMIT 1";
            $resultado = $con->query($sql);
             //Si la tabla tiene registros previos
            if ($resultado !== false && $resultado->num_rows > 0) {
                $fila = $resultado->fetch_assoc();
                $ultimo_id = $fila['idService'];
                //Extrae el número de secuencia
                $secuencia = (int) substr($ultimo_id, 2) + 1;
                //Genera el nuevo ID con el formato DU0000
                $nuevo_id = 'S' . sprintf('%04d', $secuencia);
            } else {
                //Genera el primer ID si la tabla está vacía
                $nuevo_id = 'S0001';
            }
            
            // Prepara la consulta INSERT para agregar los datos a la tabla "services"
            $sql = "INSERT INTO services (idService, name, pet, type, state, progress, date, time)
            VALUES ('$nuevo_id', '$servicio', '$tipodemascota', '$razademascota', '$estado', '$progreso', '$date', '$time')";

            
            if ($con->query($sql) === TRUE) {
                // Guarda el mensaje en la sesión
                $_SESSION['mensaje'] = "Item agregado correctamente.";
                // Redirecciona a pagEmpleado.php
                $con->close();
                header("Location: pagEmpleado.php");

                exit; // Asegura que el script se detenga después de la redirección
            } else {
                $_SESSION['mensaje'] = "Error en al insertar los datos";
                header("Location: pagEmpleado.php");
                $con->close();
                exit;
            }
        } elseif ($idFormulario == "editarservicio") {
            $idServicio = $_POST["idServicio"];
            $servicio = $_POST["servicio"];
            $tipodemascota = $_POST["tipodemascota"];
            $razademascota = $_POST["razademascota"];
            $estado = $_POST["estado"];
            $progreso = $_POST["progreso"];
            $date = $_POST["date"];
            $time = $horaActual = date("H:i:s");

            // Prepara la consulta INSERT para agregar los datos a la tabla "services"
            $sql = "UPDATE services SET name = '$servicio', pet = '$tipodemascota', type = '$razademascota', state = '$estado',  progress = '$progreso', date = '$date', time = '$time' WHERE idService = '$idServicio'";

            
            if ($con->query($sql) === TRUE) {
                // Guarda el mensaje en la sesión
                $_SESSION['mensaje'] = "Item actualizado correctamente.";
                // Redirecciona a pagEmpleado.php
                $con->close();
                header("Location: pagEmpleado.php");

                exit; // Asegura que el script se detenga después de la redirección
            } else {
                $_SESSION['mensaje'] = "Error al actualizar los datos";
                header("Location: pagEmpleado.php");
                $con->close();
                exit;
            }
        }
    } else {
        $_SESSION['mensaje'] = "Error en la conexión";
        header("Location: pagEmpleado.php");
        $con->close();
        exit;
    }
    $con->close();
}
?>
