
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
    <!-- Contenido  -->
    <div class="content1">
        <header class="Medheader1">

        </header>
        <!-- <script src="script-producto.js" ></script> -->

        <!-- Obtenemos EL ID del producto mediante la URL -->
        <?php  
           $product_id = 0;
           $product_id = htmlspecialchars($_GET["product"]);
           foreach ($products as $value) {

            if ($value['id'] == $product_id){

                echo '<div class="product-title1">';
                   echo '<h2> '.$value['name'].' </h2>';
                   echo '<hr size="20px" color="#641E16" width="10%">';
                echo '</div>';
            
            
                echo '<main class="Medmain">';
                   echo '<div class="product-img1">';
                      echo '<div class="imgrec1">';
                         echo '<img src = '.$value['path'].'>';
                      echo '</div>';
                   echo '</div>';
                   echo '<div class="product-info1">';;

                if ($value['information']){
                    foreach ($value['information'] as $key=> $info) {
                          echo '<div class="product-description1">';
                             echo '<div class="title-descp1">';
                                 echo '<h4>'.$info[0].'</h4>';
                                 echo '<i class="fa-solid fa-chevron-down"></i>';
                             echo '</div>';
                          if ($key == 0){
                             echo '<div class="text-descp1">';
                                echo '<p>'.$info[1].'</p>';
                             echo '</div>';
                          }
                          else {
                            echo '<div class="text-descp1 hidden1">';
                               echo '<p>'.$info[1].'.</p>';
                            echo '</div>';
                          }
                          echo '</div>';
                    }
                };
                      echo '<div class="product-price1 ">';
                         echo '<span>'.money_format($value['price']).'</span>'; 
                         echo '<i class="fa-solid fa-chevron-right"></i>';
                      echo '</div>';
                      echo '<form class="product-add1" method="post" action="../Plantilla/carrito.php">';
                            echo '<div class="product-amount1">';
                               echo '<input type = "number" name = "amount" id = "amount" placeholder = "1" value="1" min = "1" class = "input-quantity1">';
                               echo '<div class="product-button-in-dc1">';
                                  echo '<i class="fa-solid fa-chevron-up" id = "increment"></i>';
                                  echo '<i class="fa-solid fa-chevron-down" id = "decrement"></i>';
                               echo '</div>';
                            echo '</div>';
                            echo '<input name="name" type="hidden" id="name" value= '.$value['name'].' />';
                            echo '<input name="id" type="hidden" id="id" value= '.$value['id'].' />';
                            echo '<input name="price" type="hidden" id="price" value= '.$value['price'].' />';

                            

                            echo '<button class="product-add-to-card1" >';
                               echo '<i class="fa-solid fa-plus"></i>';
                               echo 'Agregar';   
                            echo '</button>';

                         if (isset($value['recipe'])){
                         echo '<input type = "file" value="Ingresa Receta" class = "input-file" accept=".pdf,.png,.jpg,.jpeg" />';
                         };
                      echo '</form>';

                   echo '</div>';
                echo '</main>';

                break;
            };

        }
        echo '<section class="products-related1">';
           echo '<h2>Tal vez te interese</h2>';
           echo '<div class="products1">';
        
           $n = 0;
           for ($i=0; $i<5; $i++) {
              if (($i == $product_id) or ((isset($products[$i + 1])) and ($products[$i + 1]["type"] != "medicine") )){
                 $n++;
              }
              $element = $products[$i + $n];
              if (isset($element)) {
                 echo '<div class="product1" onclick="location.href=\'medicina.php?product=' . $element['id'] . '\'">';
                    echo '<figure>';
                       echo '<img src =  '.$element['path'].' alt = "producto" />';
                    echo '</figure>';
                    echo '<div class="product-information1">';
                       echo '<div class = "product-text1">';
                           echo '<div class = "product-name1">';
                              echo '<h3>'.$element['name'].'</h3>';
                              echo '<p>'.$element['description'].'</p>';
                           echo '</div>';
                           echo '<div class = "product-releated-price">';
                              echo '<h2>'.money_format($value['price']).'</h2>';
                           echo '</div>';
                       echo '</div>';
                    echo '</div>';
                 echo '</div>';
              }
           }    
        
           echo '</div>';
        echo '</section>';

        ;?>


        <script src="script.js"></script>
        <script src="https://kit.fontawesome.com/3c12835a10.js" crossorigin="anonymous"></script>
    </div>
   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>
   <!------------------------------------------------------------------------------------------------------------>    
   <?php include "../Plantilla/SesionModal.php";?>
   <footer>
       <?php include "../Plantilla/footer.php";?>
   </footer>

</body>   



