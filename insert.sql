INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca Coltec', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca ICEX', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca ICB', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Biblioteca FACE', 'UFMG');

INSERT INTO usuarios (nome, email, curso) VALUES('Germano', 'germano@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('João', 'joao@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('José', 'jose@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('Leticia', 'l@', 'Eletronica');
INSERT INTO usuarios (nome, email, curso) VALUES('Mateus', 'mateus@', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Mateus H', 'mateusH@', 'Automacao Industrial');
INSERT INTO usuarios (nome, email, curso) VALUES('Guilherme', 'gui@', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Gustavo', 'gustavo@', 'Automacao Industrial');

INSERT INTO livros (nome, autor, isbn, tema) VALUES('Python for Finance', 'Yuxing Yan', '1111', 'Programação');
INSERT INTO livros (nome, autor, isbn, tema) VALUES('A arte da Eletrônica', 'Paul Horowitz', '2222', 'Eletrônica');
INSERT INTO livros (nome, autor, isbn, tema) VALUES('Teoria e Formulação de Casos em Análise Comportamental Clínica',
                          ' Ana Karina C. R. De Farias', '3333', 'Análises Clínicas');

INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Second Edition', 2018, 220);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 1, 'Second Edition', 2018, 220);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Fisrt Edition', 2012, 180);

INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Fisrt Edition', 1980, 1125);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Third Edition', 2010, 1125);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Fisrt Edition', 1980, 1125);

INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 3, 'Primeira Edição', 2017, 160);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 3, 'Primeira Edição', 2017, 160);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 3, 'Primeira Edição', 2017, 160);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 3, 'Primeira Edição', 2017, 160);

INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (1, 2, 1, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (2, 4, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (3, 5, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (4, 6, 2, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (5, 10, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (6, 9, 3,  '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (7, 8, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (8, 2, 3, '2010-04-15 11:23:32', '2010-04-22 11:23:32');