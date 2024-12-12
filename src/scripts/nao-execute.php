<?php
$mysqli = new mysqli('localhost', 'root', 'cimatec', 'elao');

if ($mysqli->connect_error) {
    die('Erro de conexão (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}

$batch_size = 1000; // Quantidade de registros por lote
$total_records = 5000; // Total de registros a serem inseridos

for ($batch = 0; $batch < $total_records / $batch_size; $batch++) {
    $values = [];
    for ($i = 1; $i <= $batch_size; $i++) {
        $index = $batch * $batch_size + $i;
        $nome_professor = "Professor" . str_pad($index, 7, '0', STR_PAD_LEFT);
        $materias = ['Matemática', 'Português', 'História', 'Geografia', 'Ciências'];
        $materia = $materias[$index % count($materias)];
        $email_pess_professor = "professor" . uniqid() . "@gmail.com";
        $email_corp_professor = "professor" . uniqid() . "@escola.com";
        $telefone_professor = "9" . str_pad(rand(10000000, 99999999), 8, '0', STR_PAD_LEFT);
        $cpf_professor = str_pad(rand(100000000, 999999999), 11, '0', STR_PAD_LEFT);
        $nascimento_professor = date('Y-m-d', strtotime('-' . rand(8000, 10000) . ' days'));
        $sexo_professor = $index % 2 == 0 ? 'M' : 'F';
        $senha_professor = "senha" . str_pad($index, 7, '0', STR_PAD_LEFT);

        $values[] = "('$nome_professor', '$materia', '$email_pess_professor', '$email_corp_professor', '$telefone_professor', '$cpf_professor', '$nascimento_professor', '$sexo_professor', '$senha_professor')";
    }

    $query = "INSERT INTO professores (nome_professor, materia, email_pess_professor, email_corp_professor, telefone_professor, cpf_professor, nascimento_professor, sexo_professor, senha_professor) VALUES " . implode(',', $values);

    if (!$mysqli->query($query)) {
        echo "Erro ao inserir registros do lote $batch: (" . $mysqli->errno . ") " . $mysqli->error . "\n";
    }
}

$mysqli->close();
?>