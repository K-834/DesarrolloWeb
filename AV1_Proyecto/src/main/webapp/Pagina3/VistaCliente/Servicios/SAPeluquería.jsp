<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <title>Peluquería veterinaria</title>
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
                Peluquería
                <center>
                    <hr size="20px" color="#641E16" width="10%">
                </center>
            </h1>
        </div>
        <div class="SACInfo">
            <div class="SACDef">
                <center>
                    <h3>Definición</h3>
                    <p>La peluquería veterinaria es un servicio especializado que se ofrece para el cuidado estético 
                    y de higiene de los animales, principalmente perros y gatos. Consiste en realizar diversos 
                    tratamientos y procedimientos para mantener el pelaje, las uñas y la higiene en general de los 
                    animales en óptimas condiciones. Los peluqueros veterinarios, también conocidos como estilistas 
                    caninos o felinos, cuentan con conocimientos técnicos y experiencia en el manejo adecuado de los
                    animales durante los procedimientos de peluquería.<br>
                    La peluquería veterinaria puede incluir diferentes servicios, como el baño y secado, el corte y 
                    arreglo del pelaje, el recorte de uñas, la limpieza de oídos y glándulas anales, entre otros. 
                    Además de los aspectos estéticos, la peluquería veterinaria también puede desempeñar un papel 
                    importante en la detección temprana de problemas de salud o anomalías en la piel y el pelaje de 
                    los animales.<br>
                    Los peluqueros veterinarios suelen trabajar en clínicas veterinarias, peluquerías especializadas para
                    mascotas o incluso ofrecen servicios a domicilio. Su objetivo principal es brindar un cuidado integral
                    a los animales, proporcionando un ambiente seguro y cómodo durante los procedimientos de peluquería.<br>
                    Es importante destacar que la peluquería veterinaria no reemplaza los cuidados médicos y veterinarios 
                    regulares. Siempre se recomienda mantener las visitas periódicas al veterinario para garantizar la
                    salud general de los animales.
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
                    <p>Algunos de los materiales comunes utilizados en la peluquería veterinaria son:
                    </p>
                    <ul style="list-style-type: circle">
                        <h4><li>Cepillos y peines:</h4>
                            <p>Se utilizan para desenredar y peinar el pelaje, eliminando nudos y manteniendo el pelaje 
                                limpio y saludable.
                            </p>
                        </li>
                        <h4><li>Tijeras y cortauñas:</h4>
                            <p>Se utilizan para recortar y dar forma al pelaje y las uñas del animal.
                            </p>
                        </li>
                        <h4><li>Máquinas de afeitar y cuchillas:</h4>
                            <p>Se utilizan para cortar el pelo en áreas más extensas o para realizar cortes de 
                                pelo específicos.
                            </p>
                        </li>
                        <h4><li>Champús y acondicionadores:</h4>
                            <p>Se utilizan para bañar y limpiar el pelaje, manteniéndolo limpio y con buen olor.
                            </p>
                        </li>
                        <h4><li>Secadores y cepillos de aire:</h4>
                            <p>Se utilizan para secar el pelaje después del baño, evitando que el animal permanezca 
                                húmedo por mucho tiempo.
                            </p>
                        </li>
                        <h4><li>Productos de estilismo:</h4>
                            <p>Se pueden utilizar productos como geles, lacas o productos de acabado para estilizar 
                                el pelaje y darle forma.
                            </p>
                        </li>
                    </ul>
                </center>
            </div>
            <div class="SACBen">
                <center>
                    <h3>Algunos beneficios:</h3>
                    <p>Algunos de los beneficios de la peluquería veterinaria son:
                    </p>
                    <ol>
                        <h4><li>Mantenimiento del pelaje:</h4>
                            <p>La peluquería regular ayuda a mantener el pelaje del animal limpio, libre de nudos y en
                            buen estado. Esto evita problemas como enredos excesivos, irritaciones en la piel y la 
                            acumulación de suciedad y parásitos.
                            </p>
                        </li>
                        <h4><li>Control de la caída del pelo:</h4>
                            <p>Algunos animales, especialmente aquellos con pelajes largos o densos, pueden tener
                            problemas de caída de pelo. La peluquería veterinaria puede incluir técnicas para reducir 
                            la cantidad de pelo suelto y mantenerlo bajo control.
                            </p>
                        </li>
                        <h4><li>Higiene y cuidado de la piel:</h4>
                            <p>El baño regular y la limpieza de las orejas y los ojos ayudan a prevenir infecciones 
                            y mantener una buena higiene en general.
                            </p>
                        </li>
                        <h4><li>Detección temprana de problemas de salud:</h4>
                            <p>Durante la sesión de peluquería, el peluquero veterinario puede examinar la piel, el 
                            pelaje y otras partes del cuerpo del animal. Esto puede ayudar a identificar posibles
                            problemas de salud, como parásitos, irritaciones cutáneas o lesiones, y proporcionar una
                            pronta atención veterinaria.
                            </p>
                        </li>
                        <h4><li>Mejora del bienestar y apariencia general:</h4>
                            <p>La peluquería veterinaria puede hacer que el animal se sienta más cómodo y limpio,
                            mejorando su bienestar general. Además, un aspecto cuidado y estilizado puede realzar
                            la apariencia del animal y su confianza.
                            </p>
                        </li>
                    </ol>
                </center>
            </div>
            <div class="SACCon">
                <center>
                    <p>Es importante destacar que la peluquería veterinaria no debe reemplazar los cuidados médicos 
                    regulares y la atención veterinaria adecuada. Si tienes alguna inquietud sobre la salud o el 
                    bienestar de tu mascota, es importante consultar con un veterinario.
                    </p>
                </center>
            </div>
            <div class="SACImg">
                    <img src="https://i.pinimg.com/564x/bb/d5/a9/bbd5a9504e039c11004b74140b3536fa.jpg" alt="">
                    <img src="https://i.pinimg.com/564x/81/1a/a5/811aa509bc8162e2f92fa87c6b5bef20.jpg" alt="">
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