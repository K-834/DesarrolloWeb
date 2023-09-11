<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Cirug�a veterinaria</title>
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
                Cirug�a
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definici�n</h3>
                    <p>La cirug�a veterinaria es una especialidad dentro de la medicina veterinaria que se encarga del 
                    tratamiento quir�rgico de los animales, tanto dom�sticos como salvajes. Su objetivo principal es 
                    es diagnosticar, prevenir y corregir problemas de salud y condiciones m�dicas mediante
                    procedimientos quir�rgicos.<br>
                    La cirug�a veterinaria abarca una amplia variedad de procedimientos, desde intervenciones simples
                    y rutinarias, como la esterilizaci�n de mascotas, hasta cirug�as m�s complejas y especializadas, 
                    como las operaciones ortop�dicas o cirug�as de tejidos blandos para abordar problemas internos.<br>
                    Los profesionales que realizan cirug�as veterinarias son los cirujanos veterinarios, quienes han
                    recibido una formaci�n adicional y especializada en t�cnicas quir�rgicas y manejo de pacientes 
                    animales. Estos profesionales trabajan en cl�nicas y hospitales veterinarios, y su labor es 
                    fundamental para mejorar la calidad de vida de los animales, tratar enfermedades y lesiones, as� 
                    como contribuir a la investigaci�n y avance en el campo de la medicina veterinaria.<br>
                    Al igual que en la medicina humana, la cirug�a veterinaria debe llevarse a cabo con protocolos
                    de seguridad y bienestar animal, con el uso adecuado de anestesia y analgesia para minimizar el
                    dolor y el estr�s del paciente durante el procedimiento y una atenci�n postoperatoria apropiada 
                    para una recuperaci�n exitosa.
                    </p>
                    <?php
                        if (!isset($_SESSION['nombreUsuario'])) {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal2" id="button-S">Solicitar servicio</button>
                        <?php
                        } else {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3" id="button-S" onclick="seleccionarOpcion('cirugia')">Solicitar servicio</button>
                        <?php
                        }
                        ?>

                </center>
            </div>
            <div class="SACMat">
                <center>
                    <h3>Materiales utilizados:</h3>
                    <p>Algunos de los materiales comunes utilizados en la cirug�a veterinaria son:
                    </p>
                    <ul style="list-style-type: circle">
                        <h4><li>Instrumental quir�rgico:</h4>
                            <p>Incluye tijeras, pinzas, f�rceps, bistur�s, retractores, agujas, entre otros.
                            Estos instrumentos est�n dise�ados para realizar cortes, suturas y otras manipulaciones 
                            durante la cirug�a.
                            </p>
                        </li>
                        <h4><li>Anest�sicos:</h4>
                            <p>Se utilizan para sedar al animal durante la cirug�a para evitar dolor y estr�s.
                            Los anest�sicos pueden ser locales o generales, seg�n el alcance de la cirug�a.
                            </p>
                        </li>
                        <h4><li>Suturas y material de curaci�n:</h4>
                            <p>Se utilizan para cerrar incisiones y heridas despu�s de la cirug�a. Hay diferentes 
                                tipos de suturas, como suturas absorbibles y no absorbibles, seg�n el tiempo que 
                                permanezcan en el cuerpo del animal.
                            </p>
                        </li>
                        <h4><li>Equipo de monitorizaci�n:</h4>
                            <p>Se utiliza para controlar los signos vitales del paciente durante la cirug�a, 
                            como la frecuencia card�aca, la presi�n arterial y la saturaci�n de ox�geno.
                            </p>
                        </li>
                        <h4><li>Material de esterilizaci�n:</h4>
                            <p>Los equipos y materiales utilizados en cirug�a veterinaria deben esterilizarse 
                                adecuadamente para prevenir infecciones.
                            </p>
                        </li>
                    </ul>
                </center>
            </div>
            <div class="SACBen">
                <center>
                    <h3>Algunos beneficios:</h3>
                    <p>Algunos de los beneficios de la cirug�a veterinaria son:
                    </p>
                    <ol>
                        <h4><li>Tratamiento de enfermedades y afecciones:</h4>
                            <p>La cirug�a veterinaria permite tratar y resolver problemas m�dicos que no pueden 
                                abordarse mediante otras terapias o medicamentos.
                            </p>
                        </li>
                        <h4><li>Mejora de la calidad de vida:</h4>
                            <p>Al corregir problemas de salud en los animales, se puede mejorar significativamente 
                                su calidad de vida y bienestar general.
                            </p>
                        </li>
                        <h4><li>Prevenci�n y control de enfermedades:</h4>
                            <p>Algunas cirug�as se utilizan con fines preventivos, como la esterilizaci�n, para 
                                controlar la poblaci�n de animales y evitar ciertas enfermedades y comportamientos 
                                no deseados.
                            </p>
                        </li>
                        <h4><li>Reparaci�n de lesiones:</h4>
                            <p>Los procedimientos quir�rgicos permiten reparar y curar lesiones traum�ticas, como 
                                fracturas �seas o heridas profundas.
                            </p>
                        </li>
                        <h4><li>Avances en la medicina veterinaria:</h4>
                            <p>La cirug�a veterinaria ha experimentado avances significativos, permitiendo t�cnicas 
                                m�s precisas y menos invasivas, lo que mejora los resultados y reduce el tiempo de 
                                recuperaci�n.
                            </p>
                        </li>
                        <h4><li>Contribuci�n a la investigaci�n:</h4>
                            <p>Algunas cirug�as veterinarias se utilizan para investigar y comprender mejor ciertas
                                enfermedades o condiciones que tambi�n afectan a los humanos.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>Es importante destacar que la cirug�a veterinaria debe ser realizada por profesionales capacitados 
                        y con experiencia, para garantizar la seguridad y el bienestar de los animales. Adem�s, se debe 
                        proporcionar una atenci�n postoperatoria adecuada para una recuperaci�n exitosa del paciente.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/ee/73/f8/ee73f8b70c36400636f2c16ea8c0b2ea.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/01/ac/7b/01ac7bffd2a92033f4aaa5484dca0857.jpg" alt="">
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