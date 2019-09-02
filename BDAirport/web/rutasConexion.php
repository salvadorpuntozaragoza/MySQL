<?php

$servername = "127.0.0.1";
$username = "root";
$password = "1234";
$dbname = "adminAirport";

//se crea una conexxion a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

//se revisa la conexion
if($conn->connect_error){
	echo '<script>alert("Cuadro de dialogo:\nNo se pudo establecer una conexion!!!!")</script>';
	die("La conexionnnn fallo: ".$conn->connect_error);
}else{

	$sql = "CALL PA_insertNewRuta('".$_POST['txtDestino']."','".$_POST['txtTarifa']."','".$_POST['txtDistancia']."','".$_POST['txtTiempo']."','".$_POST['txtCompania']."')";
	//$sql = "INSERT INTO ruta (destino, tarifa, distancia, tiempo_recorrido)
	//VALUES('".$_POST['txtDestino']
	//		."','".$_POST['txtTarifa']
	//		."','".$_POST['txtDistancia']
	//		."','".$_POST['txtTiempo']
	//		."')";

			if($conn->query($sql) === TRUE){
				echo '<script>alert("Cuadro de dialogo:\nUsuario registrado de manera exitosa!!!!!")</script>';
				echo "Se ha registrado al nuevo cliente de manera exitosa";
			}else{
				echo '<script>alert("Cuadro de dialogo:\nNo se pudo registrar al usuario")</script>';
				echo "Errorssssss: ".$sql."<br>".$conn->error;
			}
}

$conn->close();
header("Location: index.html");

?>