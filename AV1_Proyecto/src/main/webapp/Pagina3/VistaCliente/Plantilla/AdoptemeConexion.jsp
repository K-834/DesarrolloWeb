<?php  
    $conexion = mysqli_connect("localhost", "root", "", "web");
    $sql = "SELECT * FROM adopta";
    $resultado = mysqli_query($conexion, $sql);
    $filas = mysqli_num_rows($resultado);

    if ($filas > 0) {
        while ($campañas = mysqli_fetch_assoc($resultado)) {
            $imagenBinaria = $campañas['fotoMascota'];
            $imagenCodificada = base64_encode($imagenBinaria);
            $nombreMascota=$campañas['Nombre'];

            $url = "MascotaAdoptada.php?id=" . urlencode($campañas['IDAdopta']);

            echo '<div class="MAS">';
                echo '<img src="data:image/jpeg;base64,' . $imagenCodificada . '" alt="">';
                echo '<a href= '.$url.'><h1>Ver Mas</h1></a>';
                echo '<h2>'.$nombreMascota.'</h2>';



            echo '</div>';
        }
    } else {
        echo "No hay campañas disponibles.";
    }

    mysqli_close($conexion);
?>
