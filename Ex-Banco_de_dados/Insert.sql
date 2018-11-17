INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Fafich', 'Fafich, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Central', 'ICEX, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Letras', 'Letras, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Coltec', 'Coltec, UFMG');

INSERT INTO usuarios (nome, email, curso) VALUES('Artur',  'Artur@gmail.com', 'Info');
INSERT INTO usuarios (nome, email, curso) VALUES('João', 'Joao@gmail.com', 'Info');
INSERT INTO usuarios (nome, email, curso) VALUES('Maria', 'Maria@gmail.com', 'Quimica');
INSERT INTO usuarios (nome, email, curso) VALUES('Juliana', 'Juliana@gmail.com', 'Info');
INSERT INTO usuarios (nome, email, curso) VALUES('Pedro', 'Pedro@gmail.com', 'Patola');
INSERT INTO usuarios (nome, email, curso) VALUES('Ana', 'Ana@gmail.com', 'Eletras');
INSERT INTO usuarios (nome, email, curso) VALUES('Carlos','Carlos@gmail.com', 'Info');
INSERT INTO usuarios (nome, email, curso) VALUES('William','William@gmail.com', 'Eletras');
INSERT INTO usuarios (nome, email, curso) VALUES('Angelina', 'Angelina@gmail.com', 'Patola');
INSERT INTO usuarios (nome, email, curso) VALUES('Gabriel','Gabriel@gmail.com', 'Quimica');
INSERT INTO usuarios (nome, email, curso) VALUES('Anita', 'Anita@gmail.com', 'Instrums');

INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro1', 'Autor1', 'Editora1', 'ISBN1', 'Terror');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro2', 'Autor2', 'Editora2', 'ISBN2', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro3', 'Autor3', 'Editora3', 'ISBN3', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro4', 'Autor4', 'Editora4', 'ISBN4', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro5', 'Autor5', 'Editora5', 'ISBN5', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Livro6', 'Autor6', 'Editora6', 'ISBN6', 'Economia');

INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição1', 1950, 200, 4, 3);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição2', 1950, 100, 3, 2);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição3', 1950, 2030, 2, 3);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição2', 1980, 150, 1, 2);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição1', 1980, 180, 2, 2);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição2', 2009, 200, 2, 2);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição3', 2008, 287, 4, 3);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição2', 2015, 222, 2, 1);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição1', 2000, 50, 1, 1);
INSERT INTO exemplares (edicao, ano_publicacao, numero_paginas, biblioteca_id, livro_id) VALUES('Edição3', 2012, 200, 3, 1);

INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 1, 1, 4);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 2, 2, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 3, 3, 2);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 4, 4, 4);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 5, 5, 2);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 6, 6, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-01-01', '2014-11-01', 7, 7, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2015-10-01', '2014-11-01', 8, 8, 3);