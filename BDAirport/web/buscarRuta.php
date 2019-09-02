<table border="1" >
			<tr>
			<td>Compañia</td>
			<td>Destino</td>
			<td>Tarifa (MXN)</td>
				
			</tr>

			<?php 
			$conexion=mysqli_connect("127.0.0.1","root","1234","adminairport");
			$sql="CALL PA_buscarRuta('".$_POST['txtRuta']."')";
			$result=mysqli_query($conexion,$sql);

			while($mostrar=mysqli_fetch_array($result)){
			 ?>

			<tr>
				<td><?php echo $mostrar['Compania'] ?></td>
				<td><?php echo $mostrar['Destino'] ?></td>
				<td><?php echo $mostrar['Tarifa_MXN'] ?></td>
			</tr>
			<?php 
				}
		 		?>
			</table>