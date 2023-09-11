<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    
    

    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Index</title>
    <!--Inicio de letras titulo:-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Satisfy&display=swap"
        rel="stylesheet">
    <!--Inicio letras nav-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@700&display=swap" rel="stylesheet">
    <!--Iconos-->
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../JSGeneral.js"></script>
    <!--JQuery para responsive-->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

   <!-- <link rel="stylesheet" href="../fonts.css">-->
</head>

<body>
<?php 
        $tituloWeb = 2;
        include "../Plantilla/header2.php";
    
?>


    <div class="slider">
       <!-- <img src="ImagenesPantallaPrincipal/Slider1.jpg" alt="">1600x700---->
       <?php 
        include "../Plantilla/carrusel-Inicio.php";
         ?>
    </div>

    <div class="cita01-btn">
        <h1>Cuida a tu mascota</h1>
        <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3"> Reserva tu cita </button>
    </div>

    <!--GAVI AQUI PON TU PARTE, NO QUITES LO 2 MODALES, ES DEL LOGIN-->
    <section class="QSSeccion1">
        <center>
            <div id="QSContenedor1">
                <div id="QSeqTrabajo">
                    <h1 style="color: #624842;">
                        Equipo de trabajo
                        <center>
                            <hr size="20px" color="#624842" width="10%">
                        </center>
                    </h1>
                    <div id="QSEquipo">
                        <div>
                            <img src="ImagenesQuienesSomos\download.jpg" alt=""
                                style="width: 270px; height: 230px;">
                            <h3>Corina Villanueva</h3>
                            <p>Fisioterapeuta</p>
                        </div>
                        <div>
                            <img src="ImagenesQuienesSomos\images.jpg" alt="" style="width: 270px; height: 230px;">
                            <h3>Juan Vargas</h3>
                            <p>Cardiólogo</p>
                        </div>
                        <div>
                            <img src="ImagenesQuienesSomos\Images1.jpg" alt=""
                                style="width: 270px; height: 230px;">
                            <h3>Alfredo Torres</h3>
                            <p>Neurólogo</p>
                        </div>
                        <div>
                            <img src="ImagenesQuienesSomos\images2.jpg" alt=""
                                style="width: 270px; height: 230px;">
                            <h3>Alejandro Álvarez</h3>
                            <p>Traumatólogo</p>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <section>
        <center>
            <div id="QSseparador">
            </div>
        </center>
    </section>
    <section class="QSSeccion1">
        <center>
            <div id="QSContenedor2">
                <div id="QSPresentación">
                    <div id="QSQuienesSomos">
                        <h1 style="color: #624842;">¿Quiénes somos?</h1>
                        <div id="QSInformacion">
                            <div id="QSp">
                                <p>
                                    Somos una clínica veterinaria que está situada
                                    en San Juan de Alicante, Calle La Moleta, 24,
                                    que comenzó su andadura en el año 2000. Nos
                                    encontramos situados a escasos minutos del
                                    centro de Alicante y de las poblaciones de
                                    Muchamiel, El Campello y San Vicente del
                                    Raspeig. Contamos con un amplio equipo
                                    veterinario que estará encantado de atenderte.
                                </p>
                            </div>
                            <div align="center" id="QSimg1">
                                <img src="ImagenesQuienesSomos\descarga (4).jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </center>
    </section>
    <section>
        <center>
            <div id="QSseparador">
            </div>
        </center>
    </section>
    <section class="QSSeccion1">
        <center>
            <div id="QSContenedor3">
                <div id="QSMision">
                    <div>
                        <h1 style="color: #624842;">Misión</h1>
                        <p>
                            La misión de la veterinaria San Juan es proveer un cuidado excepcional de la
                            salud de las mascotas y otros animales, a través de servicios de alta calidad en
                            atención médica, alimentación y asesoría personalizada para los dueños,
                            buscando siempre el bienestar de los animales y la satisfacción de sus dueños.
                        </p>
                    </div>
                </div>
            </div>
        </center>
    </section>
    <section class="QSSeccion1">
        <center>
            <div id="QSContenedor4">
                <div id="QSVision">
                    <div>
                        <h1 style="color: #624842;">Visión</h1>
                        <p>
                            La visión de la veterinaria San Juan es ser reconocida en Lima por ser la mejor
                            opción en atención veterinaria, con profesionales competentes, responsables
                            y afectuosos con los animales, implementando tecnología avanzada para la
                            detección temprana y tratamiento efectivo de enfermedades, promoviendo
                            la educación a los dueños sobre la salud de sus mascotas y el manejo
                            responsable de las mismas. Nuestra veterinaria será reconocida como un
                            lugar de confianza donde los dueños pueden llevar a sus mascotas para
                            obtener un servicio excepcional y personalizado las 24 horas del día.
                        </p>
                    </div>
                </div>
            </div>
        </center>
    </section>
     
    <?php 
        include "../Plantilla/SesionModal.php";
        
        include "../Plantilla/citaModal.php";
    ?>


    <?php 
        include "../Plantilla/footer.php";
    
    ?>