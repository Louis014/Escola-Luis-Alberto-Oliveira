<?php
require '../../scripts/conn.php';
session_start();
//if (empty($_SESSION['session_id'])) {
// header('Location: ../../../');
// exit();
//}
// TROCAR IF ABAIXO PELO ELSE


if (1 > 0) {
  $sql = $pdo->prepare("SELECT * FROM apoio");
  $sql->execute();
  $apoio = $sql->fetchAll(PDO::FETCH_ASSOC);

  if (count($apoio) > 0) {
    $_SESSION['apoio'] = $apoio;
  } else {
    $_SESSION['apoio'] = [];
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
  <title>ELAO | Funcionários</title>
</head>

<body>
  <header>
    <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Funcionários
    <div class="areauser">
      <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
      <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
        <p class="txtsair">Sair</p>
      </a>
    </div>
  </header>
  <div class="opcvoltar"><a href="../"><<-Voltar </a></div>
  <div class="container">
    <table class="table">
      <thead>
        <tr>
          <th class="cabecalhotable" scope="col">Id</th>
          <th class="cabecalhotable" scope="col">Nome</th>
          <th class="cabecalhotable" scope="col">Cargo</th>
        </tr>
      </thead>
      <?php if (count($apoio) > 0): ?>
        <?php foreach ($apoio as $func): ?>
          <tbody>
            <tr>
              <td><?= htmlspecialchars($func['id_func']) ?></td>
              <td><?= htmlspecialchars($func['nome_func']) ?></td>
              <td><?= htmlspecialchars($func['cargo_func']) ?></td>
              <td><a href="detalhes.php?id_func=<?= $a = $func['id_func']; ?>"><button class="btnVerMais">Ver +</button></a></td>
            <?php endforeach; ?>
          <?php endif; ?>
          </tbody>
    </table>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>


  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>