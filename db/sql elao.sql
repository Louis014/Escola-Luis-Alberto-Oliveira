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

-- Inserindo 40 alunos (10 por turma) em uma única instrução
INSERT INTO alunos (nome_aluno, sobrenome_aluno, email_pess_aluno, email_estd_aluno, cpf_aluno, nome_resposavel1, telefone_resposvael1, parentesco_responsavel1, nome_resposavel2, telefone_resposvael2, parentesco_responsavel2, nivel_user, turma_aluno, senha_aluno)
VALUES
('Ana', 'Pereira', 'ana.pereira@email.com', 'ana6@elao.com', '12345678901', 'Carlos Pereira', 31987654321, 'Pai', 'Luciana Pereira', 31987654322, 'Mãe', 3, 6, 'senha123'),
('Bruno', 'Costa', 'bruno.costa@email.com', 'bruno7@elao.com', '12345678902', 'Fernanda Costa', 31987654323, 'Mãe', 'José Costa', 31987654324, 'Pai', 3, 6, 'senha123'),
('Carla', 'Mendes', 'carla.mendes@email.com', 'carla8@elao.com', '12345678903', 'Ricardo Mendes', 31987654325, 'Pai', 'Patricia Mendes', 31987654326, 'Mãe', 3, 6, 'senha123'),
('Daniel', 'Soares', 'daniel.soares@email.com', 'daniel9@elao.com', '12345678904', 'Márcia Soares', 31987654327, 'Mãe', 'Eduardo Soares', 31987654328, 'Pai', 3, 6, 'senha123'),
('Ellen', 'Alves', 'ellen.alves@email.com', 'ellen10@elao.com', '12345678905', 'Alex Alves', 31987654329, 'Pai', 'Simone Alves', 31987654330, 'Mãe', 3, 6, 'senha123'),
('Fábio', 'Silva', 'fabio.silva@email.com', 'fabio11@elao.com', '12345678906', 'Gustavo Silva', 31987654331, 'Pai', 'Juliana Silva', 31987654332, 'Mãe', 3, 6, 'senha123'),
('Gabriela', 'Rodrigues', 'gabriela.rodrigues@email.com', 'gabriela12@elao.com', '12345678907', 'Carlos Rodrigues', 31987654333, 'Pai', 'Renata Rodrigues', 31987654334, 'Mãe', 3, 6, 'senha123'),
('Henrique', 'Fernandes', 'henrique.fernandes@email.com', 'henrique13@elao.com', '12345678908', 'Nelson Fernandes', 31987654335, 'Pai', 'Sofia Fernandes', 31987654336, 'Mãe', 3, 6, 'senha123'),
('Isabela', 'Gomes', 'isabela.gomes@email.com', 'isabela14@elao.com', '12345678909', 'Roberto Gomes', 31987654337, 'Pai', 'Luciana Gomes', 31987654338, 'Mãe', 3, 6, 'senha123'),
('João', 'Lima', 'joao.lima@email.com', 'joao15@elao.com', '12345678910', 'Marcos Lima', 31987654339, 'Pai', 'Aline Lima', 31987654340, 'Mãe', 3, 6, 'senha123'),

-- Turma 7
('Lucas', 'Oliveira', 'lucas.oliveira@email.com', 'lucas16@elao.com', '22345678901', 'Sandra Oliveira', 31987654341, 'Mãe', 'Antônio Oliveira', 31987654342, 'Pai', 3, 7, 'senha123'),
('Juliana', 'Araujo', 'juliana.araujo@email.com', 'juliana17@elao.com', '22345678902', 'Rodrigo Araujo', 31987654343, 'Pai', 'Cristina Araujo', 31987654344, 'Mãe', 3, 7, 'senha123'),
('Marcos', 'Pinto', 'marcos.pinto@email.com', 'marcos18@elao.com', '22345678903', 'Cláudia Pinto', 31987654345, 'Mãe', 'Eduardo Pinto', 31987654346, 'Pai', 3, 7, 'senha123'),
('Nathália', 'Santos', 'nathalia.santos@email.com', 'nathalia19@elao.com', '22345678904', 'Rafael Santos', 31987654347, 'Pai', 'Cíntia Santos', 31987654348, 'Mãe', 3, 7, 'senha123'),
('Felipe', 'Barbosa', 'felipe.barbosa@email.com', 'felipe20@elao.com', '22345678905', 'Laura Barbosa', 31987654349, 'Mãe', 'Vinícius Barbosa', 31987654350, 'Pai', 3, 7, 'senha123'),
('Paula', 'Cavalcanti', 'paula.cavalcanti@email.com', 'paula21@elao.com', '22345678906', 'Gustavo Cavalcanti', 31987654351, 'Pai', 'Isabela Cavalcanti', 31987654352, 'Mãe', 3, 7, 'senha123'),
('Felipe', 'Oliveira', 'felipe.oliveira@email.com', 'felipe22@elao.com', '22345678907', 'Fernando Oliveira', 31987654353, 'Pai', 'Silvana Oliveira', 31987654354, 'Mãe', 3, 7, 'senha123'),
('Renata', 'Dias', 'renata.dias@email.com', 'renata23@elao.com', '22345678908', 'Marco Dias', 31987654355, 'Pai', 'Roberta Dias', 31987654356, 'Mãe', 3, 7, 'senha123'),
('Victor', 'Gonçalves', 'victor.goncalves@email.com', 'victor24@elao.com', '22345678909', 'Carlos Gonçalves', 31987654357, 'Pai', 'Fernanda Gonçalves', 31987654358, 'Mãe', 3, 7, 'senha123'),
('Tatiane', 'Monteiro', 'tatiane.monteiro@email.com', 'tatiane25@elao.com', '22345678910', 'Júlio Monteiro', 31987654359, 'Pai', 'Elaine Monteiro', 31987654360, 'Mãe', 3, 7, 'senha123'),

-- Turma 8
('Lucas', 'Rodrigues', 'lucas.rodrigues@email.com', 'lucas26@elao.com', '32345678901', 'Aline Rodrigues', 31987654361, 'Mãe', 'Fábio Rodrigues', 31987654362, 'Pai', 3, 8, 'senha123'),
('Mariana', 'Ferreira', 'mariana.ferreira@email.com', 'mariana27@elao.com', '32345678902', 'Cláudia Ferreira', 31987654363, 'Mãe', 'Paulo Ferreira', 31987654364, 'Pai', 3, 8, 'senha123'),
('Samuel', 'Lima', 'samuel.lima@email.com', 'samuel28@elao.com', '32345678903', 'Antônio Lima', 31987654365, 'Pai', 'Elaine Lima', 31987654366, 'Mãe', 3, 8, 'senha123'),
('Tatiane', 'Gomes', 'tatiane.gomes@email.com', 'tatiane29@elao.com', '32345678904', 'Carlos Gomes', 31987654367, 'Pai', 'Sílvia Gomes', 31987654368, 'Mãe', 3, 8, 'senha123'),
('João', 'Costa', 'joao.costa@email.com', 'joao30@elao.com', '32345678905', 'Lúcia Costa', 31987654369, 'Mãe', 'Carlos Costa', 31987654370, 'Pai', 3, 8, 'senha123'),
('Beatriz', 'Martins', 'beatriz.martins@email.com', 'beatriz31@elao.com', '32345678906', 'Ricardo Martins', 31987654371, 'Pai', 'Fernanda Martins', 31987654372, 'Mãe', 3, 8, 'senha123'),
('Gustavo', 'Silva', 'gustavo.silva@email.com', 'gustavo32@elao.com', '32345678907', 'Marcelo Silva', 31987654373, 'Pai', 'Patrícia Silva', 31987654374, 'Mãe', 3, 8, 'senha123'),
('Carla', 'Santos', 'carla.santos@email.com', 'carla33@elao.com', '32345678908', 'André Santos', 31987654375, 'Pai', 'Silvana Santos', 31987654376, 'Mãe', 3, 8, 'senha123'),
('Renato', 'Barbosa', 'renato.barbosa@email.com', 'renato34@elao.com', '32345678909', 'Paulo Barbosa', 31987654377, 'Pai', 'Rosana Barbosa', 31987654378, 'Mãe', 3, 8, 'senha123'),
('Eliane', 'Araujo', 'eliane.araujo@email.com', 'eliane35@elao.com', '32345678910', 'Júlio Araujo', 31987654379, 'Pai', 'Cláudia Araujo', 31987654380, 'Mãe', 3, 8, 'senha123'),

-- Turma 9
('Pedro', 'Santos', 'pedro.santos@email.com', 'pedro36@elao.com', '42345678901', 'Maria Santos', 31987654381, 'Mãe', 'José Santos', 31987654382, 'Pai', 3, 9, 'senha123'),
('Lúcia', 'Souza', 'lucia.souza@email.com', 'lucia37@elao.com', '42345678902', 'Renato Souza', 31987654383, 'Pai', 'Juliana Souza', 31987654384, 'Mãe', 3, 9, 'senha123'),
('Alex', 'Vieira', 'alex.vieira@email.com', 'alex38@elao.com', '42345678903', 'Paulo Vieira', 31987654385, 'Pai', 'Sofia Vieira', 31987654386, 'Mãe', 3, 9, 'senha123'),
('Mariana', 'Ribeiro', 'mariana.ribeiro@email.com', 'mariana39@elao.com', '42345678904', 'Fábio Ribeiro', 31987654387, 'Pai', 'Carla Ribeiro', 31987654388, 'Mãe', 3, 9, 'senha123'),
('Ricardo', 'Costa', 'ricardo.costa@email.com', 'ricardo40@elao.com', '42345678905', 'Lúcia Costa', 31987654389, 'Mãe', 'Fernando Costa', 31987654390, 'Pai', 3, 9, 'senha123'),
('Sônia', 'Almeida', 'sonia.almeida@email.com', 'sonia41@elao.com', '42345678906', 'Simone Almeida', 31987654391, 'Mãe', 'Júlio Almeida', 31987654392, 'Pai', 3, 9, 'senha123'),
('Davi', 'Pereira', 'davi.pereira@email.com', 'davi42@elao.com', '42345678907', 'Ana Pereira', 31987654393, 'Mãe', 'Ricardo Pereira', 31987654394, 'Pai', 3, 9, 'senha123'),
('Karla', 'Martins', 'karla.martins@email.com', 'karla43@elao.com', '42345678908', 'Carlos Martins', 31987654395, 'Pai', 'Eliane Martins', 31987654396, 'Mãe', 3, 9, 'senha123'),
('Paula', 'Mendes', 'paula.mendes@email.com', 'paula44@elao.com', '42345678909', 'Patrícia Mendes', 31987654397, 'Mãe', 'Felipe Mendes', 31987654398, 'Pai', 3, 9, 'senha123'),
('Fernando', 'Silva', 'fernando.silva@email.com', 'fernando45@elao.com', '42345678910', 'Cláudia Silva', 31987654399, 'Mãe', 'Ricardo Silva', 31987654400, 'Pai', 3, 9, 'senha123');


INSERT INTO apoio (nome_func, sobrenome_func, email_pess_func, email_corp_func, telefone_func, cpf_func, nascimento_func, senha_func, cargo_func)
VALUES
('João', 'Silva', 'joao.silva@email.com', 'joao1@elao.com', 31987654321, '12345678900', '1985-02-15', 'senha123', 'Porteiro'),
('Maria', 'Oliveira', 'maria.oliveira@email.com', 'maria2@elao.com', 31987654322, '12345678901', '1990-04-20', 'senha123', 'Auxiliar de Serviços Gerais'),
('Carlos', 'Souza', 'carlos.souza@email.com', 'carlos3@elao.com', 31987654323, '12345678902', '1992-07-10', 'senha123', 'Auxiliar de Serviços Gerais'),
('Fernanda', 'Costa', 'fernanda.costa@email.com', 'fernanda4@elao.com', 31987654324, '12345678903', '1994-12-05', 'senha123', 'Auxiliar de Serviços Gerais');

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


