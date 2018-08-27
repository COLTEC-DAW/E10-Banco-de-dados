/* Exercicio1 */
SELECT nome FROM biblioteca;
/* Exercicio2 */
SELECT nome FROM usuario WHERE curso LIKE '%Informática%';
/* Exercicio3 */
SELECT nome FROM livro WHERE tema LIKE '%Computação%';
SELECT autor FROM livro WHERE tema LIKE '%Computação%';
/* Exercicio4 */
SELECT * FROM exemplar WHERE ano > 2010;
/* Exercicio5 */
SELECT * FROM exemplar WHERE biblioteca_nome LIKE '%Biblioteca Central%';
/* Exercicio6 */
SELECT * FROM emprestimo WHERE usuario_nome LIKE '%João%';
/* Exercicio7 */
SELECT * FROM emprestimo WHERE usuario_nome LIKE '%João%' AND biblioteca_nome LIKE '%Biblioteca Central%';
/* Exercicio8 */
SELECT DISTINCT fk_exemplar_emprestimo FROM emprestimo;
/* Exercicio9 */
SELECT DISTINCT fk_biblioteca_emprestimo FROM emprestimo;
