<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$id_func = $dados['id_func'];

$sql = $pdo->prepare("SELECT * FROM apoio WHERE id_func = :id_func");
$sql->bindValue(':id_func', $id_func);
$sql->execute();

if ($sql->rowCount() == 1) {
    $sql = $pdo->prepare("DELETE FROM apoio WHERE id_func = :id_func");
    $sql->bindValue(':id_func', $id_func);
    $sql->execute();

    $sql = $pdo->prepare("SELECT * FROM apoio WHERE id_func = :id_func");
    $sql->bindValue(':id_func', $id_func);
    $sql->execute();

    if ($sql->rowCount() === 1) {
        $retorna = ['status' => false, 'msg' => "Erro ao excluir funcionário."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit;
    } else {
        $retorna = ['status' => true, 'msg' => "Funcionário excluido."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit;
    }
} else {
    $retorna = ['status' => false, 'msg' => "Funcionário não cadastrado."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit;
}
