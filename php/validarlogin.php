<?php
include "db/config.php";

session_start(); 

$email = $_POST["email"] ?? '';
$senha = $_POST["senha"] ?? '';

$sql = $pdo->prepare("SELECT * FROM pacientes WHERE email = :email");
$sql->bindValue(":email", $email);
$sql->execute();
$result = $sql->fetch(PDO::FETCH_ASSOC);

if ($result) {
    if ($result['passw'] === $senha) {
        $_SESSION["nome"] = $result["nome"];
        $_SESSION["email"] = $result["email"];
        $_SESSION["id"] = $result["id"];
        
        header("Location: menu.php");
        exit();
    } else {
        session_destroy();
        header("Location: loginincorreto.html");
        exit();
    }
}