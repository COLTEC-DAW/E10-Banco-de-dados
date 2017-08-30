CREATE TABLE Bibliotecas(
	id INT(4) AUTO_INCREMENT,
	nome VARCHAR(30),
	endereco VARCHAR(30),
	CONSTRAINT pk_id PRIMARY KEY (id)
);

CREATE TABLE Livros(
	id INT(4) AUTO_INCREMENT ,
	nome VARCHAR(30),
	autor VARCHAR(30),
    editora VARCHAR(30),
    isbn VARCHAR(30),
    tema VARCHAR(30),
    
	CONSTRAINT pk_id PRIMARY KEY (id)
);

CREATE TABLE Usuarios(
	id INT(4) AUTO_INCREMENT,
	nome VARCHAR(30),
	email VARCHAR(30),
	curso VARCHAR(30),

	CONSTRAINT pk_id PRIMARY KEY (id)
);

CREATE TABLE Exemplares (
     id INT AUTO_INCREMENT,
     num_pags INT,
     edicao INT,
     ano YEAR,
     isbn VARCHAR(4),
     id_bib INT,
     id_liv INT,
     
     CONSTRAINT pk_id PRIMARY KEY (id),
     CONSTRAINT fk_id_liv FOREIGN KEY (id_liv) REFERENCES Livros (id),
     CONSTRAINT fk_id_bib FOREIGN KEY (id_bib) REFERENCES Bibliotecas (id)
 );

CREATE TABLE Emprestimos (
    id INT AUTO_INCREMENT,
    data_emp DATE,
    data_dev DATE,
    id_exemp INT,
    id_usuario INT,
    id_bib INT,
    
    CONSTRAINT pk_id PRIMARY KEY (id),
    CONSTRAINT fk_id_exemplar FOREIGN KEY (id_exemp) REFERENCES Exemplares (id),
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES Usuarios (id),
    CONSTRAINT fk_id_bib_emprestimos FOREIGN KEY (id_bib) REFERENCES Bibliotecas (id)
);

INSERT INTO Bibliotecas (`nome`, `endereco`) VALUES
	("BibliotecColtec", "Coltec"),
	("BibliotecaLetras", "Letras"),
	("BibliotecaIcex", "Icex"),
	("BibliotecaCentral", "Central");

INSERT INTO Livros (`nome`, `autor`, `editora`, `isbn`, `tema`) VALUES
	("Guerra do Velho", "Pedro", "Aleph", "1234", "Ficção científica"),
	("Livrinho", "Paulo", "Ler", "4321", "Infantil"),
	("Introdução a C", "João", "Prog", "2431", "Computação");

INSERT INTO Usuarios (`nome`, `email`, `curso`) VALUES 
	("Paulo", "paulo@gmail.com", "Informatica"),
	("Gustavo", "gustavo@gmail.com", "Informatica"),
	("Eduardo", "eduardo@gmail.com", "Quimica"),
	("Lucas", "lucas@gmail.com", "Quimica"),
	("Raul", "raul@gmail.com", "Eletronica"),
	("Arthur", "arthur@gmail.com", "Eletronica"),
	("Fernando", "fernando@gmail.com", "Analises"),                                                                                                                                                               
	("Carol", "carol@gmail.com", "Analises"),
	("Ananda", "ananda@gmail.com", "Automacao"),
	("Wender", "wender@gmail.com", "Automacao");

INSERT INTO Exemplares(`num_pags`, `edicao`, `ano`, `id_bib`, `isbn`) VALUES 
	(100, 10, "2000", 1, "123456789"),
	(150, 20, "2001", 3, "987465432"),
	(200, 30, "2002", 1, "441513216"),
	(250, 40, "2003", 2, "163158648"),
	(300, 50, "2004", 2, "489415165"),
	(350, 60, "2005", 3, "894565465"),
	(400, 70, "2006", 1, "741541544"),
	(450, 80, "2007", 2, "416565132"),
	(500, 90, "2008", 3, "515415411"),
	(550, 100, "2009", 1, "545154151");

INSERT INTO Emprestimos (`data_emp`, `data_dev`, `id_exemp`, `id_usuario`, `id_bib`) VALUES 
	("2017-08-15", "2017-09-20", 1, 1, 1),
	("2017-07-15", "2017-08-20", 2, 2, 2),
	("2017-06-15", "2017-07-20", 3, 3, 3),
	("2017-05-15", "2017-06-20", 4, 4, 1),
	("2017-04-15", "2017-05-20", 5, 5, 2),
	("2017-03-15", "2017-04-20", 6, 6, 3),
	("2017-02-15", "2017-03-20", 7, 7, 1),
	("2017-01-15", "2017-02-20", 8, 8, 2);


SELECT nome FROM Bibliotecas;

SELECT nome FROM Usuarios WHERE curso = "Informatica";

SELECT nome, autor FROM Livros WHERE tema = "Computacao";

SELECT * FROM Exemplares WHERE ano > "2010";

SELECT Exemplares.id, Exemplares.isbn FROM Exemplares JOIN Bibliotecas ON Exemplares.id_bib = Bibliotecas.id WHERE Bibliotecas.nome = "Central";

SELECT Emprestimos.*, Usuarios.nome FROM Emprestimos JOIN Usuarios ON Emprestimos.id_usuario = Usuarios.id WHERE Usuarios.nome LIKE "João%";

SELECT Emprestimos.*, Usuarios.nome, Bibliotecas.nome FROM Emprestimos JOIN Usuarios ON Emprestimos.id_usuario = Usuarios.id JOIN Bibliotecas ON Emprestimos.id_bib = Bibliotecas.id WHERE Usuarios.nome LIKE "João%" AND Bibliotecas.nome = "Central";

SELECT DISTINCT Livros.nome FROM Emprestimos JOIN Exemplares ON Emprestimos.id_exemp = Exemplares.id JOIN Livros ON Exemplares.isbn = Livros.isbn;

SELECT DISTINCT Bibliotecas.nome FROM Emprestimos JOIN Exemplares ON Emprestimos.id_exemp = Exemplares.id JOIN Bibliotecas ON Exemplares.id_bib = Bibliotecas.id;