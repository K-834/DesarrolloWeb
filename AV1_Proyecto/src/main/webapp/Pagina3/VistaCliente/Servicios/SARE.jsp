<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Radiolog�a y ecograf�a veterinaria</title>
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
                Radiolog�a y ecograf�a
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definici�n</h3>
                    <ol type="a">
                        <h4><li>Radiolog�a veterinaria:</h4>
                            <p>La radiolog�a veterinaria es una especialidad de la medicina veterinaria que utiliza 
                                t�cnicas de diagn�stico por im�genes basadas en la utilizaci�n de radiaci�n ionizante, como 
                                los rayos X, para obtener im�genes detalladas de los �rganos internos, huesos y tejidos 
                                blandos de los animales. Estas im�genes radiogr�ficas permiten a los veterinarios detectar 
                                y diagnosticar una amplia variedad de condiciones m�dicas y problemas de salud en los pacientes 
                                animales. La radiolog�a veterinaria es una herramienta esencial para el diagn�stico temprano y 
                                preciso, lo que facilita el tratamiento adecuado y mejora el pron�stico de las enfermedades.
                            </p>
                        </li>
                        <h4><li>Ecograf�a veterinaria:</h4>
                            <p>La ecograf�a veterinaria es una t�cnica de diagn�stico por im�genes que utiliza ondas de ultrasonido 
                                de alta frecuencia para generar im�genes en tiempo real de los �rganos internos y tejidos blandos 
                                del cuerpo de los animales. Es una t�cnica no invasiva que no utiliza radiaci�n ionizante y se basa 
                                en el principio de que los diferentes tejidos reflejan las ondas de ultrasonido de manera diferente. 
                                La ecograf�a veterinaria es ampliamente utilizada para evaluar el estado de �rganos como el coraz�n, 
                                h�gado, ri�ones, vejiga, �tero y otros tejidos, lo que permite a los veterinarios diagnosticar 
                                enfermedades, identificar anomal�as y realizar seguimiento de tratamientos. Adem�s, la ecograf�a es 
                                una herramienta valiosa para la reproducci�n animal, ya que permite la visualizaci�n del feto y la 
                                detecci�n de gestaciones en animales pre�ados.
                            </p>
                        </li>
                    </ol>
                    <p>
                    Tanto en radiolog�a como en ecograf�a veterinaria, es importante utilizar equipos y materiales de alta calidad
                    para obtener im�genes precisas y de alta resoluci�n que permitan un diagn�stico preciso y una atenci�n adecuada 
                    a los pacientes animales. Adem�s, se deben seguir protocolos de seguridad para proteger al personal veterinario 
                    y a los animales de la radiaci�n ionizante en el caso de la radiolog�a y para garantizar una t�cnica adecuada en 
                    el caso de la ecograf�a.
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
                        <h4><li>Radiolog�a veterinaria:</h4>
                            <p>En radiolog�a veterinaria, se emplean equipos de rayos X, que incluyen generadores de rayos X y 
                                equipos de revelado y digitalizaci�n de im�genes. Tambi�n se utilizan pel�culas radiogr�ficas y 
                                placas de imagen digital (CR o DR) para capturar las im�genes. Adem�s, se emplean dispositivos de 
                                protecci�n, como delantales de plomo y guantes, para garantizar la seguridad del personal y los 
                                pacientes.
                            </p>
                        </li>
                        <h4><li>Ecograf�a veterinaria:</h4>
                            <p>Para realizar ecograf�as veterinarias, se utiliza un ec�grafo, que es un dispositivo que emite 
                                ondas de ultrasonido y registra las ecos que rebotan en los tejidos internos, creando im�genes 
                                en tiempo real. Tambi�n se utiliza un gel especial para facilitar el contacto entre el transductor 
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
                        <h4><li>Radiolog�a veterinaria:</h4>
                            <p>La radiolog�a veterinaria permite a los veterinarios visualizar estructuras �seas, �rganos y 
                                tejidos internos de los animales, lo que ayuda a diagnosticar fracturas, identificar cuerpos extra�os, 
                                evaluar el tama�o y forma de �rganos internos, detectar tumores y otras anomal�as. Con un diagn�stico 
                                preciso, se puede proporcionar un tratamiento adecuado y oportuno, mejorando la salud y bienestar del 
                                animal. 
                            </p>
                        </li>
                        <h4><li>Ecograf�a veterinaria:</h4>
                            <p>La ecograf�a veterinaria es una herramienta invaluable para evaluar �rganos internos como el 
                                coraz�n, h�gado, ri�ones, vejiga, y otros tejidos blandos. Permite detectar quistes, tumores, inflamaci�n 
                                y otras anormalidades. Adem�s, es ampliamente utilizada en la reproducci�n para realizar ecograf�as de 
                                gestaci�n en animales pre�ados. Al ser una t�cnica no invasiva, la ecograf�a es segura y bien tolerada 
                                por los pacientes, lo que la convierte en una herramienta muy �til en el diagn�stico y seguimiento de 
                                diversas condiciones m�dicas en animales.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>En conjunto, la radiolog�a y la ecograf�a veterinaria son esenciales para el diagn�stico preciso y el tratamiento 
                        adecuado de diversas enfermedades y condiciones en los animales, lo que contribuye a mejorar su salud y calidad 
                        de vida. Estas t�cnicas de diagn�stico por im�genes proporcionan informaci�n valiosa que ayuda a los veterinarios 
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