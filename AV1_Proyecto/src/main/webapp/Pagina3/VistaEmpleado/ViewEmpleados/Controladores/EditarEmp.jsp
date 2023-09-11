<?php
    include('../../Plantilla/ConexionBD.php');
    $con = connection();

    $id=$_GET['ID'];

    $sql = "SELECT * FROM empleados WHERE ID='$id'";
    $query = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Administrador</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../estilosAdministrador.css">
        
    <script>
        function advertencia(){
            var not=confirm("Estás seguro que deseas eliminar?")
        }
    </script>
</head>

<body>

    <section class="ContenedorAdm">
        <div class="Dashboard">
            <div id="barra">
                <a href="perfil.html">
                    <div class="fa-solid fa-user tmn"></div>
                </a>
                <a href="../pagAdministrador.php">
                    <div class="fa-solid fa-list-check tmn"></div>
                </a>
                <a href="">
                    <div class="fa-solid fa-envelope tmn"></div>
                </a>
            </div>

            <div class="registroAdm">
                <header>
                    <h1>Editar empleado</h1>
                </header>

                <form action="UpdateEmp.php" class="FormularioAdm" method="POST">
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>Nombres</label>
                            <input type="text" name="jtxtNombres" value="<?=$row['Nombres']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Apellidos</label>
                            <input type="text" name="jtxtApellidos" value="<?=$row['Apellidos']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Correo</label>
                            <input type="text" name="jtxtCorreo" value="<?=$row['Correo']?>" placeholder="Escriba aquí..." />
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>N° Documento</label>
                            <input type="text" name="jtxtNumDoc" value="<?=$row['N_Documento']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Teléfono</label>
                            <input type="text" name="jtxtTelefono" value="<?=$row['Telefono']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Usuario</label>
                            <input type="text" name="jtxtUsuario" value="<?=$row['Usuario']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Contraseña</label>
                            <input type="text" name="jtxtContraseña" value="<?=$row['Contraseña']?>" placeholder="Escriba aquí..." />
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>ID</label>
                            <input type="text" name="jtxtID" value="<?=$row['ID']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Cargo</label>
                            <input type="text" name="jtxtCargo" value="<?=$row['Cargo']?>" placeholder="Escriba aquí..." />
                        </div>
                        <div class="turno-boxAdm">
                            <h5>Turno</h5>
                            <div class="opcionesTurno">
                                <div class="opcion">
                                    <input type="radio" id="check-m" name="jcbxTurno" checked />
                                    <label for="check-m">Mañana</label>
                                </div>
                                <div class="opcion">
                                    <input type="radio" id="check-t" name="jcbxTurno" checked />
                                    <label for="check-t">Tarde</label>
                                </div>
                                <div class="opcion">
                                    <input type="radio" id="check-n" name="jcbxTurno" checked />
                                    <label for="check-n">Noche</label>
                                </div>
                            </div>
                        </div>
                        <div class="select-boxAdm">
                            <label>Estado</label>
                            <select name="jcbxEstado" value="<?=$row['Estado']?>">
                                <option>Seleccionar...</option>
                                <option>AC</option>
                                <option>IC</option>
                            </select>
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="btn-boxAdm">
                            <input type="submit" name="jbtnActualizar" value="Actualizar información"></input>
                        </div>
                    </div>
                </form>
            </div>
    </section>
    </div>


    <script src="Empleados.js"></script>
</body>

</html>