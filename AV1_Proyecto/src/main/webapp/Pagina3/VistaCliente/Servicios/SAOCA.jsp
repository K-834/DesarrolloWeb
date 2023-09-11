<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Oftalmología, cardiología y aparato respiratorio veterinario</title>
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
                Oftalmología, cardiología y aparato respiratorio
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
                        <h4><li>Oftalmología veterinaria:</h4>
                            <p>La oftalmología veterinaria es la rama de la medicina veterinaria que se enfoca en el 
                                estudio, diagnóstico y tratamiento de las enfermedades y trastornos que afectan los ojos
                                y el sistema visual de los animales. Los oftalmólogos veterinarios son profesionales 
                                especializados en la atención ocular y visual de diferentes especies, y están capacitados
                                para realizar exámenes detallados del ojo, diagnosticar afecciones oculares y realizar 
                                procedimientos quirúrgicos oftálmicos.
                            </p>
                        </li>
                        <h4><li>Cardiología veterinaria:</h4>
                            <p>La cardiología veterinaria es la especialidad veterinaria que se ocupa del diagnóstico y 
                                tratamiento de enfermedades y trastornos del sistema cardiovascular de los animales. 
                                Los cardiólogos veterinarios están capacitados para evaluar problemas cardiacos, realizar 
                                ecocardiografías, electrocardiogramas y otros estudios diagnósticos, así como para prescribir 
                                tratamientos médicos o realizar cirugías cardíacas en aquellos casos que lo requieran.
                            </p>
                        </li>
                        <h4><li>Aparato respiratorio veterinario:</h4>
                            <p>El aparato respiratorio veterinario se refiere al conjunto de órganos y estructuras que están 
                                involucrados en la respiración de los animales. Incluye las vías respiratorias superiores e 
                                inferiores, los pulmones y los músculos respiratorios. Los veterinarios especializados en 
                                el aparato respiratorio están capacitados para diagnosticar y tratar afecciones respiratorias, 
                                como neumonías, bronquitis, enfermedades pulmonares obstructivas, entre otras.
                            </p>
                        </li>
                    </ol>
                    <p>
                    Cada una de estas especialidades tiene profesionales altamente capacitados que trabajan para garantizar el 
                    bienestar y la salud de los animales a través del diagnóstico preciso y el tratamiento adecuado de las 
                    afecciones específicas que afectan a los ojos, al corazón y al sistema respiratorio de las diferentes especies.
                    </p>
                    <?php
                        if (!isset($_SESSION['nombreUsuario'])) {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal2" id="button-S">Solicitar servicio</button>
                        <?php
                        } else {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3" id="button-S" onclick="seleccionarOpcion('oftalmologia')">Solicitar servicio</button>
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
                        <h4><li>Oftalmología veterinaria:</h4>
                            <p>Los oftalmólogos veterinarios utilizan equipos especializados como oftalmoscopios, 
                                tonómetros para medir la presión intraocular, lámparas de hendidura para examinar 
                                estructuras oculares y herramientas para realizar cirugías oculares, como microscopios 
                                quirúrgicos y suturas especiales para tejidos oculares delicados.
                            </p>
                        </li>
                        <h4><li>Cardiología veterinaria:</h4>
                            <p>Los cardiólogos veterinarios emplean dispositivos de diagnóstico como ecocardiogramas,
                                electrocardiógrafos y monitores de presión arterial. Además, pueden utilizar instrumentos
                                quirúrgicos específicos para procedimientos cardiovasculares, como catéteres y grapadoras 
                                vasculares.
                            </p>
                        </li>
                        <h4><li>Aparato respiratorio veterinario:</h4>
                            <p>Para evaluar el sistema respiratorio, los veterinarios pueden utilizar equipos como 
                                estetoscopios, radiografías, endoscopios para visualizar las vías respiratorias y 
                                broncoscopios para explorar los pulmones.
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
                        <h4><li>Oftalmología veterinaria:</h4>
                            <p>La oftalmología veterinaria permite diagnosticar y tratar problemas oculares que pueden
                                causar dolor, malestar y afectar la calidad de vida de los animales. Además, puede prevenir 
                                o detener el avance de enfermedades visuales, lo que contribuye a mantener la salud ocular 
                                a lo largo de la vida del animal.
                            </p>
                        </li>
                        <h4><li>Cardiología veterinaria:</h4>
                            <p>La cardiología veterinaria ayuda a detectar afecciones cardiacas en etapas tempranas, 
                                permitiendo un tratamiento oportuno que puede mejorar la calidad de vida del animal y 
                                prolongar su expectativa de vida. Además, los avances en esta especialidad han llevado a 
                                técnicas y tratamientos cada vez más avanzados para abordar problemas cardíacos específicos 
                                en animales.
                            </p>
                        </li>
                        <h4><li>Aparato respiratorio veterinario:</h4>
                            <p>La especialidad del aparato respiratorio permite identificar y tratar problemas respiratorios
                                como neumonías, bronquitis, asma, entre otros. El diagnóstico y tratamiento adecuado de estas 
                                afecciones contribuyen a mejorar la función respiratoria y, en consecuencia, el bienestar 
                                general del animal.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>En resumen, estas especialidades veterinarias, junto con los materiales y técnicas utilizados, son 
                        fundamentales para el diagnóstico y tratamiento preciso de afecciones específicas, mejorando la calidad 
                        de vida y prolongando la vida de los animales. Además, la investigación y el desarrollo en estas áreas 
                        continúan avanzando, lo que proporciona nuevas opciones de tratamiento y cuidado para los pacientes animales.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/62/cd/ee/62cdee12cbf5536349b6282f24233868.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/d8/c2/9d/d8c29d9fbfe87bdcd6569283b6888d1c.jpg" alt="">
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