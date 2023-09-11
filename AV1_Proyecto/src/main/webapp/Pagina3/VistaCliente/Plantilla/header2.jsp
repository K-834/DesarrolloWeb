<?php 
session_start();

if(isset($_SESSION['carrito'])){
    $carrito = $_SESSION['carrito'];
    $_SESSION['carrito'] = $carrito;
    $carrito_items = 0;

    for($i = 0; $i < count($carrito); $i++){
        if($carrito[$i] != NULL){ 
            $carrito_items += (int)$carrito[$i]['amount'];
        }
    }
} else {
    $carrito = array(); 
    $carrito_items = 0;
}

function money_format($floatcurr){
    return 'S/'.sprintf('%01.2f', $floatcurr);
}


?>



<div class="colorMarron">
    <a href="../PantallaPrincipal/PantallaPrincipal.php"><img
            src="../PantallaPrincipal/ImagenesPantallaPrincipal/Logo.png" alt=""></a>
    <div class="titulo">
        <h1>Veterinaria</h1>
        <h2>San Juan</h2>
    </div>
    <div class="navSuperior">
        <h1><?php if (isset($_SESSION['nombreUsuario'])) {
            echo("Bienvenido ".$_SESSION['nombreUsuario']. " ".$_SESSION['apellidoUsuario'] );
        }else{
            echo('');
        } ?></h1>

        <li class="imgCompra">
            <span id="contadorCompras">
                <?php echo $carrito_items; ?>
            </span>
            <button id="toggleCartBtn1" data-bs-toggle="modal" data-bs-target="#modal_cart"><img
                    src="../Medicinas/ImagenesProductos/carrito.png" alt=""></button>

        </li>
        
                <?php
            if (isset($_SESSION['nombreUsuario'])) {
                echo ' <li class="btnCerrarSesionB"><button id="toggleCartBtn1" >';
                echo '<a id="BtnCerrarSesion" href="../Plantilla/limpiar_sesion.php">';
                echo '<center><i class="fa-solid fa-user"></i>';
                echo '<h5 class="iniciar">Cerrar</h5>';
                echo '<h5 class="sesion">Sesion</h5>';
                echo '</center></a>';
                echo ' </button></li> ';
                }

                ?>
        
    </div>
</div>

<header>

    <div class="menu_bar">
        <a href="#" class="bt-menu"><i class="fa-solid fa-bars"></i></a>
    </div>
    <nav>

        <ul>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==1) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../PantallaPrincipal/PantallaPrincipal.php">Inicio</a>
            </li>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==2) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../QuienesSomos/QuienesSomos.php">Quienes Somos</a>
            </li>
            <li>
                <div class="ribbon"></div><a href="#footer_F">Contacto</a>
            </li>

            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==3) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../Campañas/Campañas.php">Campañas</a>
            </li>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==4) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../Servicios\Servicios.php">Servicios</a>
            </li>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==5) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../Sedes/Sedes.php">Sedes</a>
            </li>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==6) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../Productos/Productos.php">Productos</a>
            </li>
            <li>
                <div class="ribbon"></div><a <?php echo ($tituloWeb==7) ? 'class="colorBlancoTitulo"' : '' ; ?>
                    href="../Medicinas/productos.php">Medicina</a>
            </li>
                <?php
                 if (!isset($_SESSION['nombreUsuario'])) {
                    echo '<li>';
                    echo '<div class="ribbon"></div><a data-bs-toggle="modal" data-bs-target="#myModal2">';
                    echo '<a data-bs-toggle="modal" data-bs-target="#myModal2">';
                    echo '<i class="fa-solid fa-user"></i>';
                    echo '<h1 class="iniciar">Iniciar</h1>';
                    echo '<h1 class="sesion">Sesion</h1>';
                    echo '</a>';
                    echo '</li>';
                }
                 
                ?>
        </ul>

    </nav>
</header>

<!-- MODAL CARRITO -->
<div class="modal fade" id="modal_cart" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Carrito</h5>
            </div>
            <div class="modal-body bgcarrito">
                <div class="modal-body">
                    <div>
                        <div class="p-2 ">
                         <table style="width: 100%;" class="spacingtable">
                <tr class="BlancoTD">
                    <th colspan="3" style="text-align: center; color: #000000; ">Articulo</th>
                    <th colspan="4" style="text-align: center; color: #000000;"> Cantidad</th>
                    <th colspan="5" style="text-align: center; color: #000000;">Total</th>
                </tr>
                <?php
                $total = 0;
                if (isset($_SESSION['carrito'])) {
                    for ($i = 0; $i < count($carrito); $i++) {
                        if ($carrito[$i] != NULL) {
                            ?>
                            <tr rowspan="1"><td style="height: 2px;">&nbsp;</td> </tr>
                            <tr>
                                <td class="BlancoTD" colspan="2" style="text-align: left; color: #000000;">
                                
                                    <h6>
                                    <a type="button" href="../Plantilla/quitar_item_carrito.php?index=<?php echo $i; ?>" style="background: none; border: none; display: inline-block; position: relative; padding: 10px;">
                                               <span style="position: absolute; top: 80%; left: 50%; transform: translate(-50%, -50%);">
                                                  <i class="fas fa-window-close fa-xl" style="color: red;"></i>
                                               </span>
                                            </a><?php echo $carrito[$i]['name']; ?>
                                    </h6>
                                </td>

                                <td style="width: 5px;" ></td>
                                <td style="width: 5px;" ></td>

                                <td class="BlancoTD " colspan="2" style="text-align: center; color: #000000;">
                                    <h6 class="my-0">
                                        <?php echo $carrito[$i]['amount'] ?>
                                    </h6>
                                </td>
                                
                                <td style="width: 5px;" ></td>
                                <td style="width: 5px;" ></td>

                                <td class="BlancoTD" colspan="2" style="text-align: center; color: #000000;">
                                    <span>
                                        <?php echo money_format($carrito[$i]['price'] * $carrito[$i]['amount']); ?>
                                    </span>
                                </td>

                            </tr>
                            <?php
                            $total += $carrito[$i]['price'] * $carrito[$i]['amount'];
                        }
                    }
                }
                ?>
                <tr rowspan="12"><td>&nbsp;</td> </tr>
                <tr class="BlancoTD">
                    <td colspan="8" style="text-align: left; padding-left: 20px;">Total (PEN)</td>
                    <td colspan="4" style="text-align: center; ">
                        <strong style="color: red;">
                            <?php echo money_format($total); ?>
                        </strong>
                    </td>
                </tr>
            </table>
            
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                <a type="button" class="btn btn-primary" href="../Plantilla/limpiar_carrito.php">Limpiar Carrito</a>
                <?php
                if ($carrito_items > 0){
                 ?>
                   <a type="button" class="btn btn-primary" href="../Pago/pagar.php" style="Background: red; border: red;">Pago</a>
                <?php
                }
                ?>
            
            </div>
        </div>
    </div>
</div>

<!-- END MODAL CARRITO -->


  <!-- The Modal -->
  <div class="modal fade" id="myModalPago">
        <div class="modal-dialog modal-xl">
            <link href="../IniciarSesion/modalG.css" rel="stylesheet">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="registro1">
                        <div class="modal-body">
                            <div class="registro1">
                                <div class="tamañoColumna">
                                    <div class="regColumna">
                                        <div class="pago">
                                            <h1>Pago:</h1>
                                            <center>
                                                <p>Monto de Pago:</p>
                                                <h2><?php echo money_format($total) ?></h2>
                                            </center>
                                        </div>
                                    </div>
                                    <div class="imgRColumna">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    