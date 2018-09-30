SHOW DATABASES;

USE SistemaBibliotecario;

show tables;

USE SistemaBibliotecario;

DESC bibliotecas;
DESC usuarios;
DESC livros;
DESC exemplares;
DESC emprestimos;

INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca Central", "Praça de Serviços", 2424);
INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca do Coltec", "Coltec", 2525);
INSERT INTO bibliotecas (nome, endereco, id) VALUES ("Biblioteca do ICEX", "ICEX", 2626);

INSERT INTO usuarios (nome, email, curso, id) VALUES ("Willian", "willian@gmail.com", "Informática", 12);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Gustavo", "gustavo@gmail.com", "Informática", 66);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Bryan", "bryan@gmail.com", "Informática", 77);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Bernardo", "bernardo@gmail.com", "Informática", 85);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Samuel", "samuel@gmail.com", "Análises Clínicas", 56);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Guilherme", "guilherme@gmail.com", "Informática", 98);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Reinaldo", "reinaldo@gmail.com", "Informática", 65);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Rita", "rita@gmail.com", "Informática", 34);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Mariana", "mariana@gmail.com", "Informática", 43);
INSERT INTO usuarios (nome, email, curso, id) VALUES ("Germano", "germano@gmail.com", "Informática", 99);

INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("Refactoring", "Martin Fowler", "Addison-Wesley Professional", "Computação", 978020148);
INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("O Pequeno Príncipe ", "Antoine de Saint-Exupery", "Novo Século", "Ficção", 978975311);
INSERT INTO livros (nome, autor, editora, tema, isbn) VALUES ("Os Miseráveis", "Victor Hugo", "Martin Claret", "Romance", 978185605);

INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978020148, 2424, 33, 2, 2004, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 35, 2, 2010, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 23, 4, 1998, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978020148, 2424, 53, 7, 2003, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 37, 3, 2004, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 34, 5, 1996, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978020148, 2424, 98, 6, 1998, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978975311, 2525, 24, 5, 2009, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978185605, 2626, 13, 5, 1999, 400);
INSERT INTO exemplares (id_livro, id_biblioteca, id, edicao, ano_publicacao, numero_paginas) VALUES (978020148, 2424, 44, 8, 2009, 400);

INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (33, 12, 2424, '20180618','20180718');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (35, 66, 2525, '20180618','20180718');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (23, 77, 2626, '20180619','20180719');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (53, 85, 2424, '20180619','20180719');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (37, 56, 2525, '20180620','20180720');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (34, 98, 2626, '20180620','20180720');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (98, 65, 2424, '20180621','20180721');
INSERT INTO emprestimos (id_exemplar, id_usuario, id_biblioteca, data_emprestimo, data_devolucao) VALUES (24, 34, 2525, '20180622','20180722');