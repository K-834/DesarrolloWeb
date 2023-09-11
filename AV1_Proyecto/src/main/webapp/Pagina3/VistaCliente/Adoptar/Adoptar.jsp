
<!--======================-->
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script> -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Adoptame</title>
    <!--Inicio de letras titulo:-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Satisfy&display=swap" rel="stylesheet">
    <!--Inicio letras nav-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@700&display=swap" rel="stylesheet">
    <!--Iconos-->
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> 
    <script src="../JSGeneral.js"></script>   
</head>
<body>
    
    <?php
        $tituloWeb = 5;
        include "../Plantilla/header2.php";
    
    ?>
   

   <div class="slider">
       <!-- <img src="ImagenesPantallaPrincipal/Slider1.jpg" alt="">1600x700---->
       <?php 
        include "../Plantilla/carrusel-Inicio.php";
         ?>
    </div>

    <div class="ContenidoAdoptar">
        <div class="subtitulo"><i class="fa-solid fa-dog"></i><h1> Adoptame </h1><i class="fa-solid fa-cat fa-flip-horizontal"></i></div>
        <div class="Mascotas">
            
            <?php  
                include "../Plantilla/AdoptemeConexion.php"; 
            ?>
    
        </div>

    </div>

    <?php 
        include "../Plantilla/SesionModal.php"; 
    ?>
    <?php 
        include "../Plantilla/footer.php";
    ?>
</body>
</html>