<?php
    include "../db/config.php";

    $nome = $_POST["nome"];
    $sobrenome = $_POST["sobrenome"] ?? "";
    $data = $_POST["data"];
    $email = trim($_POST["email"] ?? '');
    $telefone = $_POST["telefone"];
    $endereco = $_POST["endereco"];
    $sexo = trim($_POST["sexo"] ?? "");
    $senha = $_POST["senha"]; 
    $confsenha = $_POST["confsenha"];

    $sql = $pdo->prepare("SELECT * FROM pacientes WHERE email = :email");
        $sql->bindValue(":email", $email);
        $sql->execute();
        $result = [];
        $result = $sql->fetchAll(PDO::FETCH_ASSOC);

    if (count($result) > 0) {
        header("Location: ../pages/emailjaexiste.html");
                exit();
    }
    elseif ($senha != $confsenha) {
        header("Location: ../pages/senhasdiferentes.html");
                exit();
    }
    else {
        $sql = $pdo->prepare("INSERT INTO pacientes (nome, sobrenome, data_nascimento, email, telefone, endereco, sexo, passw) VALUES (:nome, :sobrenome, :data_nascimento, :email, :telefone, :endereco, :sexo, :senha)");
                $sql->bindValue(":nome", $nome);
                $sql->bindValue(":sobrenome", $sobrenome);
                $sql->bindValue(":data_nascimento", $data);
                $sql->bindValue(":email", $email);
                $sql->bindValue(":telefone", $telefone);
                $sql->bindValue(":endereco",  $endereco);
                $sql->bindValue(":sexo",  $sexo);
                $sql->bindValue(":senha", $senha);

                $sql->execute();

                header("Location: ../pages/cadastrofeito.html");
                exit();
    }
?>