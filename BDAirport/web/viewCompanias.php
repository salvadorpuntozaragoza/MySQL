<table border="1" >
			<tr>
			<td>ID</td>
			<td>Compania</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="SELECT * from VIEW_companias";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['idCompania'] ?></td>
				<td><?php echo $mostrar['nombre_compania'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>