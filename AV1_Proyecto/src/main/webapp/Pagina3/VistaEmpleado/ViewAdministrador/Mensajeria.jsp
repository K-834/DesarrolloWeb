<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilos.css">
    <script src="https://kit.fontawesome.com/26a3cc7edf.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="estilos.css">
    <script src="Correito.js"></script>
</head>

<body>

    <section class="ContenedorAdm">
        <div class="Dashboard">
            

            <div class="contenedor001">
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
                <!--<header>
                    <h1>Mensajes</h1>
                </header>-->
                <div class="correo">
            <?php
                include ("formulario_correo.php");
            ?>
               <!-- <div class="Imagen"><img src="data:image/png;base64,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" /></div>  -->
               <div class="Imagen"><img src="ImagenCorreo/Logo.png" alt=""></div> 
  
              <br />
            <form class="contenido" action="Mensajeria.php" method="POST">
              <table width="90%" align="center" cellspacing="2" cellpadding="2">
                <tr>
                  <td width="23%" >Nombres y Apellidos</th>
                  
                  <td width="75%" >
                    <input type="text" id="txtNombresApellidos" name="txtNombresApellidos" maxlength="120" />
                  </td>
                </tr>
                <tr>
                  <td >Correo Electronico</th>
                  
                  <td >
                    <input type="text" id="txtCorreo" name="txtCorreo" maxlength="200" />
                  </td>
                </tr>
                <tr>
                  <td >Mensaje</th>
                  
                  <td >
                    <textarea rows="5" id="txtMensaje" name="txtMensaje"></textarea>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" align="center">
                    <input type="submit" id="btnEnviar" name="btnEnviar" value="Enviar"/>
                  </td>
                </tr>
              </table>
            </form>
        </div>
            </div>
    </section>
    </div>
</body>

</html>