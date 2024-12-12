<?php
session_start();
//if (empty($_SESSION['session_id'])) {
 // header('Location: ../../../');
 // exit();
//}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <title>Luis Alberto Oliveira | Matricular</title>
</head>

<body>
  <header>
    <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Matricular
    <div class="areauser">
      <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
      <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
        <p class="txtsair">Sair</p>
      </a>
    </div>
  </header>
  <div class="opcvoltar"><a href="../"><<-Voltar</a></div>
  <div class="container">
    <form class="form-cad" id="form-cad" action="../backend/cadastro-aluno.php" method="POST">
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputNome1">Nome completo*</label>
          <input type="text" class="form-control" name="nome" id="nome" placeholder="Insira seu nome completo">
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">E-mail*</label>
          <input type="email" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">CPF*</label>
          <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Insira seu CPF" maxlength=11 minlength=11>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Gênero*</label>
          <select class="form-control" name="sexo" id="sexo">
            <option value="">Selecione o sexo do aluno...</option>
            <option value="M">Masculino</option>
            <option value="F">Feminino</option>
            <option value="O">Outro</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Turma*</label>
          <select class="form-control" name="turma" id="turma">
            <option value="">Selecione a turma do aluno...</option>
            <option value="6">6º Ano</option>
            <option value="7">7º Ano</option>
            <option value="8">8º Ano</option>
            <option value="9">9º Ano</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Nome do 1º responsável*</label>
          <input type="text" class="form-control" name="nome-responsavel" id="exampleInputEmail1" placeholder="Insira o nome do responsável">
        </div>
      </div>
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone do 1º responsável*</label>
          <input type="text" class="form-control" name="telefone-responsavel" minlength="11" maxlength="11"
            id="exampleInputTelefone1" placeholder="Telefone do 1º responsável">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Parentesco do 1º responsável*</label>
          <input type="text" class="form-control" name="parentesco-responsavel" id="exampleInputEndereco1" placeholder="Pai, Mãe, Avó, Avô...">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Nome do 2º responsável*</label>
          <input type="text" class="form-control" name="nome-responsavel2" id="exampleInputEmail1" placeholder="Insira o nome do responsável">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone do 2º responsável*</label>
          <input type="text" class="form-control" name="telefone-responsavel2" minlength="11" maxlength="11"
            id="exampleInputTelefone1" placeholder="Telefone do 2º responsável">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Parentesco do 2º responsável*</label>
          <input type="text" class="form-control" name="parentesco-responsavel2" id="exampleInputEndereco1" placeholder="Pai, Mãe, Avó, Avô...">
        </div>
        <div class="contBotao">
          <button type="submit" class="btnMatricular">Matricular</button>
        </div>
      </div>
    </form>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>


  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>