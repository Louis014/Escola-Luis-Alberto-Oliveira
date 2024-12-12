<?php
session_start();
//if (empty($_SESSION['session_id'])) {
//  header('Location: ../../');
//  exit();
//}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>ELAO | Menu</title>
</head>

<body>
    <header>
        <img src="../../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Ver Alunos
        <div class="areauser">
            <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
            <a href="../scripts/sair.php"><img src="../../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon">
                <p class="txtsair">Sair</p>
            </a>
        </div>
    </header>
    <div class="opcvoltar"><a href="../"><<-Voltar </a></div>
    <section class="botoes">
        <div class="colunabtn">
            <a href="detalhes.php?turma_aluno=<?= $a = 6 ?>"><button class="btnmenu">6º ANO</button></a>
            <a href="detalhes.php?turma_aluno=<?= $a = 7 ?>"><button class="btnmenu">7º ANO</button></a>

        </div>
        <div class="colunabtn">
            <a href="detalhes.php?turma_aluno=<?= $a = 8 ?>"><button class="btnmenu">8º ANO</button></a>
            <a href="detalhes.php?turma_aluno=<?= $a = 9 ?>"><button class="btnmenu">9º ANO</button></a>
        </div>
    </section>
</body>

</html>