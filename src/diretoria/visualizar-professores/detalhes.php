<?php
require '../../scripts/conn.php';
session_start();
if (empty($_SESSION['session_id'])) {
header('Location: ../../../');
exit();
}
$id_prof = $_GET['id_professor'];

$sql = $pdo->prepare("SELECT * FROM professores WHERE id_professor = :id_professor");
$sql->bindValue(':id_professor', $id_prof);
$sql->execute();

if ($sql->rowCount() == 1) {
    $usuario = $sql->fetch(PDO::FETCH_BOTH);
    $nome_professor = $usuario['nome_professor'];
    $materia = $usuario['materia'];
    $email_pess_professor = $usuario['email_pess_professor'];
    $email_corp_professor = $usuario['email_corp_professor'];
    $telefone_professor = $usuario['telefone_professor'];
    $cpf_professor = $usuario['cpf_professor'];
    $nascimento_professor = $usuario['nascimento_professor'];
    $sexo_professor = $usuario['sexo_professor'];
}


?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>ELAO | ver Mais</title>
</head>

<body>
    <header>
        <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Ver mais
        <div class="areauser">
            <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
            <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
                <p class="txtsair">Sair</p>
            </a>
        </div>
    </header>
    <div class="opcvoltar"><a href="index.php"><<-Voltar </a></div>
    <div class="container">
        <form class="form-cad" id="form-cad" action="../backend/excluir-professor.php" method="POST">
            <div class="coluna">
                <div class="form-group">
                    <label for="exampleInputNome1">Nome completo</label>
                    <input type="text" class="form-control" name="nome" id="nome" placeholder="Insira seu nome completo" value="<?php echo ($nome_professor) ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputNome1">E-mail pessoal</label>
                    <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail" value="<?php echo ($email_pess_professor) ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputNome1">E-mail corporativo</label>
                    <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail" value="<?php echo ($email_corp_professor) ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Insira seu CPF" value="<?php echo ($cpf_professor) ?>" disabled>
                </div>
            </div>
            <div class="coluna">
                <div class="form-group">
                    <label for="exampleInputEmail1">Matéria</label>
                    <input class="form-control" name="materia" id="materia" value="<?php echo ($materia) ?>" disabled>

                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Data de nascimento</label>
                    <input type="text" class="form-control" name="data-nascimento" id="exampleInputEmail1" value="<?php echo ($nascimento_professor) ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Telefone</label>
                    <input type="text" class="form-control" name="telefone" value="<?php echo ($telefone_professor) ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Sexo</label>
                    <input class="form-control" name="sexo" id="sexo" value="<?php echo ($sexo_professor) ?>" disabled>
                </div>
            </div>
        </form>
        <form action="../backend/excluir-professor.php" ethod="POST" class="excluir-professor" id="excluir-professor">
            <button type="submit" class="btnExcluir" id="#btn-excluir">Excluir</button>
            <input type="hidden" value="<?php echo !empty($_GET['id_professor']) ? $_GET['id_professor'] : null; ?>" id="id_prof" class="id_prof" name="id_prof">
            <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
        </form>
    </div>


    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>