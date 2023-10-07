<%-- 
    Document   : SesionLog
    Created on : 6 oct. 2023, 05:51:56
    Author     : antho
--%>

<!-- The Modal -->
<div class="modal fade" id="myModal" aria-hidden="true" tabindex="-1" >
    <div class="modal-dialog modal-xl modal-fullscreen-xxl-down">
        <link href="../IniciarSesion/modalG.css" rel="stylesheet">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Registrate</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="registro1">
                    <div class="tama�o" id="cambio">
                        <div class="imgR">

                        </div>
                        <div class="reg">
                            <div class="form">
                                <form method="post" action="../Plantilla/registrarseBD.php">
                                    <ul>
                                        <li><small><label for="nombre">Nombre: </label> </small></li>
                                        <li><input type="text" id="name" name="name" required></li>
                                        <li><small><label for="apellido">Apellido: </label> </small>
                                        <li><input type="text" id="lastname" name="lastname" required></li>
                                        <li><small><label for="dni">DNI:</label> </small></li>
                                        <li><input type="number" id="dni" name="dni" required></li>
                                        <li><small><label for="correo">Correo Electr�nico:</label> </small></li>
                                        <li><input type="email" id="correo" name="correo" required></li>


                                        <li>
                                            <label>Nacionalidad:</label><br>
                                            <select id="nacionalidad" name="nacionalidad" required>
                                                <option value="Peru" selected>Per�</option>
                                                <option value="chile">Chile</option>
                                                <option value="Brasil">Brasil</option>
                                                <option value="Colombia">Colombia</option>
                                            </select>
                                        </li>


                                        <li><small><label>Fecha de Nacimiento:</label> </smal>
                                        </li>
                                        <li><input type="date"  name="FechaNac" required></li>


                                        <li><small><label for="cel">Numero de Celular:</label> </small></li>
                                        <li><input type="number" id="cel" name="cel" required min="900000000"></li>

                                        <li id="genero" class="container">
                                            <label>

                                                <input type="radio" name="genero" value="Masculino">
                                                <span> Masculino</span>
                                            </label>

                                            <label>
                                                <input type="radio" name="genero" value="Fenemino">
                                                <span> Fenemino </span>
                                            </label>

                                            <label>
                                                <input type="radio" name="genero" value="No binario">
                                                <span> No binario</span>
                                            </label>
                                        </li>



                                        <li><small><label for="contrasena">Contrase�a:</label> </smal>
                                        </li>
                                        <li><input type="password" id="password" name="password" required></li>

                                        <li><Center><button type="submit" >Registrarse</button></Center></li>
                                        <li><Center><a id="cuenta" data-bs-target="#myModal2" data-bs-toggle="modal" data-bs-dismiss="modal">Ya tengo cuenta</a></Center></li>
                                    </ul>
                                </form>
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






<div class="modal fade" id="myModal2" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalToggleLabel2">Iniciar Sesion</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="registro1">
                    <div class="tama�o" id="cambio">
                        <div class="imgR">

                        </div>
                        <div class="reg">
                            <div class="form">
                                <form method="post" action="/AV1_Proyecto/UsuarioController">
                                    <input class="hidden" name="accion" type="text" value="login">
                                    <ul>
                                        <li><small><label for="correo">Correo Electr�nico:</label> </small></li>
                                        <li><input type="email" id="correo" name="usuario-correo" required></li>

                                        <li><small><label for="contrasena">Contrase�a:</label> </smal>
                                        </li>
                                        <li><input type="password" id="contrasena" name="usuario-contrasena" required></li>

                                        <li><Center><button type="submit" >Ingresar</button></Center></li>
                                        <li><Center><a id="cuenta" data-bs-target="#myModal" data-bs-toggle="modal" data-bs-dismiss="modal">No tengo cuenta</a></Center></li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
