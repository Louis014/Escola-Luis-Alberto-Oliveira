<?php 
include "validarlogin.php";

$_SESSION['nome'] = NULL;
$_SESSION['email'] = NULL;
$_SESSION['id'] = NULL;

session_destroy();

header("Location: index.php");
exit();
?>