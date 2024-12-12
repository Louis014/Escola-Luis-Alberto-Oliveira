<?php
require '../../scripts/conn.php';
session_start();
if (empty($_SESSION['session_id'])) {
 header('Location: ../../../');
 exit();
}


$turma_aluno = $_GET['turma_aluno'];

if (empty($turma_aluno)) {
  header('Location: index.php');
} else {
  $sql = $pdo->prepare("SELECT * FROM alunos WHERE turma_aluno = :turma_aluno");
  $sql->bindValue(':turma_aluno', $turma_aluno);
  $sql->execute();
  $turma_6ano = $sql->fetchAll(PDO::FETCH_ASSOC);

  if (count($turma_6ano) > 0) {
    $_SESSION['turma'] = $turma_6ano;
  } else {
    $_SESSION['turma'] = [];
  }
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
  <title>ELAO | Professores</title>
</head>

<body>
  <header>
    <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Alunos
    <div class="areauser">
      <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
      <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
        <p class="txtsair">Sair</p>
      </a>
    </div>
  </header>
  <div class="opcvoltar"><a href="index.php"><<-Voltar </a></div>
  <div class="container">
    <table class="table">
      <thead>
        <tr>
          <th class="cabecalhotable" scope="col">Matrícula</th>
          <th class="cabecalhotable" scope="col">Nome</th>
          <th class="cabecalhotable" scope="col">Tel. Responsável</th>
        </tr>
      </thead>
      <?php if (count($turma_6ano) > 0): ?>
        <?php foreach ($turma_6ano as $turma): ?>
          <tbody>
            <tr>
              <td><?= htmlspecialchars($turma['id_aluno']) ?></td>
              <td><?= htmlspecialchars($turma['nome_aluno']) ?></td>
              <td><?= htmlspecialchars($turma['telefone_responsavel']) ?></td>
            <?php endforeach; ?>
          <?php endif; ?>
            </tr>
          </tbody>
    </table>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>


  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>