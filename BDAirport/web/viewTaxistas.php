<table border="1" >
			<tr>
			<td>ID Taxista</td>
			<td>Nombre</td>
			<td>Apellido paterno</td>
			<td>Apellido materno</td>
			<td>Compañia</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_taxistas";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idTaxista'] ?></td>
				<td><?php echo $mostrar['nombre'] ?></td>
				<td><?php echo $mostrar['apellidoPaterno'] ?></td>
				<td><?php echo $mostrar['apellidoMaterno'] ?></td>
				<td><?php echo $mostrar['nombre_compania'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>