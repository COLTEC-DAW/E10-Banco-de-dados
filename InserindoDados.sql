USE SistemaBibliotecario;

/* Inserindo bibliotecas */

INSERT INTO biblioteca (bib_nome, bib_endereco) VALUES ("Biblioteca Universitária", "Av Antônio Carlos, 6627 - Pampulha");
INSERT INTO biblioteca (bib_nome, bib_endereco) VALUES ("Biblioteca do Colégio Técnico", "Av Antônio Carlos, 6627 - Pampulha");
INSERT INTO biblioteca (bib_nome, bib_endereco) VALUES ("Biblioteca Central", "Av Antônio Carlos, 6627 - Pampulha");
INSERT INTO biblioteca (bib_nome, bib_endereco) VALUES ("Biblioteca da Faculdade de Letras", "Av Antônio Carlos, 6627 - Pampulha");

/* Inserindo usuários */

INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Bernardo Gomes Nunes", "Informática", "nunesbernardo2000@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Bryan Santos Oliveira", "Informática", "bryan@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Gustavo Henrique Cerceau Patricio", "Informática", "futebol@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Willian Vitor Alves", "Informática", "willian@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Samuel Yan Silva", "Análises Clínicas", "samuel@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Mathias Gonçalves", "Informática", "mtgo@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Francyelle Silveira", "Análises Clínicas", "fran@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Vinícius Jr.", "Automação Industrial", "realmadrid@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Márcio Marcos", "Química", "claudinha@gmail.com");
INSERT INTO usuario (user_nome, user_curso, user_email) VALUES ("Lucas Bahia", "Eletrônica", "bahia@gmail.com");

/* Inserindo livros */

INSERT INTO livro (ISBN, liv_nome, liv_autor, liv_editora, liv_tema) VALUES (97866105, "Memórias Póstumas de Brás Cubas", "Machado de Assis", "Tipografia Nacional", "Vida e morte na literatura");
INSERT INTO livro (ISBN, liv_nome, liv_autor, liv_editora) VALUES (97891296, "Harry Potter e a Pedra Filosofal", "J. K. Rowling", "Bloomsbury Publishing");
INSERT INTO livro (ISBN, liv_nome, liv_autor) VALUES (97898965, "Capitães da Areia", "Jorge Amado");

/* Inserindo Exemplares */
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (1, 210, 1881, 97866105, 1);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (2, 215, 1890, 97866105, 4);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (15, 218, 1960, 97866105, 3);

INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (1, 255, 1997, 97891296, 2);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (30, 223, 2013, 97891296, 1);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (12, 250, 2007, 97891296, 2);

INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (1, 342, 1937, 97898965, 3);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (2, 342, 1939, 97898965, 2);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (15, 350, 1978, 97898965, 1);
INSERT INTO exemplar (edicao, num_paginas, ano_de_publicacao, liv_id, bib_id) VALUES (19, 351, 2000, 97898965, 4);

/* Fazendo Empréstimos */

INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-08-16', '2018-09-16', 1, 1, 1);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-08-16', '2018-09-16', 2, 1, 4);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-08-16', '2018-09-16', 5, 2, 1);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-08-09', '2018-09-09', 6, 3, 2);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-07-30', '2018-08-30', 7, 7, 3);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-07-14', '2018-08-14', 9, 6, 1);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-06-22', '2018-07-22', 5, 5, 1);
INSERT INTO emprestimo (data_do_emprestimo, data_da_devolucao, exemplar_id, user_id, bib_id) VALUES ('2018-06-17', '2018-07-17', 1, 2, 1);
