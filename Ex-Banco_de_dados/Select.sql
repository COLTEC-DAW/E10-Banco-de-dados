SELECT * FROM bibliotecas;

SELECT nome FROM usuarios WHERE curso = 'Info';

SELECT nome, autor FROM livros WHERE tema = 'Computação';

SELECT * FROM exemplares WHERE ano_publicacao > 2010;

SELECT * FROM exemplares JOIN bibliotecas ON exemplares.biblioteca_id = bibliotecas.id WHERE bibliotecas.nome = "Biblioteca Central";

SELECT * FROM emprestimos JOIN usuarios ON emprestimos.usuario_id = usuarios.id WHERE usuarios.nome = "João";

SELECT * FROM emprestimos
  INNER JOIN usuarios ON emprestimos.usuario_id = usuarios.id
  INNER JOIN bibliotecas ON emprestimos.biblioteca_id = bibliotecas.id
  WHERE usuarios.nome = "João" AND bibliotecas.nome = "Biblioteca Central";

SELECT DISTINCT exemplares.id, livros.nome FROM emprestimos
  INNER JOIN exemplares ON emprestimos.exemplar_id = exemplares.id
  INNER JOIN livros ON exemplares.livro_id = livros.id;

SELECT DISTINCT bibliotecas.id, bibliotecas.nome FROM emprestimos
INNER JOIN bibliotecas ON emprestimos.biblioteca_id = bibliotecas.id;