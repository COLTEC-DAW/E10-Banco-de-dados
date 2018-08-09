SELECT * FROM usuarios;
SELECT * FROM exemplares;
SELECT * FROM bibliotecas;
SELECT * FROM livros;
SELECT * FROM emprestimos;

SELECT nome FROM bibliotecas;

SELECT nome FROM usuarios WHERE curso = 'Informatica';
SELECT nome FROM usuarios WHERE curso LIKE '%Info%';
SELECT nome, autor FROM livros WHERE tema LIKE '%Prog%';

SELECT * FROM exemplares WHERE publicacao > 2010;

SELECT l.nome AS 'Nome do Livro', b.nome AS 'Nome da Biblioteca', b.endereco AS 'Endereço da Biblioteca'  FROM exemplares
		INNER JOIN livros l ON exemplares.id_livro = l.id
		INNER JOIN bibliotecas b ON exemplares.id_biblioteca = b.id WHERE b.nome LIKE '%icex%';

SELECT b.nome AS 'Nome da Biblioteca', l.nome AS 'Nome do Livro', data_devolucao, data_emprestimo FROM emprestimos
	INNER JOIN usuarios u ON emprestimos.id_usuario = u.id
	INNER JOIN bibliotecas b ON emprestimos.id_biblioteca = b.id
	INNER JOIN exemplares e ON emprestimos.id_exemplar = e.id
	INNER JOIN livros l ON e.id_livro = l.id WHERE u.nome LIKE '%Joao%';

SELECT b.nome AS 'Nome da Biblioteca', l.nome AS 'Nome do Livro', data_devolucao, data_emprestimo FROM emprestimos
	INNER JOIN usuarios u ON emprestimos.id_usuario = u.id
	INNER JOIN bibliotecas b ON emprestimos.id_biblioteca = b.id
	INNER JOIN exemplares e ON emprestimos.id_exemplar = e.id
	INNER JOIN livros l ON e.id_livro = l.id WHERE u.nome LIKE '%Joao%' AND b.nome LIKE '%icex%';

SELECT DISTINCT l.nome FROM emprestimos
	INNER JOIN exemplares e ON emprestimos.id_exemplar = e.id
	INNER JOIN livros l ON e.id_livro = l.id;

SELECT DISTINCT b.nome FROM emprestimos
	INNER JOIN bibliotecas b ON emprestimos.id_biblioteca = b.id;

