INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca do Coltec', 'Coltec, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Central', 'ICEX, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca do IGC', 'IGC, UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca da Engenharia', 'Engenharia, UFMG');

INSERT INTO usuarios (nome, email, curso) VALUES('João Vitor',  'joao@gmail.com', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Ana', 'ana@gmail.com', 'Química');
INSERT INTO usuarios (nome, email, curso) VALUES('Maria', 'maria@gmail.com', 'Eletrônica');
INSERT INTO usuarios (nome, email, curso) VALUES('Jose', 'jose@gmail.com', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Marcia', 'marcia@gmail.com', 'Química');
INSERT INTO usuarios (nome, email, curso) VALUES('Carla', 'carla@gmail.com', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Fernanda','fernanda@gmail.com', 'Eletrônica');
INSERT INTO usuarios (nome, email, curso) VALUES('Caio','caio@gmail.com', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Felipe', 'felipe@gmail.com', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Isabela','isabela@gmail.com', 'Automação Industrial');
INSERT INTO usuarios (nome, email, curso) VALUES('João', 'joao@gmail.com', 'Informática');

INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Memórias Póstuas de Brás Cubas', 'Machado de Assis', 'Leia', '123456789', 'Romance');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Dom Casmurro', 'Machado de Assis', 'Leia', '123456789', 'Romance');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Quincas Borba', 'Machado de Assis', 'Leia', '123456789', 'Romance');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Algoritmos: Teoria e Prática', 'Charles Eric Leiserson', 'Leia', '123456789', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Logica Para Ciencia Da Computaçao', 'João Nunes de Souza', 'Leia', '123456789', 'Computação');
INSERT INTO livros (nome, autor, editora, isbn, tema) VALUES('Organização e Projeto de Computadores', 'David A. Patterson', 'Leia', '123456789', 'Computação');

INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1990, 200, 3, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Quarta Edição', 2016, 220, 3, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Primeira Edição', 1922, 204, 1, 2);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 3, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 1, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Décima Segunda Edição', 1942, 240, 2, 1);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1990, 210, 3, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1990, 210, 1, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1990, 210, 1, 3);
INSERT INTO exemplares (edicao, ano_publicacao, num_paginas, biblioteca_id, livro_id) VALUES('Vigésima Primeira Edição', 1990, 210, 2, 3);

INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 1, 1, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 2, 2, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 3, 3, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 4, 4, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 5, 5, 1);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 6, 6, 2);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 7, 7, 3);
INSERT INTO emprestimos (data_devolucao, data_emprestimo, exemplar_id, usuario_id, biblioteca_id) VALUES('2018-10-25', '2018-10-05', 8, 8, 1);
