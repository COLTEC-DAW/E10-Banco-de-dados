SELECT * FROM bibliotecas;
SELECT * FROM usuarios WHERE curso = 'Informática';
SELECT * FROM livros WHERE tema = 'Computação';
SELECT * FROM livros WHERE tema = 'Romance';
SELECT * FROM exemplares WHERE ano_publicacao > 2010;
SELECT * FROM exemplares JOIN bibliotecas ON exemplares.biblioteca_id = bibliotecas.id WHERE bibliotecas.nome = "Biblioteca Central";
SELECT * FROM emprestimos JOIN usuarios ON emprestimos.usuario_id = usuarios.id WHERE usuarios.nome = "Anna";

SELECT * FROM emprestimos
  INNER JOIN usuarios ON emprestimos.usuario_id = usuarios.id
  INNER JOIN bibliotecas ON emprestimos.biblioteca_id = bibliotecas.id
  WHERE usuarios.nome = "Anna" AND bibliotecas.nome = "Biblioteca Central";

SELECT DISTINCT exemplares.id, livros.nome FROM emprestimos
  INNER JOIN exemplares ON emprestimos.exemplar_id = exemplares.id
  INNER JOIN livros ON exemplares.livro_id = livros.id;

SELECT DISTINCT bibliotecas.id, bibliotecas.nome FROM emprestimos
  INNER JOIN bibliotecas ON emprestimos.biblioteca_id = bibliotecas.id;
