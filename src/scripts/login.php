<?php
include "../scripts/conn.php";
session_start(); 




if($nivel == "1"){
    $sql = $pdo->prepare("SELECT * FROM diretoria WHERE email_corp_func = :email");
    $sql->bindValue(":email", $email);
    $sql->execute();
    $result1 = $sql->fetch(PDO::FETCH_ASSOC);

    if ($result1) {
        if ($result1['senha_func'] === $senha) {
            $_SESSION["nome_func_user"] = $result["nome"];
            $_SESSION["id_user"] = $result["id"];
            
        
            header("Location: ../diretoria/menu.php");
            exit();
        } else {
            session_destroy();
            header("Location: loginincorreto.html");
            exit();
        }
    }
}