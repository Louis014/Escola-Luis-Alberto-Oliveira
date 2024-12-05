<?php
include "../db/config.php";

session_start(); 

$email = $_POST["email"] ?? '';
$senha = $_POST["senha"] ?? '';
$nivel = $_POST["nivel"] ?? '';

if($nivel == "1"){
    $sql = $pdo->prepare("SELECT * FROM diretoria WHERE email_corp_func = :email");
    $sql->bindValue(":email", $email);
    $sql->execute();
    $result1 = $sql->fetch(PDO::FETCH_ASSOC);

    if ($result1) {
        if ($result1['senha_func'] === $senha) {
            $_SESSION["nome_func"] = $result["nome"];
            $_SESSION["id"] = $result["id"];
        
            header("Location: ../diretoria/menu.php");
            exit();
        } else {
            session_destroy();
            header("Location: loginincorreto.html");
            exit();
        }
    }

}