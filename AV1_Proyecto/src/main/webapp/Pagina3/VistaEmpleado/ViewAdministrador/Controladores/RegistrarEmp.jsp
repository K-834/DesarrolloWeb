<?php
    include('../../Plantilla/ConexionBD.php');
    $con = connection();
    if(!empty($_POST["jbtnGuardar"])){
        if(!empty($_POST["jtxtNombres"]) and !empty($_POST["jtxtApellidos"]) and !empty($_POST["jtxtCorreo"]) and !empty($_POST["jtxtTelefono"]) 
        and !empty($_POST["jtxtNumDoc"]) and !empty($_POST["jtxtUsuario"]) and !empty($_POST["jtxtContraseña"]) and !empty($_POST["jcbxTurno"]) and !empty($_POST["jcbxEstado"])){
            $id_Empleado=null;
            $nombres=$_POST["jtxtNombres"];
            $apellidos=$_POST["jtxtApellidos"];
            $correo=$_POST["jtxtCorreo"];
            $telefono=$_POST["jtxtTelefono"];
            $numdoc=$_POST["jtxtNumDoc"];
            $usuario=$_POST["jtxtUsuario"];
            $contraseña=$_POST["jtxtContraseña"];
            $cargo=$_POST["jtxtCargo"];
            $turno=$_POST["jcbxTurno"];
            $estado=$_POST["jcbxEstado"];
            $sql = "INSERT INTO empleados  VALUES('$id_Empleado','$nombres','$apellidos','$numdoc','$telefono','$correo','$cargo','$turno','$usuario','$contraseña','$estado')";
            $query = mysqli_query($con,$sql);
            if($query){
                Header("Location:../pagAdministrador.php");
            }
        }else{
            Header("Location:../pagAdministrador.php");
        }
    }
?>