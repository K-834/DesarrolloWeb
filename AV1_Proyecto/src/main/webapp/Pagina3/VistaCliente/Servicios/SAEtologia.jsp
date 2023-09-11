<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Etolog�a veterinaria</title>
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
                Etolog�a
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definici�n</h3>
                    <p>La etolog�a veterinaria es una disciplina que se encarga del estudio del comportamiento animal, 
                        especialmente en el contexto de la relaci�n entre los animales y su entorno. Su objetivo principal 
                        es comprender y analizar el comportamiento de los animales, tanto en condiciones naturales como en 
                        situaciones relacionadas con la atenci�n y cuidado en entornos humanos. La etolog�a veterinaria 
                        busca identificar y comprender las causas y consecuencias del comportamiento, as� como proponer 
                        estrategias para mejorar el bienestar y la salud de los animales.
                    </p>
                    <?php
                        if (!isset($_SESSION['nombreUsuario'])) {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal2" id="button-S">Solicitar servicio</button>
                        <?php
                        } else {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3" id="button-S" onclick="seleccionarOpcion('etologia')">Solicitar servicio</button>
                        <?php
                        }
                        ?>

                </center>
            </div>
            <div class="SACMat">
                <center>
                    <h3>Materiales utilizados:</h3>
                    <p>Algunos de los materiales comunes utilizados en la etolog�a veterinaria son:
                    </p>
                    <ul style="list-style-type: circle">
                        <h4><li>Cuadernos o dispositivos electr�nicos de registro:</h4>
                            <p>Para tomar notas detalladas durante las observaciones de comportamiento y registrar 
                                datos relevantes.
                            </p>
                        </li>
                        <h4><li>C�maras de video o fotogr�ficas:</h4>
                            <p>Para grabar y documentar el comportamiento de los animales, lo que permite un an�lisis 
                                m�s detallado y la revisi�n posterior.
                            </p>
                        </li>
                        <h4><li>Juguetes o enriquecimiento ambiental:</h4>
                            <p>Para realizar pruebas de enriquecimiento y estudiar c�mo ciertos est�mulos afectan el 
                                comportamiento de los animales.
                            </p>
                        </li>
                    </ul>
                </center>
            </div>
            <div class="SACBen">
                <center>
                    <h3>Algunos beneficios:</h3>
                    <p>Algunos de los beneficios de la etolog�a veterinaria son:
                    </p>
                    <ol>
                        <h4><li>Mejor comprensi�n del comportamiento animal:</h4>
                            <p>La etolog�a veterinaria proporciona informaci�n valiosa sobre c�mo los animales se comunican, 
                                interact�an y responden a su entorno. Esto ayuda a los veterinarios y profesionales de la 
                                salud animal a entender mejor las necesidades y requerimientos emocionales de los animales.
                            </p>
                        </li>
                        <h4><li>Mejora del bienestar animal:</h4>
                            <p>Con un conocimiento m�s profundo del comportamiento animal, se pueden implementar medidas y
                                estrategias que mejoren el bienestar y reduzcan el estr�s de los animales en entornos humanos, 
                                como cl�nicas veterinarias, refugios y zool�gicos.
                            </p>
                        </li>
                        <h4><li>Prevenci�n y tratamiento de problemas de comportamiento:</h4>
                            <p>La etolog�a veterinaria permite identificar problemas de comportamiento en los animales y
                                proporciona herramientas para abordarlos mediante enriquecimiento ambiental, modificaci�n de conducta 
                                y otras t�cnicas.
                            </p>
                        </li>
                        <h4><li>Mejora de la relaci�n entre humanos y animales:</h4>
                            <p>Comprender el comportamiento animal tambi�n ayuda a los due�os de mascotas a establecer una relaci�n 
                                m�s s�lida y satisfactoria con sus animales, lo que promueve una convivencia armoniosa.
                            </p>
                        </li>
                        <h4><li>Contribuci�n a la conservaci�n y manejo de especies:</h4>
                            <p>En el caso de animales salvajes o especies en peligro de extinci�n, la etolog�a veterinaria es �til
                                para comprender sus necesidades y comportamientos naturales, lo que facilita su conservaci�n y manejo 
                                en cautiverio.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>En resumen, la etolog�a veterinaria es una ciencia que tiene como objetivo principal entender el comportamiento
                        de los animales y su relaci�n con el entorno para mejorar su bienestar, salud y convivencia con los humanos, 
                        tanto en el �mbito de las mascotas como en el de las especies salvajes o de conservaci�n.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/7b/6b/00/7b6b00056cc735ff1f32edaafc441f86.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/af/e8/76/afe876c64973b46474f96ea08b891b27.jpg" alt="">
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