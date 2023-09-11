<?php
// Inicie la sesión 
session_start();

  
    // Se utiliza PHP Mailer: https://github.com/PHPMailer/PHPMailer
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    require 'phpmailer/Exception.php';
    require 'phpmailer/PHPMailer.php';
    require 'phpmailer/SMTP.php';
    
    if (!empty($_POST["txtNombresApellidos"]) and !empty($_POST["txtCorreo"]) and !empty($_POST["txtMensaje"])) {
      try {
          //Instanciar mail
          $mail = new PHPMailer();
        
          //Server settings
          //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
          $mail->isSMTP();                                            //Send using SMTP
          $mail->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
          $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
          $mail->Username   = 'veterinariasanjuan1900@gmail.com';               //SMTP username
          //$mail->Password   = 'Utp2023$';                             //SMTP password
          $mail->Password   = 'drvymhzjvsfoffpx';                             //SMTP password
          $mail->SMTPSecure = 'tls';
          //$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
          $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

          //Recipients
          $mail->setFrom('veterinariasanjuan1900@gmail.com', 'Mensaje de Veterinaria San Juan');
          $mail->addAddress($_POST["txtCorreo"], $_POST["txtNombresApellidos"]);     //Add a recipient
          $mail->addCC('veterinariasanjuan1900@gmail.com');
          $mail->addBCC('veterinariasanjuan1900@gmail.com');

          //Attachments
          //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
          //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

          //Content
          $mail->isHTML(true);                                  //Set email format to HTML
          $mail->Subject = 'Mensaje de Prueba';
          $mail->Body    = '<img src="../PantallaPrincipal/ImagenesPantallaPrincipal/Logo.png"/><br />' . $_POST["txtMensaje"];
          //orggfwawirpgxujd

          if ($mail->send()) {
            /*Acá debe de aparecer ese msj*/
            function alert($parametro) {
              // Código PHP aquí
              // Realiza las operaciones que deseas ejecutar en respuesta a la llamada desde JavaScript
              // Puedes recibir parámetros desde JavaScript utilizando $_POST o $_GET según el método utilizado en la solicitud AJAX
              // También puedes devolver resultados al JavaScript utilizando echo o json_encode
          }
            echo 'Mensaje ha sido enviado OK a: ' . $_POST["txtCorreo"];
               "<script>";
              "aviso();";
              "</script>";
          } else {
            
            echo 'Mensaje no ha sido enviado.';
          }
      } catch (Exception $e) {
          echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
      }
    }
  ?>


