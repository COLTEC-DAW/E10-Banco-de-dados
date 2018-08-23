SELECT * FROM usuarios;
SELECT * FROM exemplares;
SELECT * FROM bibliotecas;
SELECT * FROM livros;
SELECT * FROM emprestimos;


SELECT * FROM exemplares; 
JOIN bibliotecas b ON exemplares.bib_id = biblioteca.bib_id WHERE bibliotecas.bib_nome = "Icex";
SELECT * FROM exemplares; 
JOIN bibliotecas ON exemplar.bib_id = biblioteca.bib_id
WHERE bibliotecas.bib_nome = "Icex";
SELECT emprestimo.* FROM emprestimo 
JOIN usuario ON emprestimo.user_id = usuario.user_id
WHERE usuario.user_nome LIKE "%Leandro%";
SELECT emprestimo.* FROM emprestimo
JOIN usuario ON emprestimo.user_id = usuario.user_id
JOIN biblioteca ON emprestimo.bib_id = biblioteca.bib_id
WHERE biblioteca.bib_nome LIKE "Carro" 
AND usuario.user_nome LIKE "%Honda%";
SELECT DISTINCT livro.liv_nome FROM livro
JOIN exemplar ON livro.ISBN = exemplar.liv_id
JOIN emprestimo ON exemplar.id = emprestimo.exemplar_id;
SELECT DISTINCT biblioteca.* FROM biblioteca
JOIN emprestimo ON biblioteca.bib_id = emprestimo.bib_id; 

