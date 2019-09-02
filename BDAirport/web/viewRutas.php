<table border="1" >
			<tr>
			<td>ruta</td>
			<td>tarifa</td>
			<td>compania</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from rutas";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['destino'] ?></td>
				<td><?php echo $mostrar['tarifa'] ?></td>
				<td><?php echo $mostrar['nombre_compania'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>