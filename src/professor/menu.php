<?php 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Luis Alberto Oliveira | Menu</title>
</head>
<body>
    <header>
        <img src="../../assets/images/LogoEscolaSemFundo.png" alt="Logo da Clinica" class="LogoClinica">Menu
        <div class="areauser">
        <p class="nomeuser">Olá, <?php echo isset($_SESSION['session_nome']) ? explode(' ', $_SESSION['session_nome'])[0] : 'Usuário'; ?></p>
        <a href="../scripts/sair.php"><img src="../../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
    </header>
    <section class= "botoes">
        <div class="colunabtn">
        <a href=""><button class="btnmenu"><img class="imgbtnmenu" src="../../assets/images/add-svgrepo-com.svg">Alunos</button></a>
        <a href=""><button class="btnmenu"><img class="imgbtnmenu" src="../../assets/images/date-range-svgrepo-com.svg">Professores</button></a>
        <a href=""><button class="btnmenu"><img class="imgbtnmenu" src="../../assets/images/notas.png">Notas</button></a>
        </div>
        <div class="colunabtn">
        <a href=""><button class="btnmenu"><img class="imgbtnmenu" src="../../assets/images/date-range-svgrepo-com.svg">Cronogramas de aulas</button></a>
        <a href=""><button class="btnmenu"><img class="imgbtnmenu" src="../../assets/images/user-svgrepo-com.svg">Meu perfil</button></a> 
        </div>
    </section>
</body>
</html>