<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="stylematricula.css">
  <title>Luis Alberto Oliveira | Matricular</title>
</head>

<body>
  <header>
  <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Matricular
        <div class="areauser">
        <p class="nomeuser">Olá, BOTAR O NOME DA SESSION</p>
        <a href="../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
  </header>
  <div class="container">
    <form class="cont-form" action="../php/validarcad.php" method="POST">
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputNome1">Nome completo</label>
          <input type="text" class="form-control" name="nome" id="exampleInputEmail1" placeholder="Insira seu nome completo" required>
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">E-mail</label>
          <input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="Insira seu e-mail"
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">CPF</label>
          <input type="text" class="form-control" name="cpf" id="exampleInputData1" placeholder="Insira seu CPF"
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Endereço de e-mail</label>
          <input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="Email" required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone</label>
          <input type="number" class="form-control" name="telefone" minlength="11" maxlength="11"
            id="exampleInputTelefone1" placeholder="Telefone" required>
        </div>
      </div>
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputEmail1">Endereço</label>
          <input type="text" class="form-control" name="endereco" id="exampleInputEndereco1" placeholder="Endereço"
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Sexo</label>
          <select class="form-control" name="sexo" id="exampleInputSexo1">
            <option value="Masculino">Masculino</option>
            <option value="Feminino">Feminino</option>
            <option value="Outro">Outro</option>
          </select>
        </div>
        <div class="form-group">
          <label for="exampleInputSenha1">Senha</label>
          <input type="password" class="form-control" name="senha" id="exampleInputEmail1" placeholder="Senha" required>
        </div>
        <div class="form-group">
          <label for="exampleInputSenha1">Confirme sua senha</label>
          <input type="password" class="form-control" name="confsenha" id="exampleInputEmail1"
            placeholder="Insira novamente e sua senha" required>
        </div>
        <div class="contBotao">
          <button type="submit" class="btnMatricular">Matricular</button>
        </div>
      </div>
    </form>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
  </div>

</body>

</html>