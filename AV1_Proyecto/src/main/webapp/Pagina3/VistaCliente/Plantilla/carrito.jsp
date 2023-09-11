<?php session_start(); 

//aqui empieza el carrito

	if(isset($_SESSION['carrito'])){
		$carrito=$_SESSION['carrito'];
		if(isset($_POST['name'])){
			$name = $_POST['name'];
            $id = $_POST['id'];
			$price = $_POST['price'];
			$amount = $_POST['amount'];
			$num=0;
     		$carrito[]=array("name"=>$name,"id"=>$id,"price"=>$price, "amount"=>$amount);	
 		}
	}else{
        $name = $_POST['name'];
        $id = $_POST['id'];
        $price = $_POST['price'];
        $amount = $_POST['amount'];
         $carrito[]=array("name"=>$name,"id"=>$id,"price"=>$price, "amount"=>$amount);	
	}
	

$_SESSION['carrito']=$carrito;

//aqui termina el carrito


header("Location: ".$_SERVER['HTTP_REFERER']."");
?>



