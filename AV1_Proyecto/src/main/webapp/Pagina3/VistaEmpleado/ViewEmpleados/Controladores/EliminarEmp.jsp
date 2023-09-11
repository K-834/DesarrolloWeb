<?php
    include('../../Plantilla/ConexionBD.php');
    $con = connection();
        $id=$_GET['ID'];
        $sql = "DELETE FROM empleados WHERE ID='$id'";
        $query = mysqli_query($con,$sql);
        if($query){
            Header("Location: ../pagAdministrador.php");
        }
?>