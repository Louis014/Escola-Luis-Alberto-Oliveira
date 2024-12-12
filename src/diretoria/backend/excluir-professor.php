<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$id_professor = $dados['id_prof'];

$sql = $pdo->prepare("SELECT * FROM professores WHERE id_professor = :id_professor");
$sql->bindValue(':id_professor', $id_professor);
$sql->execute();

if ($sql->rowCount() == 1) {
    $sql = $pdo->prepare("DELETE FROM professores WHERE id_professor = :id_professor");
    $sql->bindValue(':id_professor', $id_professor);
    $sql->execute();

    $sql = $pdo->prepare("SELECT * FROM professores WHERE id_professor = :id_professor");
    $sql->bindValue(':id_professor', $id_professor);
    $sql->execute();

    if ($sql->rowCount() === 1) {
        $retorna = ['status' => false, 'msg' => "Erro ao excluir professor."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit;
    } else {
        $retorna = ['status' => true, 'msg' => "Professor excluido."];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit;
    }
} else {
    $retorna = ['status' => false, 'msg' => "Professor não cadastrado."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit;
}
