<?php 
include "../php/validarlogin.php";

if ($_SESSION['nome'] == NULL) {
    header("Location: ../pages/index.html");
    session_destroy();
    exit();
}


$sql = $pdo->query("SELECT * FROM consultas WHERE fk_idpaciente = ".$_SESSION['id']);

$lista = [];
$lista = $sql->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="../styles/stylemarcarcon.css">
    <title>Clínica | Consultas</title>
</head>
<body>
    <header>
        <img src="../assets/images/LOGOCLINICA_semFundo.png" alt="Logo da Clinica" class="LogoClinica">Consultas marcadas
        <div class="areauser">
        <p class="nomeuser">Olá, <?php echo $_SESSION['nome']?></p>
        <a href="../logout.php"><img src="../assets/images/logout-svgrepo-com.svg" alt="Sair" class="logouticon"><p class="txtsair">Sair</p></a>
        </div>
    </header>
    <section>
        <table class="table table-striped">
        <tr class="cabecalhotable">
            <th>ESPECIALIDADE</th>
            <th>DATA</th>
            <th>HORA</th>
            <th>AÇÕES</th>
        </tr>        
        <?php foreach ($lista as $a): ?>
            <tr>
                <td><?php echo $a['especialidade']; ?></td>  
                <td><?=$a['data_consulta']; ?></td>
                <td><?php echo $a['hora_consulta']; ?></td>
                <td>
                    <a href="../php/cancelarconsulta.php?Id_consulta=<?=$a['id_consulta']; ?>" class="btn btn-excluir">Cancelar agendamento</a>
                </td>                
            </tr>                
        <?php endforeach; ?> 
        </table>
        <div class="divbtn">
        <a href="menu.php"><button class="btnAgendar">Voltar</button></a>
        </div>
    </section>
</body>
</html>