
# 4 bibliotecas
INSERT INTO biblioteca (nome, endereco) VALUES ('Biblioteca 1', 'Rua 1');
INSERT INTO biblioteca (nome, endereco) VALUES ('Biblioteca 2', 'Rua 2');
INSERT INTO biblioteca (nome, endereco) VALUES ('Biblioteca 3', 'Rua 3');
INSERT INTO biblioteca (nome, endereco) VALUES ('Biblioteca 4', 'Rua 4');


# 10 usuários
INSERT INTO usuarios (nome, email, curso) VALUES('João', 'joao@', 'Informática');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 1', 'us1@email.com', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 2', 'us2@email.com', 'Eletronica');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 3', 'us3@email.com', 'Eletronica');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 4', 'us4@email.com', 'Automacao Industrial');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 5', 'us5@email.com', 'Automacao Industrial');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 6', 'us6@email.com', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Usuario 7', 'us7@email.com', 'Analises Clinicas');


# 3 livros

INSERT INTO Livros (nome, autor, editora, ISBN, tema) VALUES ("Livro 1", "Autor 1", "Letras", "111", "Suspense");
INSERT INTO Livros (nome, autor, editora, ISBN, tema) VALUES ("Livro 2", "Autor 2", "Abril", "222", "Comedia");
INSERT INTO Livros (nome, autor, editora, ISBN, tema) VALUES ("Livro 3", "Autor 3", "Pnot", "333", "Computação");                          


# 10 exemplares
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, nun_paginas) VALUES (1, 2, 'Second Edition', 2018, 220);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, nun_paginas) VALUES (1, 1, 'Second Edition', 2017, 220);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, nun_paginas) VALUES (1, 2, 'Fisrt Edition', 2015, 180);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, nun_paginas) VALUES (1, 2, 'Fisrt Edition', 1980, 300);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (1, 2, 'Third Edition', 2010, 280);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (1, 2, 'Fisrt Edition', 1980, 150);
INSERT INTO exemplares (livro_id ,biblioteca_id, edicao, ano_publicacao,num_paginas ) VALUES (3, 3, 'Primeira Edição', 2014, 160);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (3, 3, 'Primeira Edição', 2013, 144);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (3, 3, 'Primeira Edição', 2012, 126);
INSERT INTO exemplares (livro_id, biblioteca_id, edicao, ano_publicacao, num_paginas) VALUES (3, 3, 'Primeira Edição', 2011, 150);


# 8 emprestimos
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (1, 2, 1, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (2, 4, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (3, 5, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (4, 6, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (5, 10, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (6, 9, 3,  '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (7, 8, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (usuarios_id, exemplares_id, biblioteca_id, data_devolucao, data_emprestimo) VALUES (8, 2, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');