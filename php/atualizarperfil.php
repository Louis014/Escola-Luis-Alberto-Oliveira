<?php 
    include "../php/validarlogin.php"; 
    
    $nome = $_POST["nome"];
    $sobrenome = $_POST["sobrenome"] ?? "";
    $data = $_POST["data"];
    $email = trim($_POST["email"] ?? '');
    $telefone = trim($_POST["telefone"]);
    $endereco = $_POST["endereco"];
    $sexo = trim($_POST["sexo"] ?? "");
    $senha = trim($_POST["senha"]); 
    $confsenha = trim($_POST["confsenha"]);
    
    if ($senha != $confsenha) {
        header("Location: ../pages/senhasdiferentesattperfil.html");
                exit();
    }
    else {
    $sql = $pdo->prepare("UPDATE pacientes SET nome = :nome , sobrenome = :sobrenome, data_nascimento = :data, email = :email, telefone = :telefone, endereco = :endereco, sexo = :sexo, passw = :senha WHERE id = ".$_SESSION['id']);
    $sql->bindValue(':nome',$nome);
    $sql->bindValue(':sobrenome',$sobrenome);
    $sql->bindValue(':data',$data);
    $sql->bindValue(':email',$email);
    $sql->bindValue(':telefone',$telefone);
    $sql->bindValue(':endereco',$endereco);
    $sql->bindValue(':sexo',$sexo);
    $sql->bindValue(':senha', $senha);
    $sql->execute();
    
    header("Location: ../pages/dadosatualizados.html");
    exit();
    }

?>