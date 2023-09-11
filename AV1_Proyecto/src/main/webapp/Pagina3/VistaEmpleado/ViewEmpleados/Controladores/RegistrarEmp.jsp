<?php
    include('../../Plantilla/ConexionBD.php');
    $con = connection();
    if(!empty($_POST["jbtnActualizar"])){
        if(!empty($_POST["jtxtID"]) and !empty($_POST["jtxtNombres"]) and !empty($_POST["jtxtApellidos"]) and !empty($_POST["jtxtCorreo"]) and !empty($_POST["jtxtTelefono"]) 
        and !empty($_POST["jtxtNumDoc"]) and !empty($_POST["jtxtUsuario"]) and !empty($_POST["jtxtContraseña"]) and !empty($_POST["jcbxTurno"]) and !empty($_POST["jcbxEstado"])){
            $id_Empleado=$_POST["jtxtID"];
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
            $sql = "UPDATE empleados SET ID='$id_Empleado', Nombres='$nombres',Apellidos='$apellidos',N_Documento='$numdoc',Telefono='$telefono',Correo='$correo',Cargo='$cargo',Turno='$turno',Usuario='$usuario',Contraseña='$contraseña',Estado='$estado' WHERE ID='$id_Empleado'";
            $query = mysqli_query($con,$sql);
            if($query){
                Header("Location:../pagAdministrador.php");
            }
        }else{
            Header("Location:../pagAdministrador.php");
        }
    }
?>