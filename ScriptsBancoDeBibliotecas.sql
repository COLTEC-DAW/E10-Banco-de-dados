

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



