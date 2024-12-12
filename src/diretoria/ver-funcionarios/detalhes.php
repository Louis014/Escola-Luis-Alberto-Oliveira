<?php
session_start();
//if (empty($_SESSION['session_id'])) {
// header('Location: ../../../');
// exit();
//}

//require 'configPDO.php';
//$id = $_REQUEST["id_professor"];
//$dados = []; 
//$sql = $pdo->prepare("SELECT * FROM tbprodutos WHERE Id_Produto = :id");
//$sql->bindValue(":id", $id);
//$sql->execute();
//$dados = $sql->fetch(PDO::FETCH_ASSOC);
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
                    <input type="text" class="form-control" name="nome" id="nome" placeholder="Insira seu nome completo" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputNome1">E-mail pessoal</label>
                    <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputNome1">E-mail corporativo</label>
                    <input type="text" class="form-control" name="email-pessoal" id="email-pessoal" placeholder="Insira seu e-mail" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">CPF</label>
                    <input type="text" class="form-control" name="cpf" id="cpf" placeholder="Insira seu CPF" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
            </div>
            <div class="coluna">
                <div class="form-group">
                    <label for="exampleInputEmail1">Matéria</label>
                    <input class="form-control" name="materia" id="materia" value="ALTERAR PARA OQ VEM DO BANCO" disabled>

                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Data de nascimento</label>
                    <input type="text" class="form-control" name="data-nascimento" id="exampleInputEmail1" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Telefone</label>
                    <input type="text" class="form-control" name="telefone" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Sexo</label>
                    <input class="form-control" name="sexo" id="sexo" value="ALTERAR PARA OQ VEM DO BANCO" disabled>
                </div>
            </div>
        </form>
        <button type="submit" class="btnExcluir">Excluir</button>
        <p class="creds" style="margin-top: 1rem;">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
    </div>


    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>