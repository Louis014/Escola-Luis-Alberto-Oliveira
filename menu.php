<?php 
include "validarlogin.php";

if (!isset($_SESSION["nome"])) {
    header("Location: index.php");
    session_destroy();
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/styles/stylemenu.css">
    <title>Clínica | Menu</title>
</head>
<body>
    <header>
        <img src="assets/images/LogoEscolaSemFundo.png" alt="Escola Luis Alberto Oliveira" class="LogoEscola">Menu
        <div class="areauser">
        <p class="nomeuser">Olá, <?php echo $_SESSION['nome']?></p>
        <a href="logout.php"><img src="assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
    </header>
    <section>
        <a href="meuperfil.php"><button class="btnmenu"><img class="imgbtnmenu" src="assets/images/user-svgrepo-com.svg">Meu perfil</button></a>
    </section>
</body>
</html>