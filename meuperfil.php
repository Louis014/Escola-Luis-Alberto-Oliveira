<?php 
include "validarlogin.php";

if (!isset($_SESSION["nome"])) {
    header("Location: index.php");
    session_destroy();
    exit();
}


$sql = $pdo->query("SELECT * FROM pacientes WHERE id= ".$_SESSION['id']);

$lista = [];
$lista = $sql->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="../styles/stylemeuperfil.css">
  <title>Clínica | Meu perfil</title>
</head>

<body>
  <header>
    <img src="../assets/images/LOGOCLINICA_semFundo.png" alt="Logo da Clinica" class="LogoClinica">Meu perfil
  </header>
  <div class="container">
    <form class="cont-form" action="../php/atualizarperfil.php" method="POST">
      <div class="coluna">
      <?php foreach ($lista as $a): ?>
        <div class="form-group">
          <label for="exampleInputNome1">Nome</label>
          <input type="text" class="form-control" name="nome" id="exampleInputEmail1" placeholder="Nome" disabled value="<?=$a['nome']; ?>" required>
        </div>
        <div class="form-group">
          <label for="exampleInputNome1">Sobrenome</label>
          <input type="text" class="form-control" name="sobrenome" id="exampleInputEmail1" placeholder="Sobrenome" disabled value="<?=$a['sobrenome']; ?>" 
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Data de nascimento</label>
          <input type="date" class="form-control" name="data" id="exampleInputData1" placeholder="Data de nascimento" disabled value="<?=$a['data_nascimento']; ?>" 
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Endereço de e-mail</label>
          <input type="email" class="form-control" name="email" id="exampleInputEmail1" placeholder="Email" value="<?=$a['email']; ?>"  required>
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Telefone</label>
          <input type="number" class="form-control" name="telefone" minlength="11" maxlength="11"
            id="exampleInputTelefone1" placeholder="Telefone" value="<?=$a['telefone']; ?>"  required>
        </div>
      </div>
      <div class="coluna">
        <div class="form-group">
          <label for="exampleInputEmail1">Endereço</label>
          <input type="text" class="form-control" name="endereco" id="exampleInputEndereco1" placeholder="Endereço" value="<?=$a['endereco']; ?>" 
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Sexo</label>
          <input type="text" class="form-control" name="sexo" id="exampleInputEndereco1" placeholder="Sexo" disabled value="<?=$a['sexo']; ?>" 
            required>
        </div>
        <div class="form-group">
          <label for="exampleInputSenha1">Senha</label>
          <input type="password" class="form-control" name="senha" id="exampleInputEmail1" placeholder="Senha" value="<?=$a['passw']; ?>"required>
        </div>
        <div class="form-group">
          <label for="exampleInputSenha1">Confirme sua senha</label>
          <input type="password" class="form-control" name="confsenha" id="exampleInputEmail1" value="<?=$a['passw']; ?>"
            placeholder="Insira novamente e sua senha" required>
        </div>
        <?php endforeach; ?> 
        <div class="contBotao">
          <button type="submit" class="btnCadastrarse">Atualizar dados</button>
        </div>
      </div>
    </form>
    <a href="menu.php"><button class="btnCadastrarse">Voltar</button></a>
    <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe | 2024 ©</p>
  </div>

</body>

</html>