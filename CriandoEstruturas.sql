/* Criando Banco de dados */

CREATE DATABASE SistemaBibliotecario;
USE SistemaBibliotecario;


/* Criando tabelas */

CREATE TABLE biblioteca (
	bib_id int NOT NULL AUTO_INCREMENT,
	bib_nome varchar(50) NOT NULL,
	bib_endereco varchar(50) NOT NULL,
	
    PRIMARY KEY (bib_id)
);

CREATE TABLE livro (
	ISBN int NOT NULL,
	liv_nome varchar(50) NOT NULL,
	liv_autor varchar(50) NOT NULL,
	liv_editora varchar(50),
	liv_tema varchar(50),
    
    PRIMARY KEY (ISBN)
);

CREATE TABLE usuario (
	user_id int NOT NULL AUTO_INCREMENT,
	user_nome varchar(50) NOT NULL,
	user_curso varchar(50) NOT NULL,
	user_email varchar(50) NOT NULL,
	
    PRIMARY KEY (user_id)
);


CREATE TABLE exemplar (
	id int NOT NULL AUTO_INCREMENT,
	edicao int NOT NULL,
	num_paginas int NOT NULL,
	ano_de_publicacao smallint NOT NULL,
    liv_id int NOT NULL,
    bib_id int NOT NULL,
	
    PRIMARY KEY (id),
	FOREIGN KEY (liv_id) REFERENCES livro(ISBN),
    FOREIGN KEY (bib_id) REFERENCES biblioteca(bib_id)
);

CREATE TABLE emprestimo (
	id int NOT NULL AUTO_INCREMENT,
	data_do_emprestimo date NOT NULL,
	data_da_devolucao date NOT NULL,
    exemplar_id int NOT NULL,
    user_id int NOT NULL,
    bib_id int NOT NULL,
    
	PRIMARY KEY (id),
	FOREIGN KEY (exemplar_id) REFERENCES exemplar(id),
	FOREIGN KEY (user_id) REFERENCES usuario(user_id),
    FOREIGN KEY (bib_id) REFERENCES biblioteca(bib_id)

);