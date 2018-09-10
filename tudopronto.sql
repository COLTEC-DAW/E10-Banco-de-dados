-- Criando a estrutura do banco de dados
	CREATE DATABASE sistemabiblioteca;

	-- Selecionar o banco de dados criado anteriormente
	use sistemabiblioteca;
	
	-- Criar a tabela bibliotecas
	CREATE TABLE bibliotecas (
		id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
		nome varchar(45) NOT NULL,
		endereco varchar(45) NOT NULL
	);

	-- Criar a tabela usuarios
	CREATE TABLE usuarios (
		id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
		nome varchar(45) NOT NULL,
		email varchar(45) NOT NULL,
		curso varchar(45) NOT NULL
	);

	-- Criar a tabela livros
	CREATE TABLE livros (
		id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
		nome varchar(45) NOT NULL,
		editora varchar(45) NOT NULL,
		isbn varchar(45) NOT NULL,
		autor varchar(45) NOT NULL,
		tema varchar(45) NOT NULL	
	);

	-- Criar a tabela exemplares
	CREATE TABLE exemplares (
		id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
		bibliotecaID int NOT NULL,
		livroID int NOT NULL,
		edicao varchar(45) NOT NULL,
		paginas int NOT NULL,
		publicacao varchar(45) NOT NULL,
		
		-- Colocara as chaves estrangeiras
		FOREIGN KEY (bibliotecaID) REFERENCES bibliotecas(id),
		FOREIGN KEY (livroID) REFERENCES livros(id)
	);

	-- Criar a tabela emprestimos
	CREATE TABLE emprestimos (
		id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
		usuarioID int NOT NULL,
		exemplarID int NOT NULL,
		bibliotecaID int NOT NULL,
		datadevolucao date NOT NULL,
		dataemprestimo date NOT NULL,

		-- Colocara as chaves estrangeiras
		FOREIGN KEY (usuarioID) REFERENCES usuarios(id),
		FOREIGN KEY (exemplarID) REFERENCES exemplares(id),
		FOREIGN KEY (bibliotecaID) REFERENCES bibliotecas(id)	
	);


-- Inserindo novos registros
	-- 4 Bibliotecas
	INSERT INTO bibliotecas (nome, endereco) VALUES ('Engenharia', 'Antonio Carlos');
	INSERT INTO bibliotecas (nome, endereco) VALUES ('ICEX', 'Antonio Carlos');
	INSERT INTO bibliotecas (nome, endereco) VALUES ('Coltec', 'Antonio Carlos');
	INSERT INTO bibliotecas (nome, endereco) VALUES ('central', 'Antonio Carlos');
	
	-- 10 Usuarios
	INSERT INTO usuarios (nome, email, curso) VALUES('João', 'gui@gmail.com', 'Info');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui2', 'gui@gmail.com', 'Info');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui3', 'gui@gmail.com', 'Quimica');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui4', 'gui@gmail.com', 'Quimica');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui5', 'gui@gmail.com', 'Info');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui6', 'gui@gmail.com', 'Info');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui7', 'gui@gmail.com', 'Quimica');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui8', 'gui@gmail.com', 'Quimica');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui9', 'gui@gmail.com', 'Info');
	INSERT INTO usuarios (nome, email, curso) VALUES('gui10', 'gui@gmail.com', 'Info');
	
	
	-- 3 Livros
	INSERT INTO livros (nome, editora, isbn, autor, tema) VALUES('Sistemas Digitais', 'editora bacana', '123', 'Tocci', 'Informatica');
	INSERT INTO livros (nome, editora, isbn, autor, tema) VALUES('Como me tornei estupido', 'Alguma editora francesa', '321', 'Martin Page', 'Ficcao');
	INSERT INTO livros (nome, editora, isbn, autor, tema) VALUES('Livro bacana','Editora bacana', '123321', 'Autor bacana', 'Tema bacana');
	
	-- 10 Exemplares
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (1, 1, 'Primeira Edicao', 2008, 200);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (1, 1, 'Segunda Edicao', 2009, 300);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (1, 1, 'Terceira Edicao', 2010, 400);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (2, 2, 'Primeira Edicao', 2011, 500);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (2, 2, 'Segunda Edicao', 2012, 600);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (2, 2, 'Terceira Edicao', 1013, 700);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (3, 3, 'Primeira Edição', 2014, 800);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (2, 3, 'Segunda Edicao', 2015, 900);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (1, 4, 'Terceira Edição', 2016, 1000);
	INSERT INTO exemplares (livroID, bibliotecaID, edicao, publicacao, paginas) VALUES (2, 4, 'Quarta Edição', 2017, 1100);
	
	-- 8 Emprestimos
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (1, 1, 1, '2018-01-01', '2019-01-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (2, 2, 2, '2018-02-01', '2019-02-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (3, 3, 3, '2018-03-01', '2019-03-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (4, 4, 4, '2018-04-01', '2019-04-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (5, 5, 1, '2018-05-01', '2019-05-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (6, 6, 2, '2018-06-01', '2019-06-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (7, 7, 3, '2018-07-01', '2019-07-01');
	INSERT INTO emprestimos (usuarioID, exemplarID, bibliotecaID, dataemprestimo, datadevolucao) VALUES (8, 8, 4, '2018-08-01', '2019-08-01'); 
	
	
-- Realizando consultas no SGBD
	-- 1. Listar o nome de todas as bibliotecas
	SELECT nome FROM bibliotecas;
	
	-- 2. Listar o nome de todos os usuários do curso de informática
	SELECT nome FROM usuarios WHERE curso LIKE 'Info';
	
	-- 3. Listar o nome e autor dos livros de computação
	SELECT nome, autor FROM livros WHERE tema LIKE 'Informatica';
	
	-- 4. Listar os exemplares que foram publicados após os anos de 2010
	SELECT * FROM exemplares WHERE publicacao > 2010;
	
	-- 5. Listar os exemplares cadastrados na biblioteca central
	SELECT l.nome AS 'Livro', b.nome AS 'Biblioteca' FROM exemplares 
	INNER JOIN livros l ON l.id = exemplares.livroID
    INNER JOIN bibliotecas b ON b.id = exemplares.bibliotecaID WHERE b.nome LIKE 'central';
	
	-- 6. Listar todos os empréstimos realizados pelo usuário 'João'
	SELECT u.nome AS 'Usuario', l.nome AS 'Livro' FROM emprestimos 
    INNER JOIN livros l ON l.id = emprestimos.exemplarID
	INNER JOIN usuarios u ON u.id = emprestimos.usuarioID WHERE u.nome LIKE 'João';
	
	-- 7. Listar os empréstimos de 'João' feitos na biblioteca central
	SELECT u.nome AS 'Usuario', l.nome AS 'Livro', b.nome AS 'Biblioteca' FROM emprestimos 
    INNER JOIN livros l ON l.id = emprestimos.exemplarID
	INNER JOIN usuarios u ON u.id = emprestimos.usuarioID
	INNER JOIN bibliotecas b ON b.id = emprestimos.bibliotecaID WHERE b.nome LIKE 'central' AND u.nome LIKE 'João';
	
	-- 8. Listar o nome dos exemplares que foram emprestados pelo menos uma vez (procure saber sobre o comando DISTINCT)
	SELECT DISTINCT l.nome FROM emprestimos
	INNER JOIN exemplares e ON emprestimos.exemplarID = e.id
	INNER JOIN livros l ON e.livroID = l.id;
	
	-- 9. Listar as bibliotecas que realizarem empréstimos pelo menos uma vez (procure saber sobre o comando DISTINCT)
	SELECT DISTINCT b.nome FROM emprestimos
	INNER JOIN bibliotecas b ON emprestimos.bibliotecaID = b.id;
	