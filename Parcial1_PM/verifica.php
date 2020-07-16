<?php 
include "conexion.inc.php";
$usuario=$_GET["Nombre"];
$clave=$_GET["clave"];
session_start();


	$result=mysqli_query($conn,"Select * From usuario where ci='".$usuario."'");
	$fila=mysqli_fetch_row($result);

	$usuario2=$fila[0];
	$clave2=$fila[1];

if ($usuario==$usuario2 && $clave==$clave2 && $clave!='' && $usuario!='' ) {
	$_SESSION["id_user"]=$usuario2;
	
	header("Location: inicio.php?usuari=".$usuario);	}


else{
	$_SESSION["id_user"]="defecto";
	header("Location: index.php");
 	}
 ?>