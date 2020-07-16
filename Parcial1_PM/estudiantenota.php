<?php
include "cabecera.inc.php";
?>

<?php
//include "Cabezara.inc.php";

$usu=$_SESSION["id_user"];

include "conexion.inc.php";
include "login.inc.php";
echo "<br>";
echo "<a href='estudiantenota.php'>Nota estudiantes</a>";
echo "<br>";
echo "<a href='aproxdep.php'>aprobado por departamento</a>";
echo "<br>";
echo "<br>01 = La Paz, 02 = Santa Cruz , 03 = Cochabamba";

$result2=mysqli_query($conn,"select m.ci, nmateria, tmp.lugar_residencia, Sum(nota1 + nota2 + nota3)/3 AS Total 
FROM materia m inner join (
select ci, lugar_residencia 
from identificador) tmp
WHERE m.CI=tmp.ci
GROUP by id
ORDER by tmp.lugar_residencia");


echo "<table>";
echo "<tr><td><b>CI</b></td><td><b>MATERIA</b></td><td><b>lugar de residencia</b></td><td><b>nota promedio</b></td></tr>";
while($fila2=mysqli_fetch_row($result2))
{
	echo "<tr>";
	echo "<td>".$fila2[0]."</td>";
	echo "<td>".$fila2[1]."</td>";
	echo "<td>".$fila2[2]."</td>";
	echo "<td>".$fila2[3]."</td>";
	echo "</tr>";
}
echo "</table>";



//include "pie.inc.php";
?>