<table border="1" >
			<tr>
			<td>ID Taxi</td>
			<td>Fecha de registro</td>
			<td>Fecha de baja</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_registroTaxis";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idTaxi'] ?></td>
				<td><?php echo $mostrar['fechaReg'] ?></td>
				<td><?php echo $mostrar['fechaDel'] ?></td>
				
			</tr>
			<?php 
				}
		 		?>
			</table>