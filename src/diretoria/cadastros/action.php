<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome = $dados['nome'];
$email = $dados['email-pessoal'];
$cpf = $dados['cpf'];
$sexo = $dados['sexo'];
$turma = $dados['turma'];
$nome_responsavel = $dados['nome-responsavel'];
$telefone_responsavel = $dados['telefone-responsavel'];
$parentesco_responsavel = $dados['parentesco-responsavel'];
$nome_responsavel2 = $dados['nome-responsavel2'];
$telefone_responsavel2 = $dados['telefone-responsavel2'];
$parentesco_responsavel2 = $dados['parentesco-responsavel2'];

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

if (!empty($cpf)) {
    try {
        $sql = $pdo->prepare("SELECT * FROM alunos WHERE cpf_aluno = :cpf_aluno");
        $sql->bindValue(':cpf_aluno', $cpf);
        $sql->execute();

        if ($sql->rowCount() === 1) {
            $retorna = ['status' => false, 'msg' => "Já existe um aluno cadastrado com esse CPF."];
            header('Content-Type: application/json');
            echo json_encode($retorna);
            exit();
        } else {
            $sql = $pdo->prepare("SELECT id_aluno FROM alunos ORDER BY id_aluno DESC LIMIT 1");
            $sql->execute();
            $usuario = $sql->fetch(PDO::FETCH_BOTH);
            $id_aluno = $usuario ? $usuario['id_aluno'] + 1 : 1;
            $email_estd = strtolower(trim($nome)) . strval($id_aluno);


            $sql = $pdo->prepare("INSERT INTO alunos (nome_aluno, email_pess_aluno, email_estd_aluno, cpf_aluno, sexo_aluno, turma_aluno, nome_responsavel, telefone_responsavel, parentesco_responsavel, nome_responsavel2, telefone_responsavel2, parentesco_responsavel2, senha_aluno) VALUES (:nome_aluno, :email_pess_aluno, email_estd_aluno, :cpf_aluno, :sexo_aluno, :turma_aluno, :nome_responsavel, :telefone_responsavel, :parentesco_responsavel, :nome_responsavel2, :telefone_responsavel2, :parentesco_responsavel2, :senha_aluno)");
            $sql->bindValue(':nome_aluno', $nome);
            $sql->bindValue(':email_pess_aluno', $email);
            $sql->bindValue(':email_estd_aluno', $email_estd);
            $sql->bindValue(':cpf', $cpf);
            $sql->bindValue(':sexo', $sexo);
            $sql->bindValue(':turma', $turma);
            $sql->bindValue(':nome_responsavel', $nome_responsavel);
            $sql->bindValue(':telefone_responsavel', $telefone_responsavel);
            $sql->bindValue(':parentesco_responsavel', $parentesco_responsavel);
            $sql->bindValue(':nome_responsavel2', $nome_responsavel2);
            $sql->bindValue(':telefone_responsavel2', $telefone_responsavel2);
            $sql->bindValue(':parentesco_responsavel2', $parentesco_responsavel2);
            $sql->bindValue(':senha_aluno', $cpf);
            $sql->execute();
        }
    } catch (PDOException $e) {
        $retorna = ['status' => false, 'msg' => "Ocorreu um erro ao tentar fazer o login: " . $e->getMessage()];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit();
    }
}
