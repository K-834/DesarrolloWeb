<?php  session_start(); 
    $correo = $_POST['correo'];
    $contraseña = $_POST['contrasena'];
    $conexion = mysqli_connect("localhost","root","", "web");
     
    $consulta = "SELECT * FROM dueño WHERE correo = ? AND contraseña = ?";
    $estatement = mysqli_prepare($conexion, $consulta);
    mysqli_stmt_bind_param($estatement, "ss", $correo, $contraseña);
    mysqli_stmt_execute($estatement);
    
    $resultado = mysqli_stmt_get_result($estatement);
    $filas = mysqli_num_rows($resultado);

    if ($filas > 0) {
        if ($row = mysqli_fetch_assoc($resultado)) {
            $BDColumna = $row;
            $_SESSION['nombreUsuario'] = $BDColumna['nombres'];
            $_SESSION['apellidoUsuario'] = $BDColumna['apellidos'];
            $_SESSION['celular'] = $BDColumna['celular'];
            $_SESSION['cargo'] = $BDColumna['cargo'];
            $_SESSION['direccion'] = $BDColumna['direccion'];
            $_SESSION['imagen'] = $BDColumna['imagen'];
        }
        
        mysqli_stmt_close($estatement);
        mysqli_close($conexion);
        header("Location: ".$_SERVER['HTTP_REFERER']."");
        exit();
    } else {
        header("Location: ".$_SERVER['HTTP_REFERER']."");
        mysqli_stmt_close($estatement);
        mysqli_close($conexion);
        exit();
    } 


?>
