<?php
session_start();

$correo = $_POST['correo'];
$contraseña = $_POST['contrasena'];
$conexion = mysqli_connect("localhost", "root", "", "web");

$consulta = "SELECT * FROM dueño WHERE correo = ?";
$estatement = mysqli_prepare($conexion, $consulta);
mysqli_stmt_bind_param($estatement, "s", $correo);
mysqli_stmt_execute($estatement);

$resultado = mysqli_stmt_get_result($estatement);
$filas = mysqli_num_rows($resultado);

if ($filas > 0) {
    if ($row = mysqli_fetch_assoc($resultado)) {
        $BDColumna = $row;
        $hashed_password = $BDColumna['contraseña'];

        if (password_verify($contraseña, $hashed_password)) {
            $_SESSION['nombreUsuario'] = $BDColumna['nombres'];
            $_SESSION['apellidoUsuario'] = $BDColumna['apellidos'];


            $_SESSION['dni'] = $BDColumna['Cedula'];
            $_SESSION['correo'] = $BDColumna['correo'];
            $_SESSION['cell'] = $BDColumna['telefono'];

            mysqli_stmt_close($estatement);
            mysqli_close($conexion);
            header("Location: ".$_SERVER['HTTP_REFERER']."");
            exit();
        }else{
            header("Location: ".$_SERVER['HTTP_REFERER']);

        }
    }
}else{
    header("Location: ".$_SERVER['HTTP_REFERER']."");
}

mysqli_stmt_close($estatement);
mysqli_close($conexion);
exit();
?>