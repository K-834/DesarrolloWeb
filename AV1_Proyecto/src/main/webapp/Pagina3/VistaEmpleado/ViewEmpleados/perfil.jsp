<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilosEmpleado.css">
    <script src="Empleados.js"></script>
</head>

<body>
        <div class="reparacion">
        <div class="contenidoPerfil">
        <div id="barra">
       <%@include file="barra.jsp" %>
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
                <h1>
                    <?php if (isset($_SESSION['nombreUsuario'])) 
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