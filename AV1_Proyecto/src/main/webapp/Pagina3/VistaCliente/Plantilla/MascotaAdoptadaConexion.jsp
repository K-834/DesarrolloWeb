<?php  
    $IDadopta = $_GET['id'];
    $conexion = mysqli_connect("localhost", "root", "", "web");
    $sql = "SELECT * FROM adopta where IDAdopta= '".$IDadopta."'";
    $resultado = mysqli_query($conexion, $sql);
    $filas = mysqli_num_rows($resultado);

    if ($filas > 0) {
        while ($campañas = mysqli_fetch_assoc($resultado)) {
            $imagenBinaria = $campañas['fotoMascota'];
            $imagenCodificada = base64_encode($imagenBinaria);
            $nombreMascota=$campañas['Nombre'];
            $edad=$campañas['Edad'];
            $sexo=$campañas['Sexo'];
            $color=$campañas['color'];
            $descrip=$campañas['Descripcion'];

            

            echo '<div class="datos">';        
                echo '<h2>ID: '.$IDadopta.'</h2>';        
                echo '<h2>Nombre: '.$nombreMascota.'</h2>';
                echo '<h2>Edad: '.$edad.'</h2>';
                echo '<h2>Sexo: '.$sexo.'</h2>';
                echo '<h2>color: '.$color.'</h2>';
                echo '<h2>Descripción: '.$descrip.'</h2>';
                echo '<a href="https://wa.link/xrxwg4" target="_blank"><h1>Whatssap</h1></a>';
            echo '</div>';
            echo '<div class="foto">';
                echo '<img src="data:image/jpeg;base64,' . $imagenCodificada . '" alt="">';
                

            echo '</div>';
        }
    } else {
        echo "No hay campañas disponibles.";
    }

    mysqli_close($conexion);
?>