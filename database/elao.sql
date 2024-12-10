create database elao;

use elao;

create table
    diretoria (
        id_func bigint auto_increment primary key,
        nome_func varchar(70) not null,
        email_pess_func varchar(100) not null unique,
        email_corp_func varchar(100) not null unique,
        telefone_func bigint not null,
        cpf_func varchar(11) not null unique,
        nascimento_func date not null,
        senha_func varchar(25) not null
    );

insert into
    diretoria (
        nome_func,
        email_pess_func,
        email_corp_func,
        telefone_func,
        cpf_func,
        nascimento_func,
        senha_func
    )
Values
    (
        "Luis Alberto Oliveira",
        "luis.oliveira@gmail.com",
        "luis.1@elao.com",
        71912345670,
        "06623158708",
        "1982-12-10",
        "admin"
    );

insert into
    diretoria (
        nome_func,
        email_pess_func,
        email_corp_func,
        telefone_func,
        cpf_func,
        nascimento_func,
        senha_func
    )
Values
    (
        "Pedro Silva",
        "pedruuu291@gmail.com",
        "psa@elao.com",
        71983442955,
        "06623258708",
        "1982-12-10",
        "Chicote1@"
    );

create table
    professores (
        id_professor int auto_increment primary key,
        nome_professor varchar(200) not null,
        materia varchar(50) not null,
        email_pess_professor varchar(100) not null unique,
        email_corp_professor varchar(100) not null unique,
        telefone_professor bigint not null,
        cpf_professor varchar(11) not null unique,
        nascimento_professor date not null,
        senha_professor varchar(25) not null
    );

create table
    alunos (
        id_aluno bigint auto_increment primary key,
        nome_aluno varchar(100) not null,
        email_pess_aluno varchar(100),
        email_estd_aluno varchar(100),
        cpf_aluno varchar(11) not null unique,
        sexo_aluno Enum ("Masculino", "Feminino", "Outro") not null,
        turma_aluno int not null,
        nome_responsavel varchar(150) not null,
        telefone_responsavel bigint not null,
        parentesco_responsavel varchar(50) not null,
        nome_responsavel2 varchar(150),
        telefone_responsavel2 bigint,
        parentesco_responsave2 varchar(50),
        senha_aluno varchar(25) not null
    );

create table
    apoio (
        id_func bigint auto_increment primary key,
        nome_func varchar(70) not null,
        email_pess_func varchar(100) not null unique,
        email_corp_func varchar(100) not null unique,
        telefone_func bigint not null,
        cpf_func varchar(11) not null unique,
        nascimento_func date not null,
        senha_func varchar(25) not null,
        cargo_func varchar(100) not null
    );

-- Tabela de notas de Arte com a coluna 'turma'
CREATE TABLE
    notas_Arte (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Ciências com a coluna 'turma'
CREATE TABLE
    notas_Ciencias (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Educação Física com a coluna 'turma'
CREATE TABLE
    notas_Educacao_Fisica (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Ensino Religioso com a coluna 'turma'
CREATE TABLE
    notas_Ensino_Religioso (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Espanhol com a coluna 'turma'
CREATE TABLE
    notas_Espanhol (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Geografia com a coluna 'turma'
CREATE TABLE
    notas_Geografia (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de História com a coluna 'turma'
CREATE TABLE
    notas_Historia (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Inglês com a coluna 'turma'
CREATE TABLE
    notas_Ingles (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Matemática com a coluna 'turma'
CREATE TABLE
    notas_Matematica (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

-- Tabela de notas de Português com a coluna 'turma'
CREATE TABLE
    notas_Portugues (
        id_aluno_fk BIGINT PRIMARY KEY,
        nome_aluno varchar(100) not null,
        av1 FLOAT NOT NULL,
        av2 FLOAT NOT NULL,
        av3 FLOAT NOT NULL,
        media FLOAT,
        turma INT NOT NULL,
        foreign key (id_aluno_fk) references alunos (id_aluno)
    );

create table
    cron_6ano (
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

create table
    cron_7ano (
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

create table
    cron_8ano (
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

create table
    cron_9ano (
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
    SELECT id_aluno FROM alunos ORDER BY id_aluno DESC LIMIT 1