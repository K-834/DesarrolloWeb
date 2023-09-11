<?php  
    $conexion = mysqli_connect("localhost", "root", "", "web");
    $sql = "SELECT * FROM campaña";
    $resultado = mysqli_query($conexion, $sql);
    $filas = mysqli_num_rows($resultado);

    if ($filas > 0) {
        while ($campañas = mysqli_fetch_assoc($resultado)) {
            $imagenBinaria = $campañas['imagen'];
            $imagenCodificada = base64_encode($imagenBinaria);
            echo '<div class="CColum">';
            echo '<div class="Ctable1">';
            echo '<div class="Cder">';
            echo '<img src="ImagenesCampañas\Circulos 2.2.jpg" alt="" style="width: 75px;">';
            echo '</div>';
            echo '<div class="Cizq">';
            echo '<h2 style="color: #641E16;">' . $campañas['Nombre'] . '</h2>';
            echo '<p>' . $campañas['Descripcion'] ;
            echo '<br><b> Fecha de realizacion: ' . $campañas['FechaComienzo'] .'-'.$campañas['FechaFin']. '</b>.</p>';
            echo '<img src="data:image/jpeg;base64,' . $imagenCodificada . '" alt="" style="width: 80%;">';
            echo '</div>';
            echo '</div>';
            echo '</div>';
        }
    } else {
        echo "No hay campañas disponibles.";
    }

    mysqli_close($conexion);
?>
