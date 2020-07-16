<?php

$result=mysqli_query($conn,"Select * From usuario where ci='".$usu."'");
$fila=mysqli_fetch_row($result);
$result2=mysqli_query($conn,"Select * From identificador where ci='".$usu."'");
$fila2=mysqli_fetch_row($result2);


	echo "<div id='".$fila[3]."'</div>";
echo "<div id='user'>";
echo "<h5>Bienvenido <br>".$fila2[1];
echo "<img src='img/".$fila[2]."'width=80>";
echo "<a href='index.php' style='color:#FFFFFF  '>Salir</a>";
		echo "<form action='cambio.php' method='GET'>";
		echo "<Select class='form-control form-control-sm' name='color' value=''>";
		echo "<option value='blanco'>Blanco</option>";
		echo "<option value='azul'>Azul</option>";
		echo "<option value='rojo'>Rojo</option>";
		echo "<option value='verde'>verde</option>";
		echo "<option value='gris'>gris</option>";
		echo "</Select>";
		echo "<button class='button' type='submit'  name='aceptar' value='aceptar'>acepta</button>";
		echo "</form>";

echo "</div>";
?>