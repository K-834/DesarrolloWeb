<%-- 
    Document   : Login
    Created on : 12/09/2023, 12:12:08 AM
    Author     : JEREMY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../Registro/styleRegistro.css">
</head>

<body>
    <main>
        <div class="box">
            <form action="/AV1_Proyecto/UsuarioController" method="POST"  id="Formulario"><!--Formulario-->
                <input type="hidden" name="accion" value="registro" />
                <h2>Registro</h2>
                <div class="inputBox"> <!--Caja de texto-->
                    <input type="text" name="usuario-nombre" id="nombre" required="required">
                    <span>Nombres Completos</span>
                    <i></i>
                </div>

                <div class="inputBox"><!--Caja de texto-->
                    <input type="email" name="usuario-correo" id="correo" required="required">
                    <span>Email</span>
                    <i></i>
                </div>
                <div class="inputBox"><!--Caja de texto-->
                    <input type="password" name="usuario-contrasena" id="contraseña" required="required">
                    <span>Contraseña</span>
                    <i></i>
                </div>
                <div class="links"><!--Referencias a otras páginas-->
                    <a href="../Login/Login.jsp">Regresar al login</a>
                    </div>
                <div class="Juntar">
                    <button class="Iniciar" type="submit">Registrarme</button>
                    <a href="../../../CarritoServlet" class="cancel-button">Cancelar</a>

                </div>
            </form>


        </div>
    </main>


</body>
</html>
