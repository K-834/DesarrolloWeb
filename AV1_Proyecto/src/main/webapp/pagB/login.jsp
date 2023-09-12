<%-- 
    Document   : login
    Created on : 12 set. 2023, 00:36:39
    Author     : EQUIPO
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
                <form action=" " id="Formulario"><!--Formulario-->
                    <h2>Iniciar Sesion</h2>
                    <div class="inputBox"> <!--Caja de texto-->
                        <input type="text" required="required">
                        <span>Email</span>
                        <i></i>
                    </div>

                    <div class="inputBox"><!--Caja de texto-->
                        <input type="password" required="required">
                        <span>Contraseña</span>
                        <i></i>
                    </div>
                    <div class="links"><!--Referencias a otras páginas-->
                        <a href="#">Olvide mi contraseña</a>
                        <a href="Registro.html">Registrarse</a>

                    </div>
                    <div class="Juntar">



                        <!-- <button class="Iniciar" type="submit"><a href="../Pagina Inicio.php"></a> Iniciar Sesion</button> -->


                        <a href="../Pagina Inicio.php" type="submit" class="Iniciar">Iniciar Sesion</a>

                        <style>
                            .Iniciar {
                                border: none;
                                outline: none;
                                padding: 11px 25px;
                                background: #45f3ff;
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


                        <a href="../Pagina Inicio.php" class="cancel-button">Cancelar</a>

                    </div>
                </form>


            </div>
        </main>


    </body>
</html>
