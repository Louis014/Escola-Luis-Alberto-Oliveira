<?php 
include "../php/validarlogin.php";

if ($_SESSION['nome'] == NULL) {
    header("Location: ../pages/index.html");
    session_destroy();
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles/stylemenu.css">
    <title>Clínica | Menu</title>
</head>
<body>
    <header>
        <img src="../assets/images/LOGOCLINICA_semFundo.png" alt="Logo da Clinica" class="LogoClinica">Menu
        <div class="areauser">
        <p class="nomeuser">Olá, <?php echo $_SESSION['nome']?></p>
        <a href="../logout.php"><img src="../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
    </header>
    <section>
        <a href="agendarconsulta.php"><button class="btnmenu"><img class="imgbtnmenu" src="../assets/images/add-svgrepo-com.svg">Marcar nova consulta</button></a>
        <a href="consultasmarcadas.php"><button class="btnmenu"><img class="imgbtnmenu" src="../assets/images/date-range-svgrepo-com.svg">Consultas marcadas</button></a>
        <a href="meuperfil.php"><button class="btnmenu"><img class="imgbtnmenu" src="../assets/images/user-svgrepo-com.svg">Meu perfil</button></a>
    </section>
</body>
</html>