<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilosAdministrador.css">
    <script src="Correito.js"></script>
</head>

<body>
        <div class="reparacion">
        <div class="contenidoPerfil">
        <div id="barra">
                <a href="perfil.php">
                    <div class="fa-solid fa-user tmn"></div>
                </a>
                <a href="pagAdministrador.php">
                    <div class="fa-solid fa-list-check tmn"></div>
                </a>
                <a href="Mensajeria.php">
                    <div class="fa-solid fa-envelope tmn"></div>
                </a>
                <a href="../ViewEmpleados/campañas.php">
                    <div class="fa-solid fa-square-plus tmn"></div>
                </a>
                <a href="https://live.cliengo.com/live/active/available">
                    <div class="fa-solid fa-headset tmn"></div>
                </a>
                  <a href="../ViewEmpleados/LoginEmpleados/loginEmpleado.php">
                    <div class="fa-solid fa-right-from-bracket tmn" onclick="return advertenciaSalida()"></div>
                </a>

                

            </div>

        <div class="perfilE">
            <div class="imagen">
                <div class="imagen-contenedor">
                    <img src="
                    
                    <?php if (isset($_SESSION['imagen'])) 
                {
                    echo($_SESSION['imagen']);
                }else{
                    echo('https://www.pngall.com/wp-content/uploads/5/Profile-PNG-File-Download-Free.png');
                } 
                    ?>
                    
                    
                    "
                        alt="Foto de perfil">
                </div>
                <h1><?php if (isset($_SESSION['nombreUsuario'])) 
                {
                    echo("".$_SESSION['nombreUsuario']. " ".$_SESSION['apellidoUsuario'] );
                }else{
                    echo('Error Datos');
                } 
                    ?>
                </h1>
            </div>

            <div class="contenidoPerfil">
                <p>Numero de celular: </p>
                <p> 

                <?php if (isset($_SESSION['celular'])) 
                {
                    echo(" ".$_SESSION['celular']);
                }else{
                    echo('Error Datos');
                } 
                    ?>

                </p>
            </div>
            <div class="contenidoPerfil">
                <p>Cargo:</p>
                <p> 

                <?php if (isset($_SESSION['cargo'])) 
                {
                    echo("".$_SESSION['cargo']);
                }else{
                    echo('Error Datos');
                } 
                    ?>

                </p>
            </div>
            <div class="contenidoPerfil">
                <p>Correo:</p>
                <p>
                <?php if (isset($_SESSION['direccion'])) 
                {
                    echo("".$_SESSION['direccion']);
                }else{
                    echo('Error Datos');
                } 
                    ?>

                </p>
            </div>


            <div class="contenidoPerfil">
                <p>Estado:</p>
                <p>
                <?php if (isset($_SESSION['estado'])) 
                {
                    echo("".$_SESSION['estado']);
                }else{
                    echo('Error Datos');
                } 
                    ?>

                </p>
            </div>
            <div class="contenidoPerfil">
                <p>Turno:</p>
                <p>
                <?php if (isset($_SESSION['Turno'])) 
                {
                    echo("".$_SESSION['Turno']);
                }else{
                    echo('Error Datos');
                } 
                    ?>

                </p>
            </div>
        </div>

    </div>

</html>