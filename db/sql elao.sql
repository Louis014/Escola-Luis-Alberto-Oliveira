create database elao;
use elao;

create table users(
	id_user bigint auto_increment primary key,
    nome_user varchar(50) not null,
    sobrenome_user varchar(200) not null,
    email_user varchar(100) not null unique,
    senha_user varchar(10) not null,
    nivel_user int not null,
    grupo varchar(20) not null
);

create table professores(
	id_professor int auto_increment primary key,
    nome_professor varchar(200) not null,
    materia varchar(50) not null,
    email_pess_professor varchar(100) not null unique,
    email_corp_professor varchar(100) not null unique,
    cpf_professor varchar(11) not null,
    nascimento_professor date not null
);

create table alunos(
	id_aluno bigint auto_increment primary key,
	nome_aluno varchar(100) not null,
    sobrenome_aluno varchar(100) not null,
    email_pess_aluno varchar(100),
    email_estd_aluno varchar(100),
    cpf_aluno varchar(11) not null
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

insert into professores(nome_professor, materia) Values(
	 "Eneida Vilela dos Santos", "Artes"),
	("Italo Couto Silva","Ciências"),
    ("Adiel dos Santos","Educação Física"),
    ("Jeferson Nolasco Borges","Geografia"),
    ("Marco Spada de Avelino","Historia"),
    ("Hilda Araújo de Oliveira","Língua Portuguesa"),
    ("Andrea Oliveira Silva","Matemática"),
    ("Enil Santana","Ensino Religioso");

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

