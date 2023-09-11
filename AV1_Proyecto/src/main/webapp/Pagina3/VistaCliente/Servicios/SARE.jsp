<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Radiología y ecografía veterinaria</title>
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
    <script src="../IniciarSesion/modalJS.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--Inicio de letras slider(sede)-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    
</head>

<body>
<body>
    <?php 
       $tituloWeb = 4;
        include "../Plantilla/header2.php";
    
    ?>


    <div class="slider">
       <?php 
        include "../Plantilla/carrusel-Inicio.php";
         ?>
    </div>

    <section class="SACSeccion1">
        <div class="SACTitulo">
            <h1 style="color: #462720">
                Radiología y ecografía
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definición</h3>
                    <ol type="a">
                        <h4><li>Radiología veterinaria:</h4>
                            <p>La radiología veterinaria es una especialidad de la medicina veterinaria que utiliza 
                                técnicas de diagnóstico por imágenes basadas en la utilización de radiación ionizante, como 
                                los rayos X, para obtener imágenes detalladas de los órganos internos, huesos y tejidos 
                                blandos de los animales. Estas imágenes radiográficas permiten a los veterinarios detectar 
                                y diagnosticar una amplia variedad de condiciones médicas y problemas de salud en los pacientes 
                                animales. La radiología veterinaria es una herramienta esencial para el diagnóstico temprano y 
                                preciso, lo que facilita el tratamiento adecuado y mejora el pronóstico de las enfermedades.
                            </p>
                        </li>
                        <h4><li>Ecografía veterinaria:</h4>
                            <p>La ecografía veterinaria es una técnica de diagnóstico por imágenes que utiliza ondas de ultrasonido 
                                de alta frecuencia para generar imágenes en tiempo real de los órganos internos y tejidos blandos 
                                del cuerpo de los animales. Es una técnica no invasiva que no utiliza radiación ionizante y se basa 
                                en el principio de que los diferentes tejidos reflejan las ondas de ultrasonido de manera diferente. 
                                La ecografía veterinaria es ampliamente utilizada para evaluar el estado de órganos como el corazón, 
                                hígado, riñones, vejiga, útero y otros tejidos, lo que permite a los veterinarios diagnosticar 
                                enfermedades, identificar anomalías y realizar seguimiento de tratamientos. Además, la ecografía es 
                                una herramienta valiosa para la reproducción animal, ya que permite la visualización del feto y la 
                                detección de gestaciones en animales preñados.
                            </p>
                        </li>
                    </ol>
                    <p>
                    Tanto en radiología como en ecografía veterinaria, es importante utilizar equipos y materiales de alta calidad
                    para obtener imágenes precisas y de alta resolución que permitan un diagnóstico preciso y una atención adecuada 
                    a los pacientes animales. Además, se deben seguir protocolos de seguridad para proteger al personal veterinario 
                    y a los animales de la radiación ionizante en el caso de la radiología y para garantizar una técnica adecuada en 
                    el caso de la ecografía.
                    </p>
                    <?php
                        if (!isset($_SESSION['nombreUsuario'])) {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal2" id="button-S">Solicitar servicio</button>
                        <?php
                        } else {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3" id="button-S" onclick="seleccionarOpcion('radiologia')">Solicitar servicio</button>
                        <?php
                        }
                        ?>

                </center>
            </div>
            <div class="SACMat">
                <center>
                    <h3>Materiales utilizados:</h3>
                    <p>Algunos de los materiales comunes utilizados en estas especialidades de la veterinaria son:
                    </p>
                    <ul style="list-style-type: circle">
                        <h4><li>Radiología veterinaria:</h4>
                            <p>En radiología veterinaria, se emplean equipos de rayos X, que incluyen generadores de rayos X y 
                                equipos de revelado y digitalización de imágenes. También se utilizan películas radiográficas y 
                                placas de imagen digital (CR o DR) para capturar las imágenes. Además, se emplean dispositivos de 
                                protección, como delantales de plomo y guantes, para garantizar la seguridad del personal y los 
                                pacientes.
                            </p>
                        </li>
                        <h4><li>Ecografía veterinaria:</h4>
                            <p>Para realizar ecografías veterinarias, se utiliza un ecógrafo, que es un dispositivo que emite 
                                ondas de ultrasonido y registra las ecos que rebotan en los tejidos internos, creando imágenes 
                                en tiempo real. También se utiliza un gel especial para facilitar el contacto entre el transductor 
                                y la piel del animal.
                            </p>
                        </li>
                    </ul>
                </center>
            </div>
            <div class="SACBen">
                <center>
                    <h3>Algunos beneficios:</h3>
                    <p>Algunos de los beneficios de estas especialidades de la veterinaria son:
                    </p>
                    <ol>
                        <h4><li>Radiología veterinaria:</h4>
                            <p>La radiología veterinaria permite a los veterinarios visualizar estructuras óseas, órganos y 
                                tejidos internos de los animales, lo que ayuda a diagnosticar fracturas, identificar cuerpos extraños, 
                                evaluar el tamaño y forma de órganos internos, detectar tumores y otras anomalías. Con un diagnóstico 
                                preciso, se puede proporcionar un tratamiento adecuado y oportuno, mejorando la salud y bienestar del 
                                animal. 
                            </p>
                        </li>
                        <h4><li>Ecografía veterinaria:</h4>
                            <p>La ecografía veterinaria es una herramienta invaluable para evaluar órganos internos como el 
                                corazón, hígado, riñones, vejiga, y otros tejidos blandos. Permite detectar quistes, tumores, inflamación 
                                y otras anormalidades. Además, es ampliamente utilizada en la reproducción para realizar ecografías de 
                                gestación en animales preñados. Al ser una técnica no invasiva, la ecografía es segura y bien tolerada 
                                por los pacientes, lo que la convierte en una herramienta muy útil en el diagnóstico y seguimiento de 
                                diversas condiciones médicas en animales.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>En conjunto, la radiología y la ecografía veterinaria son esenciales para el diagnóstico preciso y el tratamiento 
                        adecuado de diversas enfermedades y condiciones en los animales, lo que contribuye a mejorar su salud y calidad 
                        de vida. Estas técnicas de diagnóstico por imágenes proporcionan información valiosa que ayuda a los veterinarios 
                        a tomar decisiones informadas y brindar el mejor cuidado posible a sus pacientes.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/e5/e5/c9/e5e5c91ba306e6c94c2a07e850be7a49.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/44/35/4e/44354e1a6afc075c6a26f38faaa372c7.jpg" alt="">
            </div>
        </div>
    </section>
</body>
<?php 
        include "../Plantilla/SesionModal.php";

        include "../Plantilla/citaModal.php";
    
    ?>

<?php 
        include "../Plantilla/footer.php";
    ?>