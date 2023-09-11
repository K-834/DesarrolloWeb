<%-- 
    Document   : index
    Created on : 11 set. 2023, 00:53:15
    Author     : antho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="CSS/index.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/cefc19ce63.js" crossorigin="anonymous"></script>

        <title>JSP Page</title>
    </head>
    <body>

        <%@ include file="Plantilla/header.jsp" %>

        <div class="carrusel">
            <div class="slider">
                <div class="slides">
                    <!-- B O T O N E S -->
                    <input type="radio" name="radio-btn" id="radio1">
                    <input type="radio" name="radio-btn" id="radio2">
                    <input type="radio" name="radio-btn" id="radio3">


                    <!-- I M A G E N E S  -->
                    <div class="slide first">
                        <img src="IMG/carr1.jpeg" alt="">
                    </div>

                    <div class="slide">
                        <img src="IMG/carr2.jpeg" alt="">
                    </div>

                    <div class="slide tre">
                        <img src="IMG/carr3.png" alt="">
                    </div>


                    <!-- A U T O M A T I C O  -->
                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>
                        <div class="auto-btn3"></div>

                    </div>


                    <div class="navigation-manual">
                        <label for="radio1" class="manual-btn"></label>
                        <label for="radio2" class="manual-btn"></label>
                        <label for="radio3" class="manual-btn"></label>

                    </div>

                </div>

                <!-- N A V E G A C I O N  M A N U A L  -->


            </div>
        </div>

        <header class="head">
            <h1>Top Hottest Product</h1>
            <p>
                <span>&#139;</span>
                <span>&#155;</span>
            </p>
        </header>
        <section class="slider">
            <?php foreach($resultado as $row ) { ?>
            <div class="product">


                <picture>
                    <?php

                    $id = $row['id'];
                    $imagen = "IMG/productos/" . $id . "/perfume1.jpg";

                    if(!file_exists($imagen)){
                    $imagen = "IMG/no-photo.jpg";
                    }

                    ?>
                    <img src="<?php echo $imagen; ?>">
                </picture>
                <div class="details">
                    <p>
                        <b>
                            <?php echo $row['nombre']?>
                        </b>

                    </p>
                    <samp>S/.
                        <?php echo $row['precio']?>
                    </samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a
                        href="perfumeA.php?id=<?php echo $row['id']; ?>&token=<?php echo hash_hmac('sha1', $row['id'], KEY_TOKEN);?>">ver
                        detalles</a>
                </div>
            </div>
            <?php } ?>


        </section>
        <div class="carrusel">
            <div class="slider">
                <div class="slides">


                    <!-- I M A G E N E S  -->
                    <div class="slide first">
                        <img src="IMG/conf.png" alt="">
                    </div>

                    <div class="slide">
                        <img src="IMG/carr2.jpeg" alt="">
                    </div>

                    <div class="slide tre">
                        <img src="IMG/carr3.png" alt="">
                    </div>


                    <!-- A U T O M A T I C O  -->
                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>
                        <div class="auto-btn3"></div>

                    </div>

                </div>

                <!-- N A V E G A C I O N  M A N U A L  -->


            </div>
        </div>


        <main>
            <section>
                <h2>Perfume A</h2>
                <a href="perfumeA.html"><img src="IMG/perfume1.jpg" alt="Imagen del perfume A"></a>
                <p>Descripción del perfume A.</p>
                <p>Precio: $100</p>
                <a href="perfumeA.html" class="button">Ver detalles</a>
            </section>

            <section>
                <h2>Perfume B</h2>
                <a href="perfumeB.html"><img src="IMG/perfume2.jpg" alt="Imagen del perfume B"></a>
                <p>Descripción del perfume B.</p>
                <p>Precio: $150</p>
                <a href="perfumeB.html" class="button">Ver detalles</a>
            </section>

            <section>
                <h2>Perfume C</h2>
                <a href="perfumeC.html"><img src="IMG/perfume3.jpg" alt="Imagen del perfume C"></a>
                <p>Descripción del perfume C.</p>
                <p>Precio: $125</p>
                <a href="perfumeC.html" class="button">Ver detalles</a>
            </section>

            <section>
                <h2>Perfume D</h2>
                <a href="perfumeD.html"><img src="IMG/perfume4.jpg" alt="Imagen del perfume D"></a>
                <p>Descripción del perfume D.</p>
                <p>Precio: $100</p>
                <a href="perfumeD.html" class="button">Ver detalles</a>
            </section>

            <section>
                <h2>Perfume E</h2>
                <a href="perfumeE.html"><img src="IMG/perfume5.jpg" alt="Imagen del perfume E"></a>
                <p>Descripción del perfume E.</p>
                <p>Precio: $100</p>
                <a href="perfumeE.html" class="button">Ver detalles</a>
            </section>

            <section>
                <h2>Perfume F</h2>
                <a href="perfumeF.html"><img src="IMG/perfume6.jpg" alt="Imagen del perfume F"></a>
                <p>Descripción del perfume F.</p>
                <p>Precio: $100</p>
                <a href="perfumeF.html" class="button">Ver detalles</a>
            </section>
        </main>

        <footer class="pie">

            <div class="section">
                <div>
                    <h2>Nuestras Marcas</h2>
                    <a href="#">marca1</a>
                    <a href="#">marca2</a>
                    <a href="#">marca3</a>
                    <a href="#">marca4</a>
                </div>
                <div>
                    <h2>Legal</h2>
                    <a href="#">Condiciones de uso</a>
                    <a href="#">Política de privacidad</a>
                    <a href="#">Términos y condiciones</a>
                    <a href="#">Conoce los códigos de notificación sanitaria obligatoria NSO</a>
                    <a href="#">No testeo en animales</a>
                    <a href="#">Política de cambios y devoluciones</a>
                    <a href="#">Libro de reclamaciones</a>
                </div>
                <div>
                    <h2>Contáctanos</h2>
                    <a href="#">Cómo comprar</a>
                    <a href="#">Preguntas frecuentes</a>
                    <a href="#">Escríbenos</a>
                    <a href="#">Quiero ser consultora</a>
                    <a href="#">Nuestras tiendas</a>
                </div>
            </div>
            <div class="derechos">
                <p>Elegant Perfumes - Todos los derechos reservados.</p>
            </div>
        </footer>








        <%@ include file="Plantilla/footer.jsp" %>
        <script src="JS/nav.js"></script>
        <script src="JS/main.js"></script>
        <script src="JS/carrusel.js"></script>
    </body>
</html>
