<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Campañas</title>
    <!--Inicio de letras titulo:-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Satisfy&display=swap"
        rel="stylesheet">
    <!--Inicio letras nav-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300&display=swap" rel="stylesheet">
    <!--Iconos-->
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../JSGeneral.js"></script>
    
</head>

<body>
    <?php 
        $tituloWeb = 3;
        include "../Plantilla/header2.php";
    
    ?>


    <div class="slider">
        <img src="../PantallaPrincipal/ImagenesPantallaPrincipal/Slider1.jpg" alt=""><!--1600x700-->
    </div>


    <!--GAVI AQUI PON TU PARTE. NO QUITES EL "THE MODAL Q ES DEL LOGIN"-->
    <section>
        <center>
            <div class="CContenedor2">
                <div class="CCampañas">
                    <h1 style="color: #641E16;">
                        Campañas
                    <center>
                        <hr size="20px" color="#641E16" width="10%">
                    </center>
                    </h1>
                </div>
                <div class="Crow3">

                    <?php  include "../Plantilla/campañaConexion.php" ?>
                </div>
            </div>
        </center>
    </section>

<?php 
        include "../Plantilla/SesionModal.php";
?>
 
<?php 

        include "../Plantilla/footer.php";

?>