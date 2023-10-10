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
        <link rel="stylesheet" href="stylelogin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-W7gG1R+ayvyZKjHgexzX9AY+PbUaV7wvl1nAaxV7Uu+6rCZ6zQl6oYK9uUNe26zzx7VFLm6iCj7VfU6+DufavQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>

        <main>
            <div class="box">
                <form action="/AV1_Proyecto/UsuarioController" method="POST" id="Formulario"><!--Formulario-->
                    <input type="hidden" name="accion" value="login" />
                    <h2>Iniciar Sesion</h2>
                    <div class="inputBox"> <!--Caja de texto-->
                        <input type="email" name="usuario-correo" required="required">
                        <span>Email</span>
                        <i></i>
                    </div>

                    <div class="inputBox"><!--Caja de texto-->
                        <input type="password" name="usuario-contrasena" required="required">
                        <span>Contraseña</span>
                        <i></i>
                    </div>
                    <div class="links"><!--Referencias a otras páginas-->
                        <a href="#">Olvide mi contraseña</a>
                        <a href="../Registro/Registro.jsp">Registrarse</a>

                    </div>
                    <div class="Juntar">



                        <!-- <button class="Iniciar" type="submit"><a href="../Pagina Inicio.php"></a> Iniciar Sesion</button> -->


                        <button type="submit" class="Iniciar">Iniciar Sesion</button>

                        <style>
                            .Iniciar {
                                border: none;
                                outline: none;
                                padding: 11px 25px;
                                background: #d3e7ed;
                                cursor: pointer;
                                border-radius: 4px;
                                font-weight: 600;

                                font-family: 'Poppins', sans-serif;
                                width: 120px;
                                margin: 10px;

                                color: black;
                                text-decoration: none;
                            }
                        </style>
                        <!-- <input   class="Iniciar" type="submit" value="Iniciar Sesion"  > -->


                        <a href="../index.jsp " class="cancel-button">Cancelar</a>

                    </div>
                </form>


            </div>
        </main>


    </body>
</html>
