use elao;

INSERT INTO diretoria (nome_func, email_pess_func, email_corp_func, telefone_func, cpf_func, nascimento_func, senha_func)
VALUES
("Carlos Eduardo", "carlos.edu@gmail.com", "cedu@elao.com", 71991234567, "06623158709", "1980-01-15", "Carlos#1"),
("Ana Beatriz", "ana.b@gmail.com", "abeatriz@elao.com", 71992345678, "06623158710", "1985-03-25", "AnaB@2024"),
("José Almeida", "jose.a@gmail.com", "jalmeida@elao.com", 71993456789, "06623158711", "1979-07-08", "Jose@321"),
("Maria Clara", "maria.clara@gmail.com", "mclara@elao.com", 71994567890, "06623158712", "1990-11-18", "Maria@123"),
("Rafael Costa", "rafael.costa@gmail.com", "rcosta@elao.com", 71995678901, "06623158713", "1987-05-30", "Raf@Secure");
 
 INSERT INTO professores (nome_professor, materia, email_pess_professor, email_corp_professor, telefone_professor, cpf_professor, nascimento_professor, senha_professor)
VALUES
("João Fernandes", "Matemática", "joao.fern@gmail.com", "jfernandes@elao.com", 71996789012, "06623158714", "1975-09-12", "JoaoMath1"),
("Luciana Lima", "Português", "luciana.l@gmail.com", "llima@elao.com", 71997890123, "06623158715", "1982-06-15", "LimaLang2"),
("Pedro Santos", "Ciências", "pedro.s@gmail.com", "psantos@elao.com", 71998901234, "06623158716", "1988-12-20", "PedroSci3"),
("Camila Soares", "História", "camila.s@gmail.com", "csoares@elao.com", 71999012345, "06623158717", "1991-03-08", "CamilaHist4"),
("Marcos Vinícius", "Geografia", "marcos.v@gmail.com", "mvinicius@elao.com", 71999123456, "06623158718", "1980-04-27", "VinGeo5");
  
  INSERT INTO alunos (nome_aluno, email_pess_aluno, email_estd_aluno, cpf_aluno, sexo_aluno, turma_aluno, nome_responsavel, telefone_responsavel, parentesco_responsavel, nome_responsavel2, telefone_responsavel2, parentesco_responsavel2, senha_aluno)
VALUES
("Carlos Souza", "carlos.s@gmail.com", "carlos.s@elao.com", "06623158719", "Masculino", 601, "José Souza", 71991234567, "Pai", "Ana Souza", 71992345678, "Mãe", "Carl@2024"),
("Mariana Silva", "mariana.s@gmail.com", "mariana.s@elao.com", "06623158720", "Feminino", 701, "Carlos Silva", 71993456789, "Pai", "Beatriz Silva", 71994567890, "Mãe", "Mari@2024"),
("Lucas Fernandes", "lucas.f@gmail.com", "lucas.f@elao.com", "06623158721", "Masculino", 801, "Marcos Fernandes", 71995678901, "Pai", "Luciana Fernandes", 71996789012, "Mãe", "Luca@2024"),
("Ana Clara", "ana.c@gmail.com", "ana.c@elao.com", "06623158722", "Feminino", 901, "Pedro Clara", 71997890123, "Pai", "Clara Pedro", 71998901234, "Mãe", "AnaC@2024"),
("Rafael Dias", "rafael.d@gmail.com", "rafael.d@elao.com", "06623158723", "Masculino", 601, "Alberto Dias", 71999012345, "Pai", "Maria Dias", 71999123456, "Mãe", "RafD@2024");
 
 INSERT INTO apoio (nome_func, email_pess_func, email_corp_func, telefone_func, cpf_func, nascimento_func, senha_func, cargo_func)
VALUES
("Roberta Almeida", "roberta.a@gmail.com", "ralmeida@elao.com", 71991231234, "06623158724", "1985-02-11", "Rob@Support1", "Coordenadora"),
("Henrique Lemos", "henrique.l@gmail.com", "hlemos@elao.com", 71992342345, "06623158725", "1990-06-20", "Hen@Support2", "Supervisor"),
("Fernanda Costa", "fernanda.c@gmail.com", "fcosta@elao.com", 71993453456, "06623158726", "1988-09-05", "Fern@Support3", "Assistente"),
("Gabriel Souza", "gabriel.s@gmail.com", "gsouza@elao.com", 71994564567, "06623158727", "1983-04-10", "Gab@Support4", "Auxiliar"),
("Juliana Mendes", "juliana.m@gmail.com", "jmendes@elao.com", 71995675678, "06623158728", "1992-12-25", "Jul@Support5", "Secretária");

INSERT INTO notas_Arte (id_aluno_fk, nome_aluno, av1, av2, av3, media, turma)
VALUES
(1, "Carlos Souza", 8.5, 9.0, 8.8, 8.76, 601),
(2, "Mariana Silva", 9.0, 9.5, 9.2, 9.23, 701),
(3, "Lucas Fernandes", 7.5, 8.0, 7.8, 7.76, 801),
(4, "Ana Clara", 8.0, 8.5, 8.3, 8.26, 901),
(5, "Rafael Dias", 8.8, 9.0, 8.9, 8.9, 601);