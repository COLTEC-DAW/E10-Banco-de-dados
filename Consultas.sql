SHOW DATABASES;

USE SistemaBibliotecario;

-- 1
SELECT nome FROM bibliotecas;

-- 2
SELECT nome FROM usuarios
WHERE curso = "Informática";

-- 3
SELECT autor FROM livros
WHERE tema = "Computação";

-- 4
SELECT id FROM exemplares
WHERE ano_publicacao >= 2010;

-- 5
SELECT exemplares.id FROM exemplares
INNER JOIN bibliotecas ON exemplares.id_biblioteca = bibliotecas.id
WHERE bibliotecas.nome = "Biblioteca Central";

-- 6
SELECT emprestimos.id FROM emprestimos
INNER JOIN usuarios ON emprestimos.id_usuario = usuarios.id
WHERE usuarios.nome = "João";

-- 7
SELECT emprestimos.id FROM emprestimos
INNER JOIN usuarios ON emprestimos.id_usuario = usuarios.id
INNER JOIN bibliotecas ON emprestimos.id_biblioteca = bibliotecas.id
WHERE usuarios.nome = "João" AND bibliotecas.nome = "Biblioteca Central";

-- 8
SELECT DISTINCT exemplares.id FROM exemplares
INNER JOIN emprestimos ON emprestimos.id_exemplar = exemplares.id;

-- 9
SELECT DISTINCT bibliotecas.nome FROM bibliotecas
INNER JOIN emprestimos ON bibliotecas.id = emprestimos.id_biblioteca;