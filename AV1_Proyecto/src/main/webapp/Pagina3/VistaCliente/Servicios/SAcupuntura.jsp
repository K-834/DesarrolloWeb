<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Acupuntura veterinaria</title>
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
                Acupuntura
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definición</h3>
                    <p>La acupuntura veterinaria es una rama de la medicina veterinaria que utiliza agujas delgadas
                    y otros métodos para estimular puntos específicos en el cuerpo de los animales con el fin de
                    promover la salud y tratar diversas afecciones. Está basada en los principios de la medicina
                    tradicional china.<br>
                    La acupuntura veterinaria se utiliza para tratar una amplia variedad de afecciones en animales, 
                    como problemas musculoesqueléticos, trastornos neurológicos, trastornos digestivos, enfermedades 
                    respiratorias, problemas de piel, trastornos del sistema inmunológico y trastornos del comportamiento. 
                    También puede ser utilizada para aliviar el dolor, acelerar la recuperación después de una cirugía
                    o lesión, y mejorar el rendimiento atlético en animales de competición.<br>
                    Además de las agujas, otros métodos utilizados en la acupuntura veterinaria incluyen la electroacupuntura
                    (donde se aplica una corriente eléctrica suave a las agujas), la moxibustión  (calentamiento de los
                    puntos de acupuntura con hierbas medicinales) y el uso de láser en lugar de agujas.
                    </p>

                    <?php
                        if (!isset($_SESSION['nombreUsuario'])) {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal2" id="button-S">Solicitar servicio</button>
                        <?php
                        } else {
                        ?>
                            <button type="submit" data-bs-toggle="modal" data-bs-target="#myModal3" id="button-S" onclick="seleccionarOpcion('peluqueria')">Solicitar servicio</button>
                        <?php
                        }
                        ?>
                
                </center>
            </div>
            <div class="SACMat">
                <center>
                    <h3>Materiales utilizados:</h3>
                    <p>Los materiales utilizados en la acupuntura veterinaria son similares a los de la acupuntura
                    humana y pueden incluir:
                    </p>
                    <ul style="list-style-type: circle">
                        <h4><li>Agujas:</h4>
                            <p>Son instrumentos delgados y estériles que se insertan en puntos específicos del
                            cuerpo del animal. Las agujas pueden ser de diferentes tamaños y longitudes, dependiendo
                            de la especie y el tamaño del animal.
                            </p>
                        </li>
                        <h4><li>Estimulación eléctrica:</h4>
                            <p>En algunos casos, se utiliza una corriente eléctrica suave en las agujas para aumentar
                            la estimulación de los puntos de acupuntura.
                            </p>
                        </li>
                        <h4><li>Moxibustión:</h4>
                            <p>Es una técnica que implica quemar la planta de artemisa (Artemisia vulgaris) cerca
                            de los puntos de acupuntura para generar calor y estimular los puntos.
                            </p>
                        </li>
                        <h4><li>Masaje:</h4>
                            <p>Se pueden utilizar técnicas de masaje en combinación con la acupuntura para relajar
                            los músculos y promover la circulación sanguínea.
                            </p>
                        </li>
                    </ul>
                </center>
            </div>
            <div class="SACBen">
                <center>
                    <h3>Algunos beneficios:</h3>
                    <p>Los beneficios de la acupuntura veterinaria pueden variar dependiendo del animal y la condición
                    que se está tratando. Algunos de los beneficios potenciales incluyen:
                    </p>
                    <ol>
                        <h4><li>Alivio del dolor:</h4>
                            <p>La acupuntura puede ayudar a aliviar el dolor crónico y agudo en los animales, ya
                            sea debido a lesiones, enfermedades degenerativas o cirugías.
                            </p>
                        </li>
                        <h4><li>Promoción de la curación:</h4>
                            <p>Al estimular puntos específicos, la acupuntura puede promover la circulación sanguínea
                            y aumentar el suministro de oxígeno y nutrientes a los tejidos lesionados, lo que puede 
                            acelerar el proceso de curación.
                            </p>
                        </li>
                        <h4><li>Mejora de la función neurológica:</h4>
                            <p>En casos de enfermedades neurológicas o lesiones en el sistema nervioso, la
                            acupuntura puede ayudar a mejorar la función neurológica y promover la recuperación.
                            </p>
                        </li>
                        <h4><li>Reducción de la inflamación:</h4>
                            <p>La acupuntura puede ayudar a reducir la inflamación en los animales, lo que
                            puede ser beneficioso en enfermedades inflamatorias crónicas.
                            </p>
                        </li>
                        <h4><li>Reducción del estrés y la ansiedad:</h4>
                            <p>La acupuntura puede tener un efecto calmante en los animales y ayudar a
                            reducir el estrés y la ansiedad, lo que puede ser especialmente beneficioso en
                            casos de fobias o trastornos del comportamiento.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>Es importante tener en cuenta que la acupuntura veterinaria no reemplaza los tratamientos
                    convencionales, sino que puede ser utilizada como complemento en el cuidado de la salud de los
                    animales. Si estás considerando la acupuntura veterinaria para tu mascota, es recomendable
                    buscar un veterinario capacitado en esta técnica y discutir los beneficios y posibles riesgos
                    en el contexto específico de tu animal.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/3e/42/75/3e42750ac0435a632d7a4d58677fe716.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/9d/e9/ac/9de9ac99fcd9845c26dd6aa9de9b86ca.jpg" alt="">
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