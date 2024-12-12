<?php
session_start();
//if (!empty($_SESSION['session_id'])) {
//  header('Location: src/diretoria/');
//exit();
//}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>ELAO | Login</title>
</head>

<body>
    <div class="container">
        <img src="assets/images/LogoEscola.jpg" alt="LogoClinica" class="logoLogin">
        <h2 class="titulo">LOGIN</h2><br>
        <form class="cont-form" id="cont-form" action="src/scripts/login.php" method="POST">
            <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="E-mail" value="pedruuu291@gmail.com">
            </div>
            <div class="form-group">
                <input type="senha" class="form-control" name="senha" id="senha"
                    placeholder="Senha" value="Chicote1@">
            </div>
            <button type="submit" class="btnLogin">Entrar</button>
        </form>
        <p class="creds">Powered by Luis Filipe & Pedro Silva 2024 ©</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="assets/js/script.js"></script>
</body>

</html>