<% /*<?php
if (!isset($_SESSION['nombreUsuario'])) {

?>*/
%>
<!-- The Modal -->
<div class="modal fade" id="myModal3">
    <div class="modal-dialog modal-xl cancelarcss">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Cita</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <link href="../IniciarSesion/CitaEstilo.css" rel="stylesheet">
                <div class="registro3">

                    <div class="tamaño3">
                        <div class="imgR3">
                        </div>
                        <div class="reg3">
                            <form action="Proyecto/ViewEmpleados/pagEmpleado.jsp" method="get" id="formularioCita">
                                <ul>
                                    <li><small><label>Nombre: </label> </small></li>
                                    <li><input type="text" name="nombre" required></li>
                                    <li><small><label>Apellido: </label> </small>
                                    <li><input type="text" name="apellido" required></li>

                                    <li><small><label>DNI:</label> </small></li>
                                    <li><input type="number"  name="dni" required></li>

                                    <li><small><label>Correo Electrónico:</label> </small></li>
                                    <li><input type="email" name="correo" required></li>
                                    <li><small><label>Teléfono:</label> </small>
                                    </li>
                                    <li><input type="number" step="1"  name="cell" required></li>
                                    <li><small><label>Dia:</label> </small>
                                    </li>
                                    <li><input type="date"  name="dia" required></li>
                                    <li><small><label>Turno:</label> </small>
                                    </li>
                                    <li>
                                        <label>Tipo de servicio</label><br>
                                        <select id="opciones" name="opciones1" required>
                                            <option disabled selected>Selecciona un servicio</option>
                                            <option value="acupuntura">Acupuntura</option>
                                            <option value="peluqueria">Peluqueria</option>
                                            <option value="cirugia">Cirugía</option>
                                            <option value="oftalmologia">Oftalmología, Cardiología y Aparato
                                                respiratorio</option>
                                            <option value="radiologia">Radiología y ecografía</option>
                                            <option value="laboratorio">Laboratorio clínico</option>
                                            <option value="etologia">Etología</option>
                                        </select>
                                    </li>

                                    <li id="radturno" class="container">
                                        <label>

                                            <input type="radio" name="opcion1" value="Mañana">
                                            <span> Mañana</span>
                                        </label>

                                        <label>
                                            <input type="radio" name="opcion1" value="Tarde">
                                            <span> Tarde </span>
                                        </label>

                                        <label>
                                            <input type="radio" name="opcion1" value="Noche">
                                            <span> Noche</span>
                                        </label>
                                    </li>

                                    <li>
                                        <label>Motivo:</label> <br>
                                        <textarea  name="mensaje" style="width: 100%;"></textarea>

                                    </li>

                                    <li>
                                        <label> Locación</label> <br>
                                        <select name="opciones" required>
                                            <option disabled selected>Selecciona una sede</option>
                                            <option>San Juan de Miraflores</option>
                                            <option>San Juan de Lurigancho</option>
                                            <option>San Juan de Surco</option>
                                        </select>
                                    </li>



                                    <li><input type="submit" id="envio3" value="Enviar Cita"></li>
                                </ul>
                            </form>
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
<%/*
<?php    
}else{
?>


<!-- The Modal NO LOGUEADO ------------------------------------------------------------------------------>
<div class="modal fade" id="myModal3">
    <div class="modal-dialog modal-xl cancelarcss">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Cita</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <link href="../IniciarSesion/CitaEstilo.css" rel="stylesheet">
                <div class="registro3">

                    <div class="tamaño3">
                        <div class="imgR3">
                        </div>
                        <div class="reg3">
                            <form action="Proyecto/ViewEmpleados/pagEmpleado.html" method="get" id="formularioCita">
                                <ul>
                                    <!-- 
                                    <input type="hidden" name="nombre" valuye="<?php $_SESSION['nombreUsuario']; ?>">

                                    <input type="hidden" name="apellido" valuye="<?php $_SESSION['apellidoUsuario'];?>">
                                    

                                    <input type="hidden"  name="dni" valuye="<?php  $_SESSION['dni'];?>">


                                    <input type="hidden" name="correo" valuye="<?php $_SESSION['correo'];?>">


                                   <input type="hidden"   name="cell" valuye="<?php $_SESSION['cell'];?>">
                                    -->


                                    <li><small><label>Dia:</label> </small>
                                    </li>
                                    <li><input type="date"  name="dia" required></li>
                                    <li><small><label>Turno:</label> </small>
                                    </li>
                                    <li>
                                        <label>Tipo de servicio</label><br>
                                        <select id="opciones" name="opciones1" required>
                                            <option disabled selected>Selecciona un servicio</option>
                                            <option value="acupuntura">Acupuntura</option>
                                            <option value="peluqueria">Peluqueria</option>
                                            <option value="cirugia">Cirugía</option>
                                            <option value="oftalmologia">Oftalmología, Cardiología y Aparato
                                                respiratorio</option>
                                            <option value="radiologia">Radiología y ecografía</option>
                                            <option value="laboratorio">Laboratorio clínico</option>
                                            <option value="etologia">Etología</option>
                                        </select>
                                    </li>

                                    <li id="radturno" class="container">
                                        <label>

                                            <input type="radio" name="opcion1" value="Mañana">
                                            <span> Mañana</span>
                                        </label>

                                        <label>
                                            <input type="radio" name="opcion1" value="Tarde">
                                            <span> Tarde </span>
                                        </label>

                                        <label>
                                            <input type="radio" name="opcion1" value="Noche">
                                            <span> Noche</span>
                                        </label>
                                    </li>

                                    <li>
                                        <label>Motivo:</label> <br>
                                        <textarea  name="mensaje" style="width: 100%;"></textarea>

                                    </li>

                                    <li>
                                        <label> Locación</label> <br>
                                        <select name="opciones" required>
                                            <option disabled selected>Selecciona una sede</option>
                                            <option>San Juan de Miraflores</option>
                                            <option>San Juan de Lurigancho</option>
                                            <option>San Juan de Surco</option>
                                        </select>
                                    </li>



                                    <li><input type="submit" id="envio3" value="Enviar Cita"></li>
                                </ul>
                            </form>
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
<?php 
} 
?> 
*/
%>