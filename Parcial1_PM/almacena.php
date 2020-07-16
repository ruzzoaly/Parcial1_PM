<?php
//include "Cabezara.inc.php";
include "conexion.inc.php";
$operacion=$_GET["operacion"];

$ci=$_GET["ci"];
$nombre=$_GET["nombre"];
$paterno=$_GET["paterno"];

if ($operacion=='1') 
	$sql = "update alumnos set nombre='$nombre', paterno='$paterno' where ci='$ci'";
else 
	$sql = "insert into alumnos(ci,nombre,paterno) values('$ci', '$nombre', '$paterno')";
$result=mysqli_query($conn,$sql);

header("Location: EjemploBD.php");
?>