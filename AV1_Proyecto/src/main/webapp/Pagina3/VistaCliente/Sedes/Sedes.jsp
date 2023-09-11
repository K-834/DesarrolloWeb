<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Sedes</title>
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
    <!--Parte Daniel: -->

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
    
    <div class="SDsedes">
        <div class="SDgrid1">
            <div class="SDimg1">
                <img src="ImagenesPantallaSedes/Veterinaria1.png" alt="">
                <a href="SedeSjm.php"><h1>VER MAS</h1></a>
                
            </div>
            <div class="SDinfo1">
                <h1 class="SDlugar">San Juan De Miraflores</h1>
                <h2>Avenida los Heroes 1120 mz E1</h1>
                <h3>Horario de Atención:</h2>
                <h4>L-D: 7am- 10pm</h1>
                <div class="SDbotones">
                    <h2 class="SDboton"><a href="https://goo.gl/maps/C3AVCAVumnQCtbav8" target="_blank"><i class="fa-sharp fa-solid fa-map-location-dot"></i>Ubicación</a></h2>
                    <h2 class="SDboton"><a href="https://wa.link/xrxwg4" target="_blank"><i class="fa-brands fa-whatsapp"></i>Whatssap</a></h2>
                </div>
                    
                <!-- <ul>
                    <li><a href="https://www.facebook.com/sanjuanclinicaveterinaria" target="_blank"><i class="fa-brands fa-square-facebook" id="facebook"></i></a></li>
                    <li><a href="https://www.instagram.com/veterinariasanjuan/?hl=es" target="bl
                        "><i class="fa-brands fa-square-instagram" id="instagram"></a></i></li>
                    <li><a href="https://www.youtube.com/@clinicaveterinariasanjuan1580" target="_blank"><i class="fa-brands fa-square-youtube" id="youtube"> </a></i></li>
                    <li><a href="https://twitter.com/vetsanjuan" target="_blank"><i class="fa-brands fa-square-twitter" id="twiter"></a></i></li>
                </ul>    -->

            </div>
        </div>
        <div class="SDgrid2">
            <div class="SDinfo2">
                <h1 class="SDlugar2">San Juan De Lurigancho</h1>
                <h2>Avenida la Colonial 2501</h1>
                <h3>Horario de Atención:</h2>
                <h4>L-D: 7am- 10pm</h1>
                <div class="SDbotones">
                    <h2 class="SDboton"><i class="fa-sharp fa-solid fa-map-location-dot"></i><a href="">Ubicación</a></h2>
                    <h2 class="SDboton"><i class="fa-brands fa-whatsapp"></i><a href="">Whatssap</a></h2>
                </div>
                    
                <!-- <ul>
                    <li><a href="#"><i class="fa-brands fa-square-facebook" id="facebook"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-square-instagram" id="instagram"></a></i></li>
                    <li><a href="#"><i class="fa-brands fa-square-youtube" id="youtube"> </a></i></li>
                    <li><a href="#"><i class="fa-brands fa-square-twitter" id="twiter"></a></i></li>
                </ul>   -->
            </div>
            <div class="SDimg2">
                <img src="ImagenesPantallaSedes/Veterinaria2.jpg" alt="">
                <a href="SedeSjl.php"><h1>VER MAS</h1></a>
                
            </div>
            
            
        </div>
        <div class="SDgrid3">
            <div class="SDimg3">
                <img src="ImagenesPantallaSedes/Veterinaria3.jpg" alt="">
                <a href="SedeSurco.php"><h1>VER MAS</h1></a>
                
            </div>
            
            <div class="SDinfo3">
                <h1 class="SDlugar3">Surco</h1>
                <h2>Avenida los jardinez 1231</h1>
                <h3>Horario de Atención:</h2>
                <h4>L-D: 7am- 10pm</h1>
                <div class="SDbotones">
                    <h2 class="SDboton"><i class="fa-sharp fa-solid fa-map-location-dot"></i><a href="">Ubicación</a></h2>
                    <h2 class="SDboton"><i class="fa-brands fa-whatsapp"></i><a href="">Whatssap</a></h2>
                </div>
                    
                <!-- <ul>
                    <li><a href="#"><i class="fa-brands fa-square-facebook" id="facebook"></i></a></li>
                    <li><a href="#"><i class="fa-brands fa-square-instagram" id="instagram"></a></i></li>
                    <li><a href="#"><i class="fa-brands fa-square-youtube" id="youtube"> </a></i></li>
                    <li><a href="#"><i class="fa-brands fa-square-twitter" id="twiter"></a></i></li>
                </ul>   -->
            </div>
        </div>
        
    </div>
    <?php 
        include "../Plantilla/SesionModal.php"; 
    ?>
    <?php 
        include "../Plantilla/footer.php";
    ?>