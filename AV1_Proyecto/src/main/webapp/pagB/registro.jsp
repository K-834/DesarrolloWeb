<%-- 
    Document   : registro
    Created on : 12 set. 2023, 01:26:14
    Author     : EQUIPO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro</title>
        <link rel="stylesheet" href="styleRegistro.css">
    </head>

    <body>
        <main>
            <div class="box">
                <form action="../enviar_correo/envio.php " method="post"  id="Formulario"><!--Formulario-->
                    <h2>Registro</h2>
                    <div class="inputBox"> <!--Caja de texto-->
                        <input type="text" name="nombre" id="nombre" required="required">
                        <span>Nombres Completos</span>
                        <i></i>
                    </div>

                    <div class="inputBox"><!--Caja de texto-->
                        <input type="email" name="correo" id="correo" required="required">
                        <span>Email</span>
                        <i></i>
                    </div>
                    <div class="inputBox"><!--Caja de texto-->
                        <input type="password" name="contraseña" id="contraseña" required="required">
                        <span>Contraseña</span>
                        <i></i>
                    </div>

                    <div class="Juntar">
                        <input class="Iniciar" type="submit" value="Registrarme">
                        <a href="../Pagina Inicio.php" class="cancel-button">Cancelar</a>

                    </div>
                </form>


            </div>
        </main>


    </body>
</html>