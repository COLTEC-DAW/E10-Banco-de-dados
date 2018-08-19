INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca do Coltec', 'Coltec, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca da Engenharia', 'Engenharia, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Central', 'ICEX, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca do IGC', 'IGC, UFMG');

INSERT INTO usuarios (nome, email, curso) VALUES('Rita Rezende', 'ritarezborges@gmail.com', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Anna', 'ritarezborges@gmail.com', 'Química');
INSERT INTO usuarios (nome, email, curso) VALUES('Beatriz', 'ritarezborges@gmail.com', 'Eletrônica');
INSERT INTO usuarios (nome, email, curso) VALUES('Carla', 'ritarezborges@gmail.com', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Daniela', 'ritarezborges@gmail.com', 'Automação Industrial');
INSERT INTO usuarios (nome, email, curso) VALUES('Elisa', 'ritarezborges@gmail.com', 'Ciência da Computação');
INSERT INTO usuarios (nome, email, curso) VALUES('Fernanda', 'ritarezborges@gmail.com', 'Pedagogia');
INSERT INTO usuarios (nome, email, curso) VALUES('Gabriela', 'ritarezborges@gmail.com', 'Medicina');
INSERT INTO usuarios (nome, email, curso) VALUES('Helena', 'ritarezborges@gmail.com', 'Direito');
INSERT INTO usuarios (nome, email, curso) VALUES('Isabela', 'ritarezborges@gmail.com', 'Economia');
INSERT INTO usuarios (nome, email, curso) VALUES('João', 'ritarezborges@gmail.com', 'Engenharia Civil');

INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Memórias Póstuas de Brás Cubas', 'Machado de Assis', 'Leia', '23948923', 'Romance');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Dom Casmurro', 'Machado de Assis', 'Leia', '23948923', 'Romance');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Quincas Borba', 'Machado de Assis', 'Leia', '23948923', 'Romance');

INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1992, 200, 3, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Quarta Edição', 2016, 220, 3, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Primeira Edição', 1922, 204, 1, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 3, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 1, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 2, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1992, 210, 3, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1992, 210, 1, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1992, 210, 1, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1992, 210, 2, 3);

INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 1, 1, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 2, 2, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 3, 3, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 4, 4, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 5, 5, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 6, 6, 2);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 7, 7, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-28', '2018-10-08', 8, 8, 1);
