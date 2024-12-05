<?php
include "../db/config.php";
include "../php/validarlogin.php";

$datacon = $_POST["datacon"] ?? "";
$hora = $_POST["hora"];
$especialidade = $_POST["especialidade"];
$idpaciente = $_SESSION['id'];


$sql = $pdo->prepare("INSERT INTO consultas (data_consulta, hora_consulta, especialidade, fk_idpaciente) 
                            VALUES (:datacon, :hora, :especialidade, :idpaciente)");
$sql->bindValue(":datacon", $datacon);
$sql->bindValue(":hora", $hora);
$sql->bindValue(":especialidade", $especialidade);
$sql->bindValue(":idpaciente", $idpaciente);
$sql->execute();

header("Location: ../pages/consulagendada.html");
exit();
