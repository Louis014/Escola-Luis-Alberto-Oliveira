<?php
include "../scripts/conn.php";
session_start();

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$email = $dados['email'];
$senha = $dados['senha'];

if (empty($email) || empty($senha)) {
    $retorna = ['status' => false, 'msg' => "Todos os campos devem ser preenchidos."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit();
} else {
    $sql = $pdo->prepare("SELECT * FROM diretoria WHERE email_pess_func = :email_pess_func AND senha_func = :senha_func");
    $sql->bindValue(':email_pess_func', $email);
    $sql->bindValue(':senha_func', $senha);
    $sql->execute();

    if ($sql->rowCount() == 1) {
        $usuario = $sql->fetch(PDO::FETCH_BOTH);
        $_SESSION['session_id'] = $usuario['id_func'];
        $_SESSION['session_nome'] = $usuario['nome_func'];
        $_SESSION['session_email'] = $usuario['email_pess_func'];
        $_SESSION['session_auth'] = true;

        $retorna = ['status-dir' => true, 'msg' => "Bem-vindo à nossa plataforma, " . htmlspecialchars(explode(' ', $usuario['nome_func'])[0]) . "!"];
        header('Content-Type: application/json');
        echo json_encode($retorna);
    } else {
        $retorna = ['status' => false, 'msg' => "Usuário ou senha incorretos ou usuario não existe."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit();
    }
}