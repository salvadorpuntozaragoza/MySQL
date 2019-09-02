<table border="1" >
			<tr>
			<td>ID taxista</td>
			<td>Nombre</td>
			<td>Apellido</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_taxilessTaxistas";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idTaxista'] ?></td>
				<td><?php echo $mostrar['nombre'] ?></td>
				<td><?php echo $mostrar['apellidoPaterno'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>