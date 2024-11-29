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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="../styles/stylemarcarcon.css">
    <title>Clínica | Agendamento</title>
</head>
<body>
    <header>
        <img src="../assets/images/LOGOCLINICA_semFundo.png" alt="Logo da Clinica" class="LogoClinica">Agendar consulta
        <div class="areauser">
        <p class="nomeuser">Olá, <?php echo $_SESSION['nome']?></p>
        <a href="../logout.php"><img src="../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
    </header>
    <section>
    <div class="container">
        <form class="cont-form" action="../php/novacon.php" method="POST">
            <div class="coluna">
            <div class="form-group">
                <label for="exampleInputPassword1">Especialidade</label>
            <select class="form-control" name="especialidade">
                <option value="Cardiologia">Cardiologia</option>
                <option value="Dermatologia">Dermatologia</option>
                <option value="Endocrinologia">Endocrinologia</option>
                <option value="Gastroenterologia">Gastroenterologia</option>
                <option value="Geriatria">Geriatria</option>
                <option value="Ginecologia">Ginecologia</option>
                <option value="Neurologia">Neurologia</option>
                <option value="Oftalmologia">Oftalmologia</option>
                <option value="Ortopedia">Ortopedia</option>
                <option value="Pediatria">Pediatria</option>
                <option value="Psiquiatria">Psiquiatria</option>
                <option value="Urologia">Urologia</option>
            </select>
        </div>
            <div class="form-group">
                <label for="date">Data da Consulta</label>
                <input type="date" class="form-control" id="date" name="datacon" required>
            </div>
            <div class="form-group">
                <label for="time">Hora da Consulta</label>
                <input type="time" class="form-control" id="time" name="hora" required>
            </div>
            <button type="submit" class="btnAgendar">Confirmar agendamento</button>
            </div>
        </form>
        <a href="menu.php"><button class="btnAgendar">Voltar</button></a>
    </div>
    </section>
</body>
</html>