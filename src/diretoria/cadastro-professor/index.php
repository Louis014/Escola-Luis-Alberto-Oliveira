<?php
session_start();
if (empty($_SESSION['session_id'])) {
    header('Location: ../../../');
    exit();
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
  <title>ELAO | Adicionar Professor</title>
</head>

<body>
  <header>
    <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Adicionar Professor
    <div class="areauser">
      <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
      <a href="../../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
        <p class="txtsair">Sair</p>
      </a>
    </div>
  </header>
  <div class="opcvoltar"><a href="../"><<-Voltar</a></div>
  <div class="container">
    <form class="form-cad" id="form-cad" action="../backend/cadastro-professor.php" method="POST">
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputNome1">Nome completo*</label>
          <input type="email" class="form-control" name="nome" id="nome" placeholder="Insira seu nome completo">
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">E-mail*</label>
          <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">CPF*</label>
          <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Insira seu CPF" maxlength=11 minlength=11>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Gênero*</label>
          <select class="form-control" name="sexo" id="sexo">
            <option value="">Selecione uma gênero...</option> 
            <option value="M">Masculino</option>
            <option value="F">Feminino</option>
            <option value="O">Outro</option>
          </select>
        </div>
      </div>
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputEmail1">Matéria*</label>
          <select class="form-control" name="materia" id="materia">
            <option value="">Selecione uma matéria...</option>
            <option value="Arte">Artes</option>
            <option value="Ciências">Ciências</option>
            <option value="Educacao_Fisica">Educação Física</option>
            <option value="Geografia">Geografia</option>
            <option value="Historia">História</option>
            <option value="Ingles">Inglês</option>
            <option value="Ensino-Religioso">Ensino Religioso</option>
            <option value="Espanhol">Espanhol</option>
            <option value="Portugues">Português</option>
            <option value="Matematica">Matemática</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Data de nascimento*</label>
          <input type="date" class="form-control" name="data-nascimento" id="exampleInputEmail1">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone*</label>
          <input type="text" class="form-control" name="telefone" minlength="11" maxlength="11"
            id="exampleInputTelefone1" placeholder="Telefone">
        </div>

        <div class="contBotao">
          <button type="submit" class="btnMatricular">Cadastrar</button>
        </div>
      </div>
    </form>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>


  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>