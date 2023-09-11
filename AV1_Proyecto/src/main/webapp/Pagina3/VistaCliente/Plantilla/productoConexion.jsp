<?php  
     include('ConexionBD.php');
     $conexion = connection();
    $sql = "SELECT * FROM productos";
    $resultado = mysqli_query($conexion, $sql);
    $filas = mysqli_num_rows($resultado);

  
    if ($filas > 0) {
        $resultados = array();
        while ($producto = mysqli_fetch_assoc($resultado)) {
        $resultados[] = $producto;
        }
        foreach ($resultado as $producto){
            $imagenBinaria = $producto['imagen'];
            $imagenCodificada = base64_encode($imagenBinaria);
            echo '<!-- The Modal -->';
            echo '<div class="modal fade" id="myModalProducto'.$producto['idProductos'].'" aria-hidden="true" tabindex="-1">';
            echo '    <div class="modal-dialog modal-xl">';
            echo '        <link href="../IniciarSesion/modalG.css" rel="stylesheet">';
            echo '        <div class="modal-content">';
            echo '            <!-- Modal Header -->';
            echo '            <div class="modal-header">';
            echo '                <h4 class="modal-title">Comida</h4>';
            echo '                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>';
            echo '            </div>';
            echo '            <!-- Modal body -->';
            echo '            <div class="modal-body">';
            echo '                <div class="registro1">';
            echo '                    <div class="Formato-prod-modal">';
            echo '                        <div class="Formato-prod-imagen">';
            echo '                            <img src="data:image/jpeg;base64,' . $imagenCodificada . '">';
            echo '                        </div>';
            echo '                        <div class="Formato-prod-imagen">';
            echo '                            <div class="form Formato-prod-modal-direccion">';
            echo '                                <form class="Formato-prod-modal-margin infoMin" method="post" action="../Plantilla/carrito.php">';
            echo '                                    <h1>' . $producto['nombreProductos'] . '</h1>';
            echo '                                  <center>  <h5>' . $producto['info'] . '</h5> </center>' ;
            echo '                                  <h4>  <nav>' . money_format($producto['precioUnitario']) . '</nav></h4>';
            echo '                                    <input name="name" type="hidden" value="' . $producto['nombreProductos'] . '" />';
            echo '                                    <input name="id" type="hidden" value="' . $producto['idProductos'] . '" />';
            echo '                                    <h4><input name="price" type="hidden" value="' . $producto['precioUnitario'] . '" /></h4>';
            echo '                                    <h4><label style="display: flex; flex-direction: row;" >Cantidad: <center><input style="width:100%; text-align: center;" name="amount" type="number" min="1" value="1"/></center></label></h4>';
            echo '                              <center><button class="product-add-to-card1">Agregar al carrito</button>';
            echo '                              </center></form>';
            echo '                            </div>';
            echo '                        </div>';
            echo '                    </div>';
            echo '                </div>';
            echo '            </div>';
            echo '            <!-- Modal footer -->';
            echo '            <div class="modal-footer">';
            echo '                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>';
            echo '            </div>';
            echo '        </div>';
            echo '    </div>';
            echo '</div>';
           }

        echo '<center>';
        echo '<h3 class="tituloAA">Comida</h3>';
        echo '</center>';
        echo '<div class="juguetes">';
        foreach ($resultados as $producto) {
            
            if ($producto['tipo'] == "Comida") {
                $imagenBinaria = $producto['imagen'];
                $imagenCodificada = base64_encode($imagenBinaria);
                echo '<form class="toys" method="post" action="../Plantilla/carrito.php">';
                echo '<div><a data-bs-toggle="modal" data-bs-target="#myModalProducto'.$producto['idProductos'].'"><img src="data:image/jpeg;base64,' . $imagenCodificada . '" alt=""></a></div>';
                echo '<p class="espacio">'.$producto['nombreProductos'].'</p>';
                echo '<nav>'.money_format($producto['precioUnitario']).'</nav>';
                echo '<input name="name" type="hidden" value="'.$producto['nombreProductos'].'" />';
                echo '<input name="id" type="hidden" value="'.$producto['idProductos'].'" />';
                echo '<input name="price" type="hidden" value="'.$producto['precioUnitario'].'" />';
                echo '<label class="cantidadProductos">Cantidad:</label>';
                echo '<input name="amount" type="number" min="1" class="noMostrarHover" value="1" />';  
                echo '<button>Agregar al carrito</button>';
                echo '</form>';
            }
            

        }

        echo '</div>';

        echo '<center>';
        
        echo '<h3 class="tituloAA">Juguete</h3>';
        echo '</center>';
        echo '<div class="juguetes">';
    
        foreach ($resultados as $producto) {

            if ($producto['tipo'] == "Juguete") {
                $imagenBinaria = $producto['imagen'];
                $imagenCodificada = base64_encode($imagenBinaria);
                echo '<form class="toys" method="post" action="../Plantilla/carrito.php">';
                echo '<div><a data-bs-toggle="modal" data-bs-target="#myModalProducto'.$producto['idProductos'].'"><img src="data:image/jpeg;base64,' . $imagenCodificada . '" alt=""></a></div>';
                echo '<p class="espacio">'.$producto['nombreProductos'].'</p>';
                echo '<nav>'.money_format($producto['precioUnitario']).'</nav>';
                echo '<input name="name" type="hidden" value="'.$producto['nombreProductos'].'" />';
                echo '<input name="id" type="hidden" value="'.$producto['idProductos'].'" />';
                echo '<input name="price" type="hidden" value="'.$producto['precioUnitario'].'" />';
                echo '<label class="cantidadProductos">Cantidad:</label>';
                echo '<input name="amount" type="number" class="noMostrarHover" value="1" />';  
                echo '<button>Agregar al carrito</button>';
                echo '</form>';
            }
        }
        echo '</div>';


    } else {
        echo "No hay productos disponibles.";
    }
    mysqli_close($conexion);

    
?>

