create database elao;
use elao;

create table
    diretoria (
        id_func INT auto_increment primary key,
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
			email_pess_professor VARCHAR(255) UNIQUE NOT NULL,
			email_corp_professor VARCHAR(255) UNIQUE NOT NULL,
			telefone_professor VARCHAR(11) NOT NULL,
			cpf_professor varchar(11) not null unique,
			nascimento_professor date not null,
			sexo_professor VARCHAR(3) not null,
			senha_professor varchar(25) not null,
			data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
		);

create table
    alunos (
        id_aluno INT PRIMARY KEY AUTO_INCREMENT,
        nome_aluno VARCHAR(100) NOT NULL,
        email_pess_aluno VARCHAR(255) UNIQUE NOT NULL,
        email_estd_aluno VARCHAR(255) UNIQUE NOT NULL,
        cpf_aluno VARCHAR(14) UNIQUE,
        sexo_aluno VARCHAR(1) NOT NULL,
        turma_aluno VARCHAR(20) NOT NULL,
        nome_responsavel VARCHAR(100) NOT NULL,
        telefone_responsavel VARCHAR(11) NOT NULL,
        parentesco_responsavel VARCHAR(100) NOT NULL,
        nome_responsavel2 VARCHAR(100) NOT NULL,
        telefone_responsavel2 VARCHAR(11) NOT NULL,
        parentesco_responsavel2 VARCHAR(100) NOT NULL,
        senha_aluno VARCHAR(128) NOT NULL,
        data_matricula DATETIME DEFAULT CURRENT_TIMESTAMP
    );

create table
    apoio (
        id_func bigint auto_increment primary key,
        nome_func varchar(70) not null,
        email_pess_func VARCHAR(150) UNIQUE NOT NULL,
        email_corp_func VARCHAR(150) UNIQUE NOT NULL,
        telefone_func VARCHAR(11) NOT NULL,
        cpf_func varchar(11) not null unique,
        sexo_func varchar(1) not null,
        nascimento_func date not null,
        senha_func varchar(25) not null,
        cargo_func varchar(100) not null
    );