
<?php
   $data = file_get_contents("../BaseDeDatosNOSQL/productos.json");
   $products = json_decode($data, true);
?>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Medicinas</title>
    
    <link rel="stylesheet" href="../EstilosGeneral.css" />
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
       <?php $tituloWeb = 7; include "../Plantilla/header2.php";?>
    </header>

    <div class="slider">
        <img src="ImagenesProductos/101511.png" alt=""><!--1600x700-->
    </div>

    <!--Contenido-->

    <div class="content">
        <header class="Medheader">
            <h1>Medicinas</h1>          
        </header>
        <div class="products">
        <?php  
           foreach ($products as $product) {
              if ($product['type']  == "medicine") {
              echo '<div class="product">';
                 echo '<figure>';
                    echo '<img src =  '.$product['path'].' alt = "producto" />';
                 echo '</figure>';
                 echo '<div class="product-information">';
                    echo '<div class = "product-text">';
                       echo '<div class = "product-name">';
                          echo '<h3>'.$product['name'].'</h3>';
                          echo '<p> '.$product['description'].'</p>';
                       echo '</div>';
                       echo '<div class = "product-price">';
                          echo '<h2>'.money_format($product['price']).'</h2>';
                       echo '</div>';
                    echo '</div>';   
                    echo '<button class="go" onclick="location.href=\'medicina.php?product=' . $product['id'] . '\'"> VER MÁS </button>';     
                 echo '</div>';

              echo '</div>';
              }
           }

        ?>
        </div>
    </div>

    
   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>    
   <?php include "../Plantilla/SesionModal.php";?>
   <footer>
       <?php include "../Plantilla/footer.php";?>
   </footer>
</body>   
