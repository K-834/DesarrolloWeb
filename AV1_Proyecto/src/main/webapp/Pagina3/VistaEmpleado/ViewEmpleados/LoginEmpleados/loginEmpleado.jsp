
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../EstilosGeneral.css">
    <title>Document</title>
</head>
<body>
    <div class="LEfondo">
        <img src="ImagenesLoginEmpleado/FONDO2.png" alt="">
        <div class="formulario"><!--verde-->
            <div class="LOGO">
                <img src="../PantallaPrincipal/ImagenesPantallaPrincipal/Logo.png" alt="">
                <h1>Veterinaria San Juan</h1>
            </div>
            <form action="ValidarLoginEmp.php" method="post" ><!--ROJO-->
                <h1>Usuario</h1>
                <div class="lugar1">
                    <img src="ImagenesLoginEmpleado/usu.png" alt="">
                    <input name="correo" type="text">
                </div>
                
                <h1>Contraseña</h1>
                <div class="lugar1">
                    <img src="ImagenesLoginEmpleado/contra.png" alt="">
                    <input name="password" type="password">
                </div>
                
                <input type="submit" value="INGRESAR" class="LEboton">
            </form>
        </div>
        
    </div>
    
</body>
</html>





