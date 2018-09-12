
/*//
//
//  SCRIPTS DE CRIAÇÃO DAS TABELAS
//
//*/

CREATE TABLE Biblioteca(

idBiblioteca INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
endereço  VARCHAR(45) NOT NULL,

CONSTRAINT pk_idBiblioteca PRIMARY KEY (idBiblioteca)
);

CREATE TABLE Usuários(

idUsuarios INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
e_mail VARCHAR(45) NOT NULL,
curso VARCHAR(10) NOT NULL,

CONSTRAINT pk_idUsuarios PRIMARY KEY (idUsuarios)
);

CREATE TABLE Livros(

idLivros INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
autor VARCHAR(45) NOT NULL,
editora VARCHAR(45) NOT NULL,
ISBN SMALLINT(13) NOT NULL,
tema VARCHAR(45) NOT NULL,

CONSTRAINT pk_idLivros PRIMARY KEY (idLivros)
);

CREATE TABLE Exemplares(

fk_livro_exemplar INT NOT NULL,
fk_cadastro_biblioteca INT NOT NULL,
idExemplar INT NOT NULL AUTO_INCREMENT,
ediçao SMALLINT(3) NOT NULL,
ano_de_publicação SMALLINT(4) NOT NULL,
número_de_páginas SMALLINT(4) NOT NULL,

CONSTRAINT fk_Livro_Exemplar FOREIGN KEY (fk_livro_exemplar) REFERENCES Livros(idLivros),
CONSTRAINT fk_Cadastro_Biblioteca FOREIGN KEY (fk_cadastro_biblioteca) REFERENCES Biblioteca(idBiblioteca),
CONSTRAINT pk_idExemplar PRIMARY KEY (idExemplar)
);

CREATE TABLE Empréstimos(

fk_exemplar_pedido INT NOT NULL,
fk_usuarios INT NOT NULL,
fk_biblioteca_exemplar INT NOT NULL,
idEmprestimo INT NOT NULL AUTO_INCREMENT,
data_de_emprestimo DATE NOT NULL,
data_de_devolucao DATE NOT NULL,

CONSTRAINT fk_Exemplar_Pedido FOREIGN KEY (fk_exemplar_pedido) REFERENCES Exemplares(idExemplar),
CONSTRAINT fk_Usuarios FOREIGN KEY (fk_usuarios) REFERENCES Usuários(idUsuarios),
CONSTRAINT fk_Biblioteca_Exemplar FOREIGN KEY (fk_biblioteca_exemplar) REFERENCES Biblioteca(idBiblioteca),
CONSTRAINT pk_idEmprestimo PRIMARY KEY (idEmprestimo)
);


/*//
//
//  SCRIPTS DE INSERÇÃO DE DADOS NAS TABELAS 
//
//*/

/*Populando as Bibliotecas*/

INSERT INTO Biblioteca (nome, endereço) VALUES ("Biblioteca Central", "Av.Não sei das Quantas,n10");
INSERT INTO Biblioteca (nome, endereço) VALUES ("Biblioteca Incrivelmente Longe", "Barreiro, Rua 1, n2");
INSERT INTO Biblioteca (nome, endereço) VALUES ("Biblioteca Logo Ali", "Av.Esquina de Casa, n3");
INSERT INTO Biblioteca (nome, endereço) VALUES ("Biblioteca Coltec", " Av. Antônio Carlos, 6627");

/*Populando os Usuários*/

INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Ícaro","icaroemd18@outlook.com","Infomito");.
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Guilherme","guildeassis@gmail.com","Infomito");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Mateus B.","mateuxz@hotmail.com","Infomito"); 
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Bela","belinha2000@outlook.com","Análises");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Gustavinho","gujhenrique@outlook.com","Infomito");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("João","jao@outlook.com","Automação");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Zé das Couves","algumacoisaai@outlook.com","Química");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Maria","beldade123@outlook.com","Eletrônica");
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Zeca","zequinha@outlook.com","Química")
INSERT INTO Usuários (nome, e_mail,curso) VALUES ("Luana","luar@outlook.com","Análises ");

/*Populando os Livros*/

INSERT INTO Livros (nome, autor,editora,ISBN,tema) VALUES ("Harry e os 3 porquinhos", "Eu mesmo", "Gráfica COLTEC","2034516845203","Infantil");
INSERT INTO Livros (nome, autor,editora,ISBN,tema) VALUES ("Por aí mesmo", "Alguém Qualquer", "Gráfica CEFET","2034516845352","Adulto");
INSERT INTO Livros (nome, autor,editora,ISBN,tema) VALUES ("SQL Para Iniciantes", "Ícaro Mito", "Lá em casa","1000000000000","Para Todos");

/*Populando os Exemplares*/

INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (1,1,101,2018,250);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (2,2,1,2010,150); 
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (3,3,93,2017,100);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (1,4,2,2013,30);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (2,1,4,1993,120);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (3,2,5,2010,10);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (1,3,6,2016,30);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (2,4,68,2015,250);
INSERT INTO Exemplares(fk_livro_exemplar,fk_cadastro_biblioteca,edição,ano_de_publicação,número_de_páginas) VALUES (3,1,2,2014,250);

/*População de Empréstimos*/

INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (1,3,1,'2018-05-10','2018-05-25');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (2,6,2,'2018-06-12','2018-06-27');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (3,6,3,'2018-06-12','2018-06-27');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (1,6,1,'2018-06-12','2018-05-27');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (6,1,2,'2018-03-10','2018-03-25');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (10,2,2,'2018-09-03','2018-09-17');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (5,3,1,'2018-12-08','2018-12-22');
INSERT INTO Empréstimos(fk_exemplar_pedido, fk_usuario,fk_biblioteca_exemplar,data_de_emprestimo,data_de_devolucao) VALUES (9,4,1,'2018-05-10','2018-05-25');


/*//
//
// SCRIPTS DE CONSULTA
//
//*/


1.SELECT (nome) FROM Biblioteca;
2.SELECT (nome) FROM Usuários WHERE curso LIKE “Infomito”;
3.SELECT nome, autor FROM Livros WHERE tema LIKE "Computação";
4.SELECT idExemplar, ano_de_publicação FROM Exemplares WHERE ano_de_publicação >2010;
5.SELECT e.idExemplar, b.nome FROM Biblioteca b, Exemplares e WHERE e.fk_cadastro_biblioteca =1 AND b.idBiblioteca =1 // SELECT b.nome, e.idExemplar FROM Biblioteca b JOIN Exemplares e ON b.idBiblioteca =1 AND e.fk_cadastro_biblioteca = 1;
6.SELECT u.nome, e.idEmprestimo, e.data_de_emprestimo, e.data_de_devolucao FROM Usuários u JOIN Empréstimos e ON u.idUsuarios =6 AND e.fk_usuario =6;
7.SELECT u.nome AS Nome, e.fk_exemplar_pedido AS Exemplar, b.nome AS Biblioteca FROM Usuários u JOIN Empréstimos e JOIN Biblioteca b ON u.idUsuarios =6 AND e.fk_usuario =6 AND b.idBiblioteca =1 AND e.fk_biblioteca_exemplar =1;




