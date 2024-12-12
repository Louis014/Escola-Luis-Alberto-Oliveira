<?php
session_start();
require '../../scripts/conn.php';
//if (empty($_SESSION['session_id'])) {
// header('Location: ../../../');
// exit();
//}

if (1 > 0) {
  $sql = $pdo->prepare("SELECT * FROM diretoria WHERE id_func = :id_func");
  $sql->bindValue(':id_func', $_SESSION['session_id']);
  $sql->execute();

  if ($sql->rowCount() == 1) {
    $usuario = $sql->fetch(PDO::FETCH_BOTH);
    $nome_func = $usuario['nome_func'];
    $email_pess_func = $usuario['email_pess_func'];
    $email_corp_func = $usuario['email_corp_func'];
    $telefone_func = $usuario['telefone_func'];
    $cpf_func = $usuario['cpf_func'];
    $nascimento_func = $usuario['nascimento_func'];
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
  <title>ELAO | ver Mais</title>
</head>

<body>
  <header>
    <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Meu Perfil
    <div class="areauser">
      <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
      <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
        <p class="txtsair">Sair</p>
      </a>
    </div>
  </header>
  <div class="opcvoltar"><a href="../"><<-Voltar </a></div>
  <div class="container">
    <form class="form-cad" id="form-cad" action="../backend/atualizar-email.php" method="POST">
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputNome1">Nome completo</label>
          <input type="text" class="form-control" name="nome" id="nome" placeholder="Insira seu nome completo" value="<?php echo ($nome_func) ?>" disabled>
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">E-mail pessoal</label>
          <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail" value="<?php echo ($email_pess_func) ?>">
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">E-mail corporativo</label>
          <input type="text" class="form-control" name="email-corp" id="email-corp" placeholder="Insira seu e-mail" value="<?php echo ($email_corp_func) ?>" disabled>
        </div>
      </div>
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputEmail1">CPF</label>
          <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Insira seu CPF" value="<?php echo ($cpf_func) ?>" disabled>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Data de nascimento</label>
          <input type="text" class="form-control" name="data-nascimento" id="exampleInputEmail1" value="<?php echo ($nascimento_func) ?>" disabled>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone</label>
          <input type="text" class="form-control" name="telefone" value="<?php echo ($telefone_func) ?>" disabled>
        </div>
      </div>
      <button type="submit" class="btnExcluir" id="btn-update">Confirmar alteração de e-mail</button>
    </form>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>


  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>