<?php
require '../../scripts/conn.php';
session_start();

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$email_pess_func = $dados['email-pessoal'];
$id_func = $_SESSION['session_id'];


if (empty($email_pess_func)) {
    $retorna = ['status' => false, 'msg' => "O campo E-mail pessoal não pode estar. Por favor, revise e envie novamente."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit();
} else {
    $sql = $pdo->prepare("SELECT * FROM diretoria WHERE email_pess_func = :email_pess_func");
    $sql->bindValue(':email_pess_func', $email_pess_func);
    $sql->execute();

    if ($sql->rowCount() === 1) {
        $retorna = ['status' => false, 'msg' => "E-mail já cadastrado."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit();
    } else {
        $sql = $pdo->prepare("UPDATE diretoria SET email_pess_func = :email_pess_func WHERE id_func = :id_func");
        $sql->bindValue(':id_func', $id_func);
        $sql->bindValue(':email_pess_func', $email_pess_func);
        $sql->execute();

        if ($sql->rowCount() === 1) {
            $retorna = ['status' => true, 'msg' => "E-mail atualizado."];
            header('Content-Type: application/json');
            echo json_encode($retorna);
            exit();
        }
    }
}
