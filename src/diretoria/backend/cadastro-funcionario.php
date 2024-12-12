<?php
require '../../scripts/conn.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$nome = $dados['nome'];
$email = $dados['email-pessoal'];
$telefone = $dados['telefone'];
$cpf = $dados['cpf'];
$sexo = $dados['sexo'];
$data_nascimento = $dados['data-nascimento'];
$cargo = $dados['cargo'];

if (empty($nome) || empty($email) || empty($telefone) || empty($cpf) || empty($sexo) || empty($data_nascimento) || empty($cargo)) {
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
        $sql = $pdo->prepare("SELECT * FROM apoio WHERE cpf_func = :cpf_func AND email_pess_func = :email_pess_func");
        $sql->bindValue(':cpf_func', $cpf);
        $sql->bindValue(':email_pess_func', $email);
        $sql->execute();

        if ($sql->rowCount() === 1) {
            $retorna = ['status' => false, 'msg' => "Já existe um Funcionário cadastrado com esse E-mail ou CPF."];
            header('Content-Type: application/json');
            echo json_encode($retorna);
            exit();
        } else {
            $sql = $pdo->prepare("SELECT id_func FROM apoio ORDER BY id_func DESC LIMIT 1");
            $sql->execute();
            $usuario = $sql->fetch(PDO::FETCH_BOTH);
            $id_func = $usuario ? $usuario['id_func'] + 1 : 1;
            $email_corp_func = strtolower(str_replace(' ', '', trim($nome))) . strval($id_func) . '@elao.com';

            $sql = $pdo->prepare("INSERT INTO apoio (nome_func, email_pess_func, email_corp_func, telefone_func, cpf_func, sexo_func, nascimento_func, senha_func, cargo_func) VALUES (:nome_func, :email_pess_func, :email_corp_func, :telefone_func, :cpf_func, :sexo_func, :nascimento_func, :senha_func, :cargo_func) ");
            $sql->bindValue(':nome_func', $nome);
            $sql->bindValue(':email_pess_func', $email);
            $sql->bindValue(':email_corp_func', $email_corp_func);
            $sql->bindValue(':telefone_func', $telefone);
            $sql->bindValue(':cpf_func', $cpf);
            $sql->bindValue(':sexo_func', $sexo);
            $sql->bindValue(':nascimento_func', $data_nascimento);
            $sql->bindValue(':senha_func', $cpf);
            $sql->bindValue(':cargo_func', $cargo);
            $sql->execute();

            if ($sql->rowCount() === 1) {
                $retorna = [
                    'status' => true,
                    'msg' => "O Funcionário(a) foi cadastrado. Dados do Funcionário(a): E-mail: " . $email_corp_func . " Senha: CPF do Funcionário(a)"
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
