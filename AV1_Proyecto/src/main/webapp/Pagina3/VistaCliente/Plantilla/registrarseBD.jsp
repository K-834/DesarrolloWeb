<?php
   // Establece la conexión a la base de datos
   $db = new mysqli("localhost", "root", "", "web");

   // Selecciona el último ID registrado en la tabla
   $sql = "SELECT idDueño FROM dueño ORDER BY idDueño DESC LIMIT 1";
   $resultado = $db->query($sql);

   // Si la tabla tiene registros previos
   if ($resultado !== false && $resultado->num_rows > 0) {
       $fila = $resultado->fetch_assoc();
       $ultimo_id = $fila['idDueño'];

       // Extrae el número de secuencia
       $secuencia = (int)substr($ultimo_id, 3) + 1;
       // Genera el nuevo ID con el formato DU0000
       $nuevo_id = 'DUE' . sprintf('%03d', $secuencia);
   } else {
       // Genera el primer ID si la tabla está vacía
       $nuevo_id = 'DUE001';
   }

   // Encripta la contraseña utilizando password_hash()
   $password = $_POST['password'];
   $hashed_password = password_hash($password, PASSWORD_DEFAULT);
 
   // Inserta el nuevo ID en la tabla, utilizando una sentencia preparada para evitar la inyección de SQL
   $sql = "INSERT INTO dueño (idDueño, nacionalidad, Cedula, nombres, apellidos, genero, fechaNacimiento, telefono, correo, contraseña)
   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("ssissssiss", $nuevo_id, $_POST['nacionalidad'],$_POST['dni'], $_POST['name'], $_POST['lastname'], 
    $_POST['genero'],$_POST['FechaNac'],$_POST['cel'], $_POST['correo'], $hashed_password);

   if ($stmt->execute()) {
       //echo "Nuevo registro insertado con éxito.";
       header("Location: ../PantallaPrincipal/PantallaPrincipal.php");
   } else {
       header("Location: ../PantallaPrincipal/PantallaPrincipal.php");
       exit();
   }

   // Cierra la conexión a la base de datos
   $db->close();
?>
