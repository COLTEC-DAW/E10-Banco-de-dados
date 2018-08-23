
--? Popule o banco de dados com informações reais de bibliotecas,livros, exemplares, usuários e empréstimos.
--? Seu banco de dados deverá ter, pelo menos:

--! 4 bibliotecas
INSERT INTO bibliotecas (nome, endereco) VALUES ('Coltec', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Fale', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Carro', 'UFMG');
INSERT INTO bibliotecas (nome, endereco) VALUES ('Icex', 'UFMG');

--! 10 usuários
INSERT INTO usuarios (nome, email, curso) VALUES('honda', 'yahoo@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('leandro', 'hotmail@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('Vir', 'gmail@', 'Cc');
INSERT INTO usuarios (nome, email, curso) VALUES('Babel', 'gmail@', 'Cc');
INSERT INTO usuarios (nome, email, curso) VALUES('joao', 'gmail@', 'Informatica');
INSERT INTO usuarios (nome, email, curso) VALUES('Fantinni', 'bol@', 'Eletras');
INSERT INTO usuarios (nome, email, curso) VALUES('Lora', 'yahoo@', 'Analises Clinicas');
INSERT INTO usuarios (nome, email, curso) VALUES('Madera', 'yahoo@', 'Automacao Industrial');

--! 3 livros
INSERT INTO livros (nome, autor, isbn, tema) VALUES('Mochileiro das Galaxias 1', 'Douglas Adams', '97805', 'Comedia');
INSERT INTO livros (nome, autor, isbn, tema) VALUES('Mochileiro das Galaxias 2', 'Douglas Adams', '51769', 'Comedia');
INSERT INTO livros (nome, autor, isbn, tema) VALUES('Mochileiro das Galaxias 3', 'Douglas Adams', '93117', 'Comedia');

--! 10 exemplares
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 1, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 3, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 4, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 1, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (1, 2, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 3, 'Edição unica', 2017, 160);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 4, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 1, 'Edição unica', 1952, 209);
INSERT INTO exemplares (id_livro, id_biblioteca, edicao, publicacao, paginas) VALUES (3, 4, 'Edição unica', 1952, 209);

--! 8 empréstimos
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (1, 1, 1, '24-08-2018 04:01', '30-08-2018 04:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (2, 2, 2, '24-08-2018 04:02', '30-08-2018 05:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (3, 3, 2, '24-08-2018 04:03', '30-08-2018 06:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (4, 4, 2, '24-08-2018 04:04', '30-08-2018 07:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (5, 5, 3, '24-08-2018 04:05', '30-08-2018 08:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (6, 6, 3,  '24-08-2018 04:06', '30-08-2018 09:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (7, 7, 3, '24-08-2018 04:07', '30-08-2018 10:01');
INSERT INTO emprestimos (id_usuario, id_exemplar, id_biblioteca, data_devolucao, data_emprestimo)
      VALUES (8, 8, 3, '24-08-2018 04:08', '30-08-2018 11:01');
