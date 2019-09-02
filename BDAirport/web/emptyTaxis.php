<table border="1" >
			<tr>
			<td>Taxi ID</td>
			<td>Compañia ID</td>
			<td>Nombre</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_emptyTaxis";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idTaxi'] ?></td>
				<td><?php echo $mostrar['idCompania'] ?></td>
				<td><?php echo $mostrar['nombre_compania'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>