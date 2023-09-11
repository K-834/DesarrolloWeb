

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">



    <link rel="stylesheet" href="../EstilosGeneral.css">
    <link rel="stylesheet" href="pagar.css">

    <title>Metodos de Pago</title>
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
    <script src="../JSGeneral.js"></script>
    <!--JQuery para responsive-->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <!-- <link rel="stylesheet" href="../fonts.css">-->
</head>

<body>
    <?php 
        $tituloWeb = 1;
        include "../Plantilla/header2.php";
    
    ?>
    <div class="content">
        <header class="Medheader">
            <h1>Realizar Pago</h1>          
        </header>
        <div class="container">
        <form action="limpiar-pago.php">
            <div class="row">
                <div class="col">
                    <h3 class="title">Detalles de Facturación</h3>
                    <div class="inputBox">
                        <span>Nombre Completo :</span>
                        <input type="text" placeholder="Ingresar Nombre">
                    </div>
                    <div class="inputBox">
                        <span>Email :</span>
                        <input type="email" placeholder="Correo Electrónico">
                    </div>
                    <div class="inputBox">
                        <span>Celular :</span>
                        <input type="text" placeholder="Ej: +51 999 999 999">
                    </div>
                    <div class="inputBox">
                        <span>Dirección :</span>
                        <input type="text" placeholder="Dirección Completa">
                    </div>
                    <div class="inputBox">
                        <span>Ciudad :</span>
                        <input type="text" placeholder="Ciudad">
                    </div>
                    <div class="flex">
                        <div class="inputBox">
                            <span>Provincia/Estado :</span>
                            <input type="text" placeholder="Ej: Lima">
                        </div>
                        <div class="inputBox">
                            <span>Código ZIP :</span>
                            <input type="text" placeholder="Ej: 123 456">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <h3 class="title">Tu Pedido</h3>
                    <div class="inputBox">
                        <table>
                            <thead>
                                <tr>
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th>Precio</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                   $total=0.0;
                                   if(isset($_SESSION['carrito'])){
                                     for($i=0;$i<=count($carrito)-1;$i ++){
                                        if($carrito[$i]!=NULL){
                                            $total=$total + ($carrito[$i]['price'] * $carrito[$i]['amount']);
                                            echo "<tr>";
                                                echo "<td>". $carrito[$i]['name']. "</td>";
                                                echo "<td>". $carrito[$i]['amount']. "</td>";
                                                echo "<td>". money_format($carrito[$i]['price'] * $carrito[$i]['amount']) . "</td>";
                                            echo "</tr>";

                                        }                            
                                     }
       
                                   }
                                   
                                   echo "<tr>";
                                      echo "<td>Subtotal: </td>";
                                      echo "<td></td>";
                                      echo "<td>". money_format($total). "</td>";
                                   echo "</tr>"; 
                                   
                                ?>          
                                        
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="pay">                    
                    <h3 class="title">Métodos de Pago</h3>
                    <input type="checkbox" checked>
                    <label>Paga con tarjetas de débito y crédito</label>
                    <div class="inputBox">
                        <span>Tarjetas aceptadas :</span><br>
                        <a href="">
                            <img src="images/diners.gif" alt="Diners Club">
                        </a>
                        <a href="">
                            <img src="images/visa.gif" alt="Visa">
                        </a>
                        <a href="">
                            <img src="images/amex.gif" alt="American Express">
                        </a>
                        <a href="">
                            <img src="images/master.gif" alt="MasterCard">
                        </a>
                    </div>
                    <div class="inputBox">
                        <span>Nombre del titular como aparece en la tarjeta :</span>
                        <input type="text" placeholder="Nombre Completo">
                    </div>
                    <div class="inputBox">
                        <span>Número de Tarjeta :</span>
                        <input type="text" placeholder="0000-0000-0000-0000">
                    </div>
                    <div class="flex">
                        <div class="inputBox">
                            <span>Vencimiento :</span>
                            <input type="text" placeholder="mm/aa">
                        </div>
                        <div class="inputBox">
                            <span>CVV :</span>
                            <input type="text" placeholder="Ej: 123">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="pay">
                    <input type="checkbox">
                    <label>Yape</label>
                    <div class="inputBox">                        
                        <div class="inputBox yape">
                            <p>Método de pago mediante QR o al número Ej: 999 888 777, cuando se realice el pago se debe adjuntar el comprobante
                                con el justificante de pedido.</p>
                            <a>
                                <img src="images/yape.png" alt="Yape">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="pay">
                    <!-- PAYPAL -->
                    <div>
                        <input type="checkbox">
                        <label>Paypal</label>
                        <div class="inputBox">                        
                            <div class="inputBox paypal">
                                <p>Inicia sesión en tu cuenta de paypal y elige la cartera de fondos.</p>
                                <a>
                                    <img src="images/paypal.png" alt="Paypal">
                                </a>
                            </div>
                        </div> 
                    </div> 
                </div>
            </div>                        
                
            <div class="row">
                <div class="col">
                    <p>Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra <a style="text-decoration:underline;color:-webkit-link;cursor:pointer;">política de privacidad</a>.</p><br>            
                    <p>
                        <label>
                            <input type="checkbox" required>
                            <span>He leído y estoy de acuerdo con los <a>términos y condiciones</a> de la web.</span>
                        </label>
                        <input type="hidden" name="terms-field" value="1">
                    </p>

                    <p>
                        <label>
                            <input type="checkbox" required>
                            <span>Sí compra medicina. El pedido será procesado después de completar esta revisión. Por favor, marque la siguiente casilla para confirmar que ha comprendido esta información y acepta continuar con el proceso de pago.</span>
                        </label>
                        <input type="hidden" name="terms-field" value="1">
                    </p>

                </div>
            </div>
            <input type="submit" value="Finalizar Compra" class="submit-btn">
        </form>
    </div>        
    <div>


    <script>
        $(document).ready(function() {
            // Ocultar el contenido hijo al inicio
            $(".pay .inputBox").children().hide();
            // Mostrar por defecto el contenido del primer checkbox
            $(".pay .inputBox:first").children().show();

            // Controlar los clics en los checkboxes y mostrar/ocultar el contenido
            $("input[type='checkbox']").on("click", function() {
                var $inputBox = $(this).closest(".pay").find(".inputBox");
                // Mostrar el contenido correspondiente cuando el checkbox está seleccionado
                if ($(this).is(":checked")) {
                    // Ocultar todos los contenidos de .inputBox excepto el del checkbox actual
                    $(".pay .inputBox").not($inputBox).children().hide(); 
                    $(".pay input[type='checkbox']").not(this).prop("checked", false);

                    // Mostrar el contenido del checkbox actual
                    $inputBox.children().show();
                } else {
                    // Verificar si hay algún otro checkbox seleccionado actualmente
                    var hasChecked = $(".pay input[type='checkbox']:checked").length > 0;
                    // Si no hay otro checkbox seleccionado, mantener seleccionado el checkbox actual
                    if (!hasChecked) {
                        $(this).prop("checked", true);
                    }
                }
            });
        });
    </script>

</body>

</html>