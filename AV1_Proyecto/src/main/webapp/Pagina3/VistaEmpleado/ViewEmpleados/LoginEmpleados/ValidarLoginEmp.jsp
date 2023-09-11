<?php
session_start();
$correo = $_POST['correo'];
$contraseña = $_POST['password'];
$hashed_password = password_hash($contraseña, PASSWORD_DEFAULT);
$conexion = mysqli_connect("localhost", "root", "", "web");

$consulta = "SELECT * FROM empleados WHERE Usuario = ? AND Contraseña = ?";
$estatement = mysqli_prepare($conexion, $consulta);
mysqli_stmt_bind_param($estatement, "ss", $correo, $contraseña);
mysqli_stmt_execute($estatement);

$resultado = mysqli_stmt_get_result($estatement);
$filas = mysqli_num_rows($resultado);

if ($filas > 0) {
    if ($row = mysqli_fetch_assoc($resultado)) {
        $BDColumna = $row;
        $idEmpleado = $BDColumna['Usuario'];

        if (strpos($idEmpleado, 'SUP') === 0) {
            $_SESSION['nombreUsuario'] = $BDColumna['Nombres'];
                $_SESSION['apellidoUsuario'] = $BDColumna['Apellidos'];
                
                $_SESSION['dni'] = $BDColumna['N_Documento'];
                $_SESSION['cargo'] = $BDColumna['Cargo'];
                
                $_SESSION['direccion'] = $BDColumna['Correo'];

                $_SESSION['celular'] = $BDColumna['Telefono'];
                
                $_SESSION['genero'] = $BDColumna['genero'];
                
                $_SESSION['estado'] = $BDColumna['Estado'];

                $_SESSION['Turno'] = $BDColumna['Turno'];

            mysqli_stmt_close($estatement);
            mysqli_close($conexion);
            header("Location: ../../ViewAdministrador/pagAdministrador.php");
            exit();
        } else {
            if (strpos($idEmpleado, 'EMP') === 0) {
                $_SESSION['nombreUsuario'] = $BDColumna['Nombres'];
                $_SESSION['apellidoUsuario'] = $BDColumna['Apellidos'];
                
                $_SESSION['dni'] = $BDColumna['N_Documento'];
                $_SESSION['cargo'] = $BDColumna['Cargo'];
                
                $_SESSION['direccion'] = $BDColumna['Correo'];
                
                $_SESSION['estado'] = $BDColumna['Estado'];

                $_SESSION['Turno'] = $BDColumna['Turno'];
    
                mysqli_stmt_close($estatement);
                mysqli_close($conexion);
                header("Location: ../pagEmpleado.php");
                exit();
        }
    }
}
} else {
    mysqli_stmt_close($estatement);
    mysqli_close($conexion);
    header("Location: " . $_SERVER['HTTP_REFERER']);
    exit();
}

?>
