
<?php
   $data = file_get_contents("../BaseDeDatosNOSQL/productos.json");
   $products = json_decode($data, true);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="../EstilosGeneral.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../JSGeneral.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

</head>


<body class="Medbody">

    <header>
      
       <?php $tituloWeb = 6; include "../Plantilla/header2.php";?>
    </header>

    <div class="Prodslider"></div>
    </div>
    <div class="fondo2">
       <h1 class="tituloAAA">Productos</h1>
       
       <?php  
           include "../Plantilla/productoConexion.php"
       ?>

       <center>
           <h3 class="tituloAA">Proximamente</h3>
       </center>
       <div class="presentacion">
          <div class="carousel">
             <img src="https://ripleype.imgix.net/https%3A%2F%2Fdpq25p1ucac70.cloudfront.net%2Fseller-place-files%2Fmrkl-files%2F140%2FMARKETPLACE%20INTERNACIONAL%2F71vE2FRP8HL_195355606510_28.jpeg?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=fd2ae63b9f740a339479808f8f48a5fa"
                alt="Imagen 1" class="img1">
             <img src="https://ripleype.imgix.net/https%3A%2F%2Fdpq25p1ucac70.cloudfront.net%2Fseller-place-files%2Fmrkl-files%2F1415%2FMASCOTAS%2Fponcho-verde_165203646116_1.jpeg?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=bd5e9848882e6a66c6addc40da177e65"
                alt="Imagen 2" class="img2">
             <img src="https://superpet.pe/blog/wp-content/uploads/2021/07/Ropa-para-perros-Top-5-de-prendas-encantadoras-1-750x450.jpg"
                alt="Imagen 3" class="img3">
             <img src="https://http2.mlstatic.com/D_NQ_NP_603163-MPE46859365768_072021-O.webp" alt="Imagen 4"
                class="img5">
             <img src="https://1.bp.blogspot.com/-pAvJuAZAzhw/XnR67_f-F9I/AAAAAAAAKqE/mKoZHOL4KP88uNTovm-qIkXYR2NrtsAwACLcBGAsYHQ/s640/gettyimages-1004253846-612x612.jpg"
                alt="Imagen 5" class="img4">
          </div>
      </div>
    </div>


   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>    
      <?php include "../Plantilla/SesionModal.php";?>

      <script src="../IniciarSesion/modalJS.js"></script>

   <footer>
       <?php include "../Plantilla/footer.php";?>
   </footer>

</body>   

