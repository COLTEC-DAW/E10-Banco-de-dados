--CONSULTAS
SELECT nome FROM bibliotecas;
SELECT nome FROM usuarios WHERE curso LIKE 'informatica';
SELECT nome, autor FROM livros WHERE tema LIKE 'negocios';
SELECT * FROM exemplares WHERE ano_publicacao > 2010;
SELECT * FROM exemplares WHERE biblioteca_id =2;
SELECT emprestimos.* FROM emprestimos JOIN usuarios ON emprestimos.usuario_id = usuarios.id WHERE usuarios.nome LIKE 'Joao'; 
SELECT emprestimos.* FROM emprestimos INNER JOIN bibliotecas ON emprestimos.biblioteca_id = bibliotecas.id INNER JOIN usuarios ON emprestimos.usuario_id = usuarios.id WHERE usuarios.nome LIKE 'Joao' AND bibliotecas.nome LIKE 'Biblioteca Central';
SELECT DISTINCT nome FROM exemplares JOIN livros ON exemplares.livro_id = livros.id;
SELECT DISTINCT bibliotecas.* FROM bibliotecas JOIN emprestimos ON emprestimos.biblioteca_id = bibliotecas.id;
