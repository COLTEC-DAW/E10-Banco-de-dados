SHOW DATABASES;

USE SistemaBibliotecario;

show tables;

USE SistemaBibliotecario;

DESC bibliotecas;
DESC usuarios;
DESC livros;
DESC exemplares;
DESC emprestimos;

INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca do Povo", "Rua do Povo, 123", 2424);
INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca Real", "Rua Real, 456", 2525);
INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca Nacional", "Rua Nacional, 789", 2626);

INSERT INTO usuarios (nome, email, curso, id) VALUES ("Ana", "a@gmail.com", "Engenharia", 12);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Beatriz", "b@gmail.com", "Engenharia", 66);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Claudia", "c@gmail.com", "Engenharia", 77);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Daniela", "d@gmail.com", "Engenharia", 85);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Ema", "e@gmail.com", "Engenharia", 56);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Fátima", "f@gmail.com", "Engenharia", 98);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Gabriela", "g@gmail.com", "Engenharia", 65);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Helena", "h@gmail.com", "Engenharia", 34);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Ivone", "i@gmail.com", "Engenharia", 43);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Julia", "j@gmail.com", "Engenharia", 99);

INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("Dom Casmurro", "Machado de Assis", "Editora Ática", "Suspense", 978989622);
INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("O Pequeno Príncipe ", "Antoine de Saint-Exupery", "Novo Século", "Ficção", 978975311);
INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("Os Miseráveis", "Victor Hugo", "Martin Claret", "Romance", 978185605);

INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978989622, 2424, 33, 5, 2004, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 35, 2, 2010, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 23, 4, 1998, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978989622, 2424, 53, 7, 2003, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 37, 3, 2004, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 34, 5, 1996, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978989622, 2424, 98, 6, 1998, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 24, 5, 2009, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 13, 5, 1999, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978989622, 2424, 44, 8, 2009, 400);

INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (33, 12, 2424, '20180618','20180718');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (35, 66, 2525, '20180618','20180718');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (23, 77, 2626, '20180619','20180719');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (53, 85, 2424, '20180619','20180719');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (37, 56, 2525, '20180620','20180720');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (34, 98, 2626, '20180620','20180720');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (98, 65, 2424, '20180621','20180721');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (24, 34, 2525, '20180622','20180722');