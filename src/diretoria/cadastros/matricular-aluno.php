<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome = $dados['nome'];
$email = $dados['email'];
$cpf = $dados['cpf'];
$sexo = $dados['sexo'];
$turma = $dados['turma'];
$nome_responsavel = $dados['nome_responsavel'];
$telefone_responsavel = $dados['telefone_responsavel'];
$parentesco_responsavel = $dados['parentesco_responsavel'];
$nome_responsavel2 = $dados['nome_responsavel2'];
$telefone_responsavel2 = $dados['telefone_responsavel2'];
$parentesco_responsavel2 = $dados['parentesco_responsavel2'];

if (empty($nome) || empty($cpf) || empty($sexo) || empty($turma) || empty($nome_responsavel) || empty($telefone_responsavel) || empty($parentesco_responsavel) || empty($nome_responsavel2) || empty($telefone_responsavel2) || empty($parentesco_responsavel2)) {
    $retorna = ['status' => false, 'msg' => "Você não preencheu todos os campos obrigatórios. Por favor, revise e envie novamente."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit();
}

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $retorna = ['status' => false, 'msg' => "E-mail fornecido é inválido."];
    header('Content-Type: application/json');
    echo json_encode($retorna);
    exit();
}

try {
    
}
