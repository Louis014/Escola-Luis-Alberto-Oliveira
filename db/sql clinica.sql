create database clinica;
use clinica;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome varchar(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    sexo ENUM('Masculino', 'Feminino', 'Outro'),
    passw VARCHAR(10) NOT NULL
);

CREATE TABLE consultas (
	id_consulta INT auto_increment primary key,
    data_consulta date not null,
    hora_consulta time not null,
    especialidade varchar(100),
    fk_idpaciente INT not null,
    foreign key(fk_idpaciente) references pacientes(id)
);