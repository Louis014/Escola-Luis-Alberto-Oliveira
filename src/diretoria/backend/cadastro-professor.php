<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome = $dados['nome'];
$materia = $dados['materia'];
$email = $dados['email-pessoal'];
$cpf = $dados['cpf'];
$sexo = $dados['sexo'];
$data_nascimento = $dados['data-nascimento'];
$telefone = $dados['telefone'];

if (empty($nome) || empty($email) || empty($cpf) || empty($sexo) || empty($materia) || empty($data_nascimento) || empty($telefone)) {
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
        $sql = $pdo->prepare("SELECT * FROM professores WHERE cpf_professor = :cpf_professor");
        $sql->bindValue(':cpf_professor', $cpf);
        $sql->execute();

        if ($sql->rowCount() === 1) {
            $retorna = ['status' => false, 'msg' => "Já existe um Professor(a) cadastrado com esse CPF."];
            header('Content-Type: application/json');
            echo json_encode($retorna);
            exit();
        } else {
            $sql = $pdo->prepare("SELECT id_professor FROM professores ORDER BY id_professor DESC LIMIT 1");
            $sql->execute();
            $usuario = $sql->fetch(PDO::FETCH_BOTH);
            $id_professor = $usuario ? $usuario['id_professor'] + 1 : 1;
            $email_corp_professor = strtolower(str_replace(' ', '', trim($nome))) . strval($id_professor) . '@elao.com';

            $sql = $pdo->prepare("INSERT INTO professores (nome_professor, email_pess_professor, email_corp_professor, cpf_professor, sexo_professor, materia, nascimento_professor, telefone_professor, senha_professor) VALUES (:nome_professor, :email_pess_professor, :email_corp_professor, :cpf_professor, :sexo_professor, :materia, :nascimento_professor, :telefone_professor, :senha_professor) ");
            $sql->bindValue(':nome_professor', $nome);
            $sql->bindValue(':email_pess_professor', $email);
            $sql->bindValue(':email_corp_professor', $email_corp_professor);
            $sql->bindValue(':cpf_professor', $cpf);
            $sql->bindValue(':sexo_professor', $sexo);
            $sql->bindValue(':materia', $materia);
            $sql->bindValue(':nascimento_professor', $data_nascimento);
            $sql->bindValue(':telefone_professor', $telefone);
            $sql->bindValue(':senha_professor', $cpf);
            $sql->execute();

            if ($sql->rowCount() === 1) {
                $retorna = [
                    'status' => true,
                    'msg' => "O Professor(a) foi matriculado. Dados do Professor(a): E-mail: " . $email_estd . " Senha: CPF do Professor(a)"
                ];

                header('Content-Type: application/json');
                echo json_encode($retorna);
                exit();
            }
        }
    } catch (PDOException $e) {
        $retorna = ['status' => false, 'msg' => "Ocorreu um erro ao tentar fazer o login: " . $e->getMessage()];
        header('Content-Type: application/json');
        echo json_encode($retorna);
        exit();
    }
}
