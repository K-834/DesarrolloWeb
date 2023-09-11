<?php
    include('../Plantilla/ConexionBD.php');
    $con = connection();
    $sql = "SELECT * FROM empleados";
    $query = mysqli_query($con,$sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilosAdministrador.css">
    <script src="Correito.js"></script>
        
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
                <a href="perfil.php">
                    <div class="fa-solid fa-user tmn"></div>
                </a>
                <a href="pagAdministrador.php">
                    <div class="fa-solid fa-list-check tmn"></div>
                </a>
                <a href="Mensajeria.php">
                    <div class="fa-solid fa-envelope tmn"></div>
                </a>
                  <a href="../ViewEmpleados/LoginEmpleados/loginEmpleado.php">
                    <div class="fa-solid fa-right-from-bracket tmn" onclick="return advertenciaSalida()"></div>
                </a>
            </div>

            <div class="registroAdm">
                <header>
                    <h1>Registro de empleados</h1>
                </header>

                <form action="Controladores/RegistrarEmp.php" class="FormularioAdm" method="POST">
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>Nombres</label>
                            <input type="text" name="jtxtNombres" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Apellidos</label>
                            <input type="text" name="jtxtApellidos" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Correo</label>
                            <input type="text" name="jtxtCorreo" placeholder="Escriba aquí..." />
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>N° Documento</label>
                            <input type="text" name="jtxtNumDoc" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Teléfono</label>
                            <input type="text" name="jtxtTelefono" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Usuario</label>
                            <input type="text" name="jtxtUsuario" placeholder="Escriba aquí..." />
                        </div>
                        <div class="input-boxAdm">
                            <label>Contraseña</label>
                            <input type="text" name="jtxtContraseña" placeholder="Escriba aquí..." />
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="input-boxAdm">
                            <label>Cargo</label>
                            <input type="text" name="jtxtCargo" placeholder="Escriba aquí..." />
                        </div>
                        <div class="turno-boxAdm">
                            <h5>Turno</h5>
                            <div class="opcionesTurno">
                                <div class="opcion">
                                    <input type="radio" id="check-m" name="jcbxTurno" value="Mañana" />
                                    <label for="check-m">Mañana</label>
                                </div>
                                <div class="opcion">
                                    <input type="radio" id="check-t" name="jcbxTurno"  value="Tarde" />
                                    <label for="check-t">Tarde</label>
                                </div>
                                <div class="opcion">
                                    <input type="radio" id="check-n" name="jcbxTurno"  value="Noche"/>
                                    <label for="check-n">Noche</label>
                                </div>
                            </div>
                        </div>
                        <div class="select-boxAdm">
                            <label>Estado</label>
                            <select name="jcbxEstado">
                                <option disabled selected>Seleccionar...</option>
                                <option>AC</option>
                                <option>IC</option>
                            </select>
                        </div>
                    </div>
                    <div class="ColumnAdm">
                        <div class="btn-boxAdm">
                            <input type="submit" name="jbtnGuardar" value="Guardar"></input>
                        </div>
                    </div>
                </form>
                <table class="TablaAdm">
                    <thead class="EncAdm">
                        <tr>
                            <th>ID</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>N°Documento</th>
                            <th>Telefono</th>
                            <th>Correo</th>
                            <th>Cargo</th>
                            <th>Turno</th>
                            <th>Usuario</th>
                            <th>Contraseña</th>
                            <th>Estado</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody class="CrAdm">
                        <?php
                            while($row = mysqli_fetch_array($query)):
                        ?>
                        <tr>
                            <td><?=$row['ID']?></td>
                            <td><?=$row['Nombres']?></td>
                            <td><?=$row['Apellidos']?></td>
                            <td><?=$row['N_Documento']?></td>
                            <td><?=$row['Telefono']?></td>
                            <td><?=$row['Correo']?></td>
                            <td><?=$row['Cargo']?></td>
                            <td><?=$row['Turno']?></td>
                            <td><?=$row['Usuario']?></td>
                            <td><?=$row['Contraseña']?></td>
                            <td><?=$row['Estado']?></td>
                            <td><a href="Controladores/EditarEmp.php?ID=<?=$row['ID']?>"><i class="fa-solid fa-floppy-disk"></i></a></td>
                            <td><a href="Controladores/EliminarEmp.php?ID=<?=$row['ID']?>" onclick="return advertencia()"><i class="fa-solid fa-trash"></i></a></td>
                        </tr>
                        <?php
                            endwhile;
                        ?>
                    </tbody>
                </table>
            </div>
    </section>
    </div>
</body>

</html>