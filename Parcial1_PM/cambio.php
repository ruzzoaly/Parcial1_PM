<?php 
include "conexion.inc.php";
$color=$_GET["color"];
$usu=$_SESSION["id_user"];
	$result=mysqli_query($conn,"update `usuario`set `color`='".$color."' where ci='".$usu."'");
header("Location: inicio.php");	

 ?>