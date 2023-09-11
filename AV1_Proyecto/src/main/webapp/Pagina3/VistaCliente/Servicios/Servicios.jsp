<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Servicios</title>
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

</head>

<body>
    <?php 
       $tituloWeb = 4;
        include "../Plantilla/header2.php";
    
    ?>


    <div class="slider">
       <!-- <img src="ImagenesPantallaPrincipal/Slider1.jpg" alt="">1600x700---->
       <?php 
        include "../Plantilla/carrusel-Inicio.php";
         ?>
    </div>


    <!--Gavi aqui poner tu parte, no borrar the modal-->
    <section>
        <center>
            <div class="SContenedor3">
                <div class="SServicios">
                    <h1 style="color: #462720">
                        Servicios
                        <center>
                            <hr size="20px" color="#641E16" width="10%">
                        </center>
                    </h1>
                </div>
                <div class="Srow2">
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Acupuntura.jpg" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Acupuntura</h2>
                                <p>
                                    La acupuntura es un campo novedoso en la veterinaria que se emplea
                                    en las clínicas para tratar multitud de afecciones con alto índice
                                    de éxito. Se trata de una técnica milenaria, ampliamente extendida
                                    en personas, que trata de curar ciertas dolencias con el uso de
                                    pequeñas agujas, insertadas en puntos concretos del cuerpo.
                                </p>
                                <a href="SAcupuntura.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Peluqueria.jpg" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color:#462720">Peluquería</h2>
                                <p>
                                    En Clínica Veterinaria San Juan contamos con un exclusivo servicio
                                    para tus perros y gatos, ¡¡una peluquería canina y felina!! Donde
                                    nuestra peluquera, además de dejar bien guapas a tus mascotas,
                                    estará encantada de aconsejarte acerca del cuidado e higiene que
                                    requiere tu fiel amigo, ¡¡una imagen vale más que mil palabras!!
                                </p>
                                <a href="SAPeluquería.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Cirugía.jpg" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Cirugía</h2>
                                <p>
                                    En Clínica Veterinaria San Juan nuestros veterinarios realizan
                                    las cirugías necesarias para tus mascotas, utilizando un equipo
                                    de anestesia inhalatoria y monitorización que aporta seguridad
                                    durante la intervención, puesto que nos permite tener controlada
                                    cardiovascularmente a las mascotas durante la cirugía a practicar.
                                </p>
                                <a href="SACirugia.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Cardiología.jpg" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Oftalmología, Cardiología y Aparato respiratorio</h2>
                                <p>
                                    Tus mascotas a lo largo de su vida pueden sufrir problemas de
                                    oftalmología, cardiología, aparato respiratorio, etc. en las
                                    que se precisa de unos veterinarios especialistas, formados
                                    en dichos campos. Clínica Veterinaria San Juan te ofrece la
                                    posibilidad, mediante cita previa con nuestros especialistas
                                    colaboradores de pasar consulta a tus animales para obtener
                                    un diagnóstico.
                                    Si necesitas una consulta de especialista, contacta con nosotros.
                                </p>
                                <a href="SAOCA.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Radiología.png" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Radiología y ecografía</h2>
                                <p>
                                    Disponemos para el diagnóstico por imagen de los problemas de
                                    tu mascota de un equipo radiológico de última generación y de
                                    reveladora digital, lo que permite a nuestros veterinarios
                                    realizar una mejor evaluación al aumentar la calidad y
                                    definición de la imagen. Otro servicio de diagnóstico que
                                    realiza Clínica Veterinaria San Juan por imagen es la ecografía,
                                    una herramienta muy importante para que a tus mascotas se le
                                    puedan diagnosticar enfermedades. También disponemos del
                                    servicio de ecocardiografía que realizan nuestros veterinarios
                                    especializados en cardiología.
                                </p>
                                <a href="SARE.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Laboratorio.png" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Laboratorio clínico</h2>
                                <p>
                                    En Clínica Veterinaria San Juan realizamos análisis clínicos para
                                    diagnosticar y prevenir cualquier patología que pueda tener tu
                                    mascota. Actualmente disponemos de aparatología innovadora, como
                                    un contador hematológico, que con eficacia y rapidez nos ofrece
                                    información sobre la hematología de nuestros animales tales como:
                                    anemias, enfermedades infecciosas, autoinmunes, niveles
                                    plaquetarios, etc. Disponemos también de un analizador bioquímico
                                    para evaluar la funcionalidad de los principales órganos,
                                    problemas hormonales, etc. demás de estos análisis clínicos
                                    básicos, nuestros veterinarios podrán determinar la realización
                                    de análisis más específicos que derivamos a laboratorios nacionales
                                    punteros.
                                </p>
                                <a href="SALaboratorio.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
                    </div>
                    <div class="SColum">
                        <div class="Stable1">
                            <div class="Sder">
                                <img src="ImagenesServicios\Etología.jpg" alt="" style="width: 75px;">
                            </div>
                            <div class="Sizq">
                                <h2 style="color: #462720">Etología</h2>
                                <p>
                                    Nos dedicamos a prevenir, diagnosticar y tratar problemas de
                                    comportamiento en perros y gatos. Algunos de los problemas más
                                    comunes que atiende esta especialidad incluye la agresión
                                    (hacia otros perros y a personas), miedos, destrucción, ladridos
                                    excesivos, conductas compulsivas, entre otros.
                                </p>
                                <a href="SAEtologia.php" class="SBtnVerMas">Más información...</a>
                            </div>
                        </div>
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