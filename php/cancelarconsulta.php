<?php 
    include "../db/config.php";

    $id = $_REQUEST["Id_consulta"];

    $sql = $pdo->prepare("DELETE from consultas WHERE id_consulta = :id");
    $sql->bindValue(':id',$id);
   
    $sql->execute();
    
header("Location: ../pages/consultacancelada.html");
exit();

?>