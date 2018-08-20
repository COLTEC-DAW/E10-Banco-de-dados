USE SistemaBibliotecario;

/* Nomes das Bibliotecas */
SELECT bib_nome FROM biblioteca;

/* Usuários do curso de Informática */
SELECT user_nome FROM usuario WHERE user_curso LIKE "Informática";

/* Nome e autor dos livros de vida e morte na literatura */
SELECT liv_nome, liv_autor FROM livro WHERE liv_tema LIKE "Vida e morte na literatura";

/* Exemplares publicados após 2010 */
SELECT * FROM exemplar WHERE ano_de_publicacao > 2010;

/* Exemplares pertencentes à Biblioteca Central */
SELECT exemplar.* FROM exemplar 
JOIN biblioteca ON exemplar.bib_id = biblioteca.bib_id
WHERE biblioteca.bib_nome = "Biblioteca Central";

/* Empréstimos realizados pelo 'Bernardo' */
SELECT emprestimo.* FROM emprestimo 
JOIN usuario ON emprestimo.user_id = usuario.user_id
WHERE usuario.user_nome LIKE "%Bernardo%";

/* Empréstimo de Bryan na Biblioteca Universitária */
SELECT emprestimo.* FROM emprestimo
JOIN usuario ON emprestimo.user_id = usuario.user_id
JOIN biblioteca ON emprestimo.bib_id = biblioteca.bib_id
WHERE biblioteca.bib_nome LIKE "Biblioteca Universitária" 
AND usuario.user_nome LIKE "%Bryan%";

/* Nome dos exemplares que aparecem ao menos uma vez */
SELECT DISTINCT livro.liv_nome FROM livro
JOIN exemplar ON livro.ISBN = exemplar.liv_id
JOIN emprestimo ON exemplar.id = emprestimo.exemplar_id;

/* Bibliotecas que fizeram ao menos um empréstimo */
SELECT DISTINCT biblioteca.* FROM biblioteca
JOIN emprestimo ON biblioteca.bib_id = emprestimo.bib_id;