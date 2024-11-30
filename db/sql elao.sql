create database elao;
use elao;

create table diretoria(
    id_func bigint auto_increment primary key,
    nome_func varchar(70) not null,
    sobrenome_func varchar(150) not null,
    email_pess_func varchar(100) not null unique,
    email_corp_func varchar(100) not null unique,
    telefone_func int not null,
    cpf_func varchar(11) not null unique,
    nascimento_func date not null,
    senha_func varchar(25) not null
);

create table professores(
    id_professor int auto_increment primary key,
    nome_professor varchar(200) not null,
    sobrenome_professor varchar(150) not null,
    materia varchar(50) not null,
    email_pess_professor varchar(100) not null unique,
    email_corp_professor varchar(100) not null unique,
    telefone_professor bigint not null,
    cpf_professor varchar(11) not null unique,
    nascimento_professor date not null,
    nivel_user int default(2),
    senha_professor varchar(25) not null
);
    
create table alunos(
    id_aluno bigint auto_increment primary key,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    email_pess_aluno varchar(100),
    email_estd_aluno varchar(100),
    cpf_aluno varchar(11) not null unique,
    nome_resposavel1 varchar(150) not null,
    telefone_resposvael1 bigint not null,
    parentesco_responsavel1 varchar(50) not null,
    nome_resposavel2 varchar(150),
    telefone_resposvael2 bigint,
    parentesco_responsavel2 varchar(50),
    nivel_user int default(3),
    turma_aluno int not null,
    senha_aluno varchar(25) not null
);

-- Tabela de notas de Arte com a coluna 'turma'
CREATE TABLE notas_Arte (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Ciências com a coluna 'turma'
CREATE TABLE notas_Ciencias (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Educação Física com a coluna 'turma'
CREATE TABLE notas_Educacao_Fisica (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Ensino Religioso com a coluna 'turma'
CREATE TABLE notas_Ensino_Religioso (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Espanhol com a coluna 'turma'
CREATE TABLE notas_Espanhol (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Geografia com a coluna 'turma'
CREATE TABLE notas_Geografia (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de História com a coluna 'turma'
CREATE TABLE notas_Historia (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Inglês com a coluna 'turma'
CREATE TABLE notas_Ingles (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Matemática com a coluna 'turma'
CREATE TABLE notas_Matematica (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);

-- Tabela de notas de Português com a coluna 'turma'
CREATE TABLE notas_Portugues (
    id_aluno_fk BIGINT PRIMARY KEY,
    nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(150) not null,
    av1 FLOAT NOT NULL,
    av2 FLOAT NOT NULL,
    av3 FLOAT NOT NULL,
    media FLOAT,
    turma INT NOT NULL,
    foreign key(id_aluno_fk) references alunos(id_aluno)
);



create table apoio(
    id_func bigint auto_increment primary key,
    nome_func varchar(70) not null,
    sobrenome_func varchar(150) not null,
    email_pess_func varchar(100) not null unique,
    email_corp_func varchar(100) not null unique,
    telefone_func bigint not null,
    cpf_func varchar(11) not null unique,
    nascimento_func date not null,
    senha_func varchar(25) not null,
    cargo_func varchar(100) not null
);

create table cron_6ano(
    id_dia int auto_increment primary key,
    dia_semana varchar(20) not null,
    a7h05 varchar(50) not null,
    a7h50 varchar(50) not null,
    a8h35 varchar(50) not null,
    a9h20 varchar(50) not null,
    a10h05 varchar(50) not null,
    a10h25 varchar(50) not null,
    a11h10 varchar(50) not null
);

create table cron_7ano(
    id_dia int auto_increment primary key,
    dia_semana varchar(20) not null,
    a7h05 varchar(50) not null,
    a7h50 varchar(50) not null,
    a8h35 varchar(50) not null,
    a9h20 varchar(50) not null,
    a10h05 varchar(50) not null,
    a10h25 varchar(50) not null,
    a11h10 varchar(50) not null
);

create table cron_8ano(
    id_dia int auto_increment primary key,
    dia_semana varchar(20) not null,
    a7h05 varchar(50) not null,
    a7h50 varchar(50) not null,
    a8h35 varchar(50) not null,
    a9h20 varchar(50) not null,
    a10h05 varchar(50) not null,
    a10h25 varchar(50) not null,
    a11h10 varchar(50) not null
);

create table cron_9ano(
    id_dia int auto_increment primary key,
    dia_semana varchar(20) not null,
    a7h05 varchar(50) not null,
    a7h50 varchar(50) not null,
    a8h35 varchar(50) not null,
    a9h20 varchar(50) not null,
    a10h05 varchar(50) not null,
    a10h25 varchar(50) not null,
    a11h10 varchar(50) not null
);

-- Gatilho para inserir aluno nas tabelas de notas
DELIMITER $$

CREATE TRIGGER after_insert_aluno
AFTER INSERT ON alunos
FOR EACH ROW
BEGIN
    -- Espera 1 segundo para evitar problemas de execução simultânea
    DO SLEEP(1);

    -- Inserção na tabela de notas de Arte
INSERT INTO notas_Arte (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Ciências
INSERT INTO notas_Ciencias (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Educação Física
INSERT INTO notas_Educacao_Fisica (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Ensino Religioso
INSERT INTO notas_Ensino_Religioso (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Espanhol
INSERT INTO notas_Espanhol (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Geografia
INSERT INTO notas_Geografia (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de História
INSERT INTO notas_Historia (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Inglês
INSERT INTO notas_Ingles (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Matemática
INSERT INTO notas_Matematica (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);

DO SLEEP(1);
-- Inserção na tabela de notas de Português
INSERT INTO notas_Portugues (id_aluno_fk, nome_aluno, sobrenome_aluno, av1, av2, av3, media, turma) 
VALUES (NEW.id_aluno, NEW.nome_aluno, NEW.sobrenome_aluno, 0, 0, 0, NULL, NEW.turma_aluno);


END$$

DELIMITER ;

-- Gatilho para calcular a média quando as notas forem alteradas
DELIMITER $$

INSERT INTO professores 
(nome_professor, sobrenome_professor, materia, email_pess_professor, email_corp_professor, telefone_professor, cpf_professor, nascimento_professor, senha_professor) 
VALUES
('Ana', 'Silva', 'Arte', 'ana.silva@gmail.com', 'ana.silva1@elao.com', '11998765432', '12345678900', '1985-03-12', 'senha123'),
('Mariana', 'Costa', 'Ciências', 'mariana.costa@gmail.com', 'mariana.costa2@elao.com', '31987654321', '34567890122', '1983-01-15', 'senha123'),
('Roberto', 'Pereira', 'Educação Física', 'roberto.pereira@gmail.com', 'roberto.pereira3@elao.com', '41987654321', '45678901233', '1990-05-20', 'senha123'),
('Fernanda', 'Almeida', 'Ensino Religioso', 'fernanda.almeida@gmail.com', 'fernanda.almeida4@elao.com', '51987654321', '56789012344', '1987-08-30', 'senha123'),
('Paulo', 'Santos', 'Espanhol', 'paulo.santos@gmail.com', 'paulo.santos5@elao.com', '61987654321', '67890123455', '1982-12-10', 'senha123'),
('Lucas', 'Ferreira', 'Geografia', 'lucas.ferreira@gmail.com', 'lucas.ferreira6@elao.com', '71987654321', '78901234566', '1989-11-22', 'senha123'),
('Juliana', 'Lima', 'História', 'juliana.lima@gmail.com', 'juliana.lima7@elao.com', '81987654321', '89012345677', '1993-04-18', 'senha123'),
('Ricardo', 'Souza', 'Inglês', 'ricardo.souza@gmail.com', 'ricardo.souza8@elao.com', '91987654321', '90123456788', '1986-09-05', 'senha123'),
('Camila', 'Nascimento', 'Matemática', 'camila.nascimento@gmail.com', 'camila.nascimento9@elao.com', '11987654322', '04567891234', '1988-02-14', 'senha123'),
('Gabriel', 'Barbosa', 'Português', 'gabriel.barbosa@gmail.com', 'gabriel.barbosa10@elao.com', '21987654323', '12345678901', '1992-03-08', 'senha123');



INSERT INTO cron_6ano (dia_semana, a7h05, a7h50, a8h35, a9h20, a10h05, a10h25, a11h10) VALUES
('Segunda-feira', 'PORTUGUÊS', 'MATEMÁTICA', 'MATEMÁTICA', 'ENSINO RELIGIOSO', 'INTERVALO', 'ENSINO RELIGIOSO', 'CIÊNCIAS'),
('Terça-feira', 'CAPELA', 'GEOGRAFIA', 'INGLÊS', 'INGLÊS', 'INTERVALO', 'GEOGRAFIA', 'ARTE'),
('Quarta-feira', 'MATEMÁTICA', 'PORTUGUÊS', 'CIÊNCIAS', 'HISTÓRIA', 'INTERVALO', 'PORTUGUÊS', 'ESPANHOL'),
('Quinta-feira', 'ENSINO RELIGIOSO', 'GEOGRAFIA', 'PORTUGUÊS', 'PORTUGUÊS', 'INTERVALO', 'MATEMÁTICA', 'MATEMÁTICA'),
('Sexta-feira', 'CIÊNCIAS', 'CIÊNCIAS', 'EDUCAÇÃO FÍSICA', 'HISTÓRIA', 'INTERVALO', 'EDUCAÇÃO FÍSICA', 'PORTUGUÊS');

INSERT INTO cron_7ano (dia_semana, a7h05, a7h50, a8h35, a9h20, a10h05, a10h25, a11h10) VALUES
('Segunda-feira', 'ENSINO RELIGIOSO', 'ENSINO RELIGIOSO', 'HISTÓRIA', 'MATEMÁTICA', 'INTERVALO', 'PORTUGUÊS', 'PORTUGUÊS'),
('Terça-feira', 'CAPELA', 'ARTE', 'GEOGRAFIA', 'MATEMÁTICA', 'INTERVALO', 'MATEMÁTICA', 'INGLÊS'),
('Quarta-feira', 'INGLÊS', 'CIÊNCIAS', 'CIÊNCIAS', 'ESPANHOL', 'INTERVALO', 'EDUCAÇÃO FÍSICA', 'EDUCAÇÃO FÍSICA'),
('Quinta-feira', 'GEOGRAFIA', 'PORTUGUÊS', 'MATEMÁTICA', 'MATEMÁTICA', 'INTERVALO', 'ENSINO RELIGIOSO', 'ENSINO RELIGIOSO'),
('Sexta-feira', 'PORTUGUÊS', 'PORTUGUÊS', 'HISTÓRIA', 'EDUCAÇÃO FÍSICA', 'INTERVALO', 'HISTÓRIA', 'HISTÓRIA');

INSERT INTO cron_8ano (dia_semana, a7h05, a7h50, a8h35, a9h20, a10h05, a10h25, a11h10) VALUES
('Segunda-feira', 'HISTÓRIA', 'MATEMÁTICA', 'ENSINO RELIGIOSO', 'PORTUGUÊS', 'INTERVALO', 'MATEMÁTICA', 'PORTUGUÊS'),
('Terça-feira', 'CAPELA', 'INGLÊS', 'ARTE', 'GEOGRAFIA', 'INTERVALO', 'EDUCAÇÃO FÍSICA', 'MATEMÁTICA'),
('Quarta-feira', 'CIÊNCIAS', 'INGLÊS', 'PORTUGUÊS', 'PORTUGUÊS', 'INTERVALO', 'ESPANHOL', 'CIÊNCIAS'),
('Quinta-feira', 'MATEMÁTICA', 'ENSINO RELIGIOSO', 'GEOGRAFIA', 'GEOGRAFIA', 'INTERVALO', 'PORTUGUÊS', 'GEOGRAFIA'),
('Sexta-feira', 'MATEMÁTICA', 'PORTUGUÊS', 'CIÊNCIAS', 'EDUCAÇÃO FÍSICA', 'INTERVALO', 'CIÊNCIAS', 'CIÊNCIAS');

INSERT INTO cron_9ano (dia_semana, a7h05, a7h50, a8h35, a9h20, a10h05, a10h25, a11h10) VALUES
('Segunda-feira', 'MATEMÁTICA', 'PORTUGUÊS', 'PORTUGUÊS', 'HISTÓRIA', 'INTERVALO', 'CIÊNCIAS', 'ENSINO RELIGIOSO'),
('Terça-feira', 'CAPELA', 'MATEMÁTICA', 'MATEMÁTICA', 'ARTE', 'INTERVALO', 'INGLÊS', 'GEOGRAFIA'),
('Quarta-feira', 'PORTUGUÊS', 'HISTÓRIA', 'CIÊNCIAS', 'CIÊNCIAS', 'INTERVALO', 'CIÊNCIAS', 'PORTUGUÊS'),
('Quinta-feira', 'PORTUGUÊS', 'MATEMÁTICA', 'ENSINO RELIGIOSO', 'ENSINO RELIGIOSO', 'INTERVALO', 'EDUCAÇÃO FÍSICA', 'EDUCAÇÃO FÍSICA'),
('Sexta-feira', 'EDUCAÇÃO FÍSICA', 'MATEMÁTICA', 'HISTÓRIA', 'PORTUGUÊS', 'INTERVALO', 'EDUCAÇÃO FÍSICA', 'CIÊNCIAS');


