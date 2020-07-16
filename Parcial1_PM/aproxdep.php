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

$result2=mysqli_query($conn,"select  
  sum(case when i.lugar_residencia = 01  then tmp.total>50 end) as la_paz,
  sum(case when i.lugar_residencia = 02 then tmp.total>50 end) as santa_cruz,
  sum(case when i.lugar_residencia = 03  then tmp.total>50 end) as cochabamba
  from identificador i INNER JOIN (SELECT m.ci, Sum(m.nota1 + m.nota2 + m.nota3)/3 AS Total 
                                 FROM materia m WHERE 1 
                                 GROUP by m.id) tmp
								 WHERE tmp.ci = i.CI");
echo "<br>";
echo "<table>";
echo "<tr><td><b>LA PAZ</b></td><td><b>Santa Cruz</b></td><td><b>Cochabamba</b></td></tr>";
while($fila2=mysqli_fetch_row($result2))
{
	echo "<tr>";
	echo "<td>".$fila2[0]."</td>";
	echo "<td>".$fila2[1]."</td>";
	echo "<td>".$fila2[2]."</td>";
	echo "</tr>";
}
echo "</table>";




//include "pie.inc.php";
?>