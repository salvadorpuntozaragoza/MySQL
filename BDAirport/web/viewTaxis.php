<table border="1" >
			<tr>
			<td>ID Taxi</td>
			<td>Color</td>
			<td>Modelo</td>
			<td>Año</td>
			<td>ID taxista</td>
			<td>ID compañia</td>
			<td>Nombre</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_taxis";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idTaxi'] ?></td>
				<td><?php echo $mostrar['color'] ?></td>
				<td><?php echo $mostrar['modelo'] ?></td>
				<td><?php echo $mostrar['anio'] ?></td>
				<td><?php echo $mostrar['taxista'] ?></td>
				<td><?php echo $mostrar['idCompania'] ?></td>
				<td><?php echo $mostrar['nombre_compania'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>