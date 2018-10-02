CREATE TABLE bibliotecas(
	id SMALLINT PRIMARY KEY,
	nome VARCHAR(70),
	endereco VARCHAR(100)
);

CREATE TABLE livros(
	id SMALLINT PRIMARY KEY,
	nome VARCHAR(70),
	autor VARCHAR(70),
	editora VARCHAR(70),
	ISBN VARCHAR(30),
	tema CHAR(70)
);

CREATE TABLE usuarios(
	id SMALLINT PRIMARY KEY,
	nome VARCHAR(70),
	email VARCHAR(70),
	curso CHAR(50)
);

CREATE TABLE exemplares(
	id SMALLINT PRIMARY KEY,
	livro_id SMALLINT,
	biblioteca_id SMALLINT,
	edicao INT,
	ano_publicacao SMALLINT,
	num_paginas SMALLINT,
        CONSTRAINT exemplares FOREIGN KEY (livro_id) REFERENCES livros(id),
        CONSTRAINT exemplares FOREIGN KEY (biblioteca_id) REFERENCES bibliotecas(id)
);

CREATE TABLE emprestimos(
	id SMALLINT PRIMARY KEY,
	exemplar_id SMALLINT,
	usuario_id SMALLINT,
	biblioteca_id SMALLINT,
	data_emprestimo DATE,
	data_devolucao DATE,
	CONSTRAINT emprestimos FOREIGN KEY (exemplar_id) REFERENCES exemplares(id),
	CONSTRAINT emprestimos FOREIGN KEY (usuario_id) REFERENCES usuarios(id),	
	CONSTRAINT emprestimos FOREIGN KEY (biblioteca_id) REFERENCES bibliotecas(id)
);

INSERT INTO bibliotecas (id, nome, endereco) VALUES (1, "Biblioteca Publica Estasdual Luiz de Bessa", "Praca da Liberdade, 21, Funcionarios, BH-MG");
INSERT INTO bibliotecas (id, nome, endereco) VALUES (2, "Biblioteca Central da UFMG", "Av. Presidente Antonio Carlos, 6627, Pampulha, BH-MG");
INSERT INTO bibliotecas (id, nome, endereco) VALUES (3, "Biblioteca Comunitaria Graça Rios", "R. Glauber Rocha, 334, Vila Paqueta, BH-MG");
INSERT INTO bilbiotecas (id, nome, endereco) VALUES (4, "Biblioteca Paulo Freire", "R. Padre Julio Maria, 1577, Alto Vera Curz, BH-MG");

INSERT INTO usuarios (id, nome, email, curso) VALUES (1, "Joao", "joao@joao.com", "Informatica");
INSERT INTO usuarios (id, nome, email, curso) VALUES (2, "Maria", "maria@maria.com", "Patologia");
INSERT INTO usuarios (id, nome, email, curso) VALUES (3, "Raul", "raul@raul.com.br", "Automacao");
INSERT INTO usuarios (id, nome, email, curso) VALUES (4, "Marina", "marina@marina.com.br", "Quimica");
INSERT INTO usuarios (id, nome, email, curso) VALUES (5, "Ana", "ana@ana.com.br", "Medicina");
INSERT INTO usuarios (id, nome, email, curso) VALUES (6, "Lucas", "lucas@lucas.com", "Eletras");
INSERT INTO usuarios (id, nome, email, curso) VALUES (7, "Vitor", "vitor@vitor.com.br", "Mecanica");
INSERT INTO usuarios (id, nome, email, curso) VALUES (8, "Pedro", "pedro@pedro.com", "Direito");
INSERT INTO usuarios (id, nome, email, curso) VALUES (9, "Duda", "duda@duda.com.br", "Emgenharia");
INSERT INTO usuarios (id, nome, email, curso) VALUES (10, "Lucia", "lucia@lucia.com", "Biologia");
 
INSERT INTO livros (id, nome, autor, editora, ISBN, tema) VALUES (1, "O milagre da manha", "Hal Elrod", "Hal Elrod", "978-85-76849-94-0", "Autoajuda"); 
INSERT INTO livros (id, nome, autor, editora, ISBN, tema) VALUES (2, "Seja foda!", "Caio Carneiro", "Buzz", "978-85-93156-29-8", "Negocios"); 
INSERT INTO livros (id, nome, autor, editora, ISBN, tema) VALUES (3, "Para todos os garotos que ja amei", "Jenny Han", "Intrinseca", "978-85-80577-26-6", "Infantofuvenil");

INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (1, 3, 1, 10, 2010, 320);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (2, 2, 2, 9, 1999, 208);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (3, 1, 3, 8, 2000, 196);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (4, 1, 4, 7, 1996, 196);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (5, 2, 4, 6, 1971, 208);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (6, 3, 3, 5, 2018, 320);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (7, 3, 2, 4, 2014, 320);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (8, 2, 1, 3, 2003, 208);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (9, 1, 2, 2, 1998, 196);
INSERT INTO exemplares (id, livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (10, 3, 3, 1, 1976, 320);

INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (1, 7, 7, 2, 2015-03-15, 2015-04-05);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (2, 4, 3, 4, 2001-09-11, 2001-10-01);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (3, 3, 4, 3, 2007-08-15, 2007-09-05);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (4, 5, 9, 4, 1980-10-22, 1980-11-02);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (5, 9, 5, 2, 2017-12-28, 2018-01-18);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (6, 8, 10, 1, 1999-06-04, 1999-06-24);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (7, 1, 2, 1, 2011-07-05, 2011-07-25);
INSERT INTO emprestimos (id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao) VALUES (8, 7, 3, 2, 2018-09-25, 2018-10-15);
SELECT id, exemplar_id, usuario_id, biblioteca_id, data_emprestimo, data_devolucao FROM emprestimos

