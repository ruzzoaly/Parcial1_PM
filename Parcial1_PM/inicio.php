<?php
include "cabecera.inc.php";
?>

<?php
$usu=$_SESSION["id_user"];

include "conexion.inc.php";
include "login.inc.php";



echo "<br>";
echo "<a href='estudiantenota.php'>Nota estudiantes</a>";
echo "<br>";
echo "<a href='aproxdep.php'>aprobado por departamento</a>";
echo "<br>";




//include "pie.inc.php";
?>