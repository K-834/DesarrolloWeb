

</div>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Sede SJL</title>
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
    <!-- Parte Daniel: -->
    <!-- <div class="colorMarron">
        <a href="../../PantallaPrincipal/PantallaPrincipal.php"><img src="../../PantallaPrincipal/ImagenesPantallaPrincipal/Logo.png" alt=""></a>

        <div class="titulo">
            <h1>Veterinaria</h1>
            <h2>San Juan</h2>
        </div>
        <div class="navSuperior">
            <h1>hola</h1>
        </div> 
    </div>

    <nav class="navegador">
        

        <ul>
            <li><a href="#Section_1">Quienes <br> Somos</a></li>
            <li><a href="#footer_F">Contacto</a></li>
            <li><a href="../../PantallaPrincipal/PantallaPrincipal.php">Inicio</a></li>
            <li><a href="../../Campañas/Campañas.php">Campañas</a></li>
            <li><a href="../../Servicios/Servicios.php">Servicios</a></li>
            <li><a id="sedes" href="../../Sedes/Sedes.php">Sedes</a></li>
            <li><a href="../../Productos/Productos.php">Productos</a></li>
            <li><a href="../../Medicinas/productos.php">Medicina</a></li>
            <li><a class="colorBlanco" data-bs-toggle="modal" data-bs-target="#myModal"><i class="fa-solid fa-user"></i>
                    <h1 class="iniciar">Iniciar</h1>
                    <h1 class="sesion">Sesion</h1>
                </a></li>
        </ul>
    </nav>

    <nav class="navegador2">
        
        <ul>
            <div class="ribbon"> </div>
            <div class="ribbon"> </div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
            <div class="ribbon"></div>
        </ul>
    </nav> -->
    <!--Si desean quitar el "SLIDER ELIMINENLO DE ACÁ NOmA, ESTO EN 1 FUTURO SERA CON js Pero aun no aprendo esa wea xd"-->
    <!-- <div class="SDSJMslider">
        <img src="../../Sedes/ImagenesPantallaSedes/Veterinaria1.png" alt="">
        <h1>Sede   <br>    San Juan de Miraflores</h1>
    </div> -->


    <?php
        $tituloWeb = 5;
        include "../Plantilla/header2.php";
    
    ?>
   <div class="SDSJMslider">
        <img src="../Sedes/ImagenesPantallaSedes/Veterinaria2.jpg" alt="">
        <h1>Sede   <br>    San Juan de Lurigancho</h1>
    </div>

   
<!------------------------------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------------------------------>
    <div class="SDSJMdatos">
        <div class="SDSJMGRID1">
            <div class="SDSJMmapa"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15601.28604558651!2d-76.9797265!3d-12.1585006!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b8f71360c7f7%3A0xad2942098033350!2sVeterinaria%20San%20Juan!5e0!3m2!1ses-419!2spe!4v1683068072317!5m2!1ses-419!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
            <div class="SDSJMinfoMapa">
                <h1>UBICACIÓN</h1>
                <h1><i class="fa-solid fa-location-dot"></i>Av. los Héroes 1084, Lima 15801</h1>
                <h1><i class="fa-solid fa-phone"></i>4501980</h1>
                <a href="https://wa.link/xrxwg4" target="_blank"><h1><i class="fa-brands fa-whatsapp"></i>Whatssap</h1></a>
                
            </div>
    
        </div>
        <h2>Nuestros Equipo</h2>
        <div class="SDSJMGRID2">
            <div class="SDSJMdoctor1"><img src="ImagenesPantallaSedes/Doctor-1.gif" alt=""><h1>Alexandra</h1></div>
            <div class="SDSJMdoctor2"><img src="ImagenesPantallaSedes/Doctor-2.jpg" alt=""><h1>Javier</h1></div>
            <div class="SDSJMdoctor3"><img src="ImagenesPantallaSedes/Doctor-3.jpg" alt=""><h1>Susana</h1></div>
            <div class="SDSJMdoctor4"><img src="ImagenesPantallaSedes/Doctor-4.jpg" alt=""><h1>Erick</h1></div>
        </div>
        <h2>¿Qué ofrecemos?</h2>
        <div class="SDSJMGRID3">
            <div class="SDSJMservicio1">
                <div class="SDSJMimagenServicio">
                    <img src="ImagenesPantallaSedes/ServicioBaño.jpg" alt="">
                </div>
                <div class="SDSJMdatoServicio">
                    <h3>Baño personalizado 24/7</h3>
                    <h3>Para todo tipo de mascota</h3>
                </div>
            </div>
            <div class="SDSJMservicio2">
                <div class="SDSJMimagenServicio"><img
                        src="ImagenesPantallaSedes/ServicioVacunacion.jpg"
                        alt=""></div>
                        <div class="SDSJMdatoServicio">
                            <h3>Vacunacion</h3>
                            <h3>Todas las dosis completas</h3>
                        </div>
            </div>
            <div class="SDSJMservicio3">
                <div class="SDSJMimagenServicio"><img
                        src="ImagenesPantallaSedes/ServicioEsterelizacion.jpg"
                        alt=""></div>
                <div class="SDSJMdatoServicio">
                    <h3>Esterelizaciones</h3>
                    <h3>Para hembras y Machos</h3>
                </div>
            </div>
            <div class="SDSJMservicio4">
                <div class="SDSJMimagenServicio"><img
                        src="ImagenesPantallaSedes/ServicioHospitilizacion.jpg"
                        alt=""></div>
                <div class="SDSJMdatoServicio">
                    <h3>Hospitilizacion 24/7</h3>
                    <h3>En caso de Emergencia</h3>
                </div>
            </div>
            <div class="SDSJMservicio5">
                <div class="SDSJMimagenServicio"><img
                        src="ImagenesPantallaSedes/ServicioDelibery.jpg"
                        alt=""></div>
                <div class="SDSJMdatoServicio">
                    <h3>Delivery</h3>
                    <h3>Llevamos todos los productos</h3>
                </div>
            </div>
            <div class="SDSJMservicio6">
                <div class="SDSJMimagenServicio">
                    <img src="ImagenesPantallaSedes/ServicioLabClinico.jpg"
                        alt="">
                </div>
                <div class="SDSJMdatoServicio">
                    <h3>Laboratorio Clinico</h3>
                    <h3>Para mejor diagnostico</h3>
                </div>
            </div>
        </div>
    </div>


<!------------------------------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------------------------------>
<!------------------------------------------------------------------------------------------------------------>    
<?php 
        include "../Plantilla/SesionModal.php";

        include "../Plantilla/citaModal.php";
    
    ?>

    <?php 
        include "../Plantilla/footer.php";
    ?>