#Listar o nome de todas as bibliotecas
SELECT nome FROM Bibliotecas;

#Listar o nome de todos os usuários do curso de informática
SELECT nome FROM usuarios WHERE usuarios.curso = 'Informática';

#Listar o nome e autor dos livros de computação
SELECT nome, autor FROM livros WHERE livros.tema = 'Computação';

#Listar os exemplares que foram publicados após os anos de 2010
SELECT * FROM exemplares WHERE exemplares.ano_publicacao > 2010;

#Listar os exemplares cadastrados na biblioteca central
SELECT * FROM exemplares WHERE exemplares.idBiblioteca = 4;

#Listar todos os empréstimos realizados pelo usuário 'João'
SELECT * FROM emprestimos WHERE emprestimos.matriculauser = 1;

#Listar os empréstimos de 'João' feitos na biblioteca central
SELECT * FROM emprestimos WHERE emprestimos.matriculauser = 1 AND emprestimos.idBilioteca = 4;

#Listar o nome dos exemplares que foram emprestados pelo menos uma vez 
SELECT DISTINCT exemplares_id FROM emprestimos;

#Listar as bibliotecas que realizarem empréstimos pelo menos uma vez
SELECT DISTINCT idBiblioteca FROM emprestimos;
