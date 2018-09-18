CREATE DATABASE SistemaBibliotecario;

USE SistemaBibliotecario;

CREATE TABLE bibliotecas (
	nome VARCHAR(40),
    endereço VARCHAR(80),
    id INT NOT NULL,
    
    CONSTRAINT id_biblioteca PRIMARY KEY (id));
    
CREATE TABLE livros (
	nome VARCHAR(40),
    autor VARCHAR(40),
    editora VARCHAR(40),
    tema VARCHAR(40),
    isbn INT NOT NULL,
    
    CONSTRAINT id_livro PRIMARY KEY (isbn));
    
CREATE TABLE usuarios (
	nome VARCHAR(40),
    email VARCHAR(80),
    curso VARCHAR(40),
    id INT NOT NULL,
    
    CONSTRAINT id_usuario PRIMARY KEY (id));
    
CREATE TABLE exemplares (
	id_livro INT NOT NULL,
    id_biblioteca INT NOT NULL,
    id INT NOT NULL,
    edicao INT,
    ano_publicacao INT,
    numero_paginas INT,
    
    CONSTRAINT id_exemplar PRIMARY KEY (id),
    
    CONSTRAINT fk_id_livro FOREIGN KEY (id_livro)
    REFERENCES livros(isbn),
    
    CONSTRAINT fk_id_biblioteca FOREIGN KEY (id_biblioteca)
    REFERENCES bibliotecas(id));
    
CREATE TABLE emprestimos (
	id_exemplar INT NOT NULL,
    id_usuario INT NOT NULL, 
    id_biblioteca INT NOT NULL,
    data_emprestimo DATE,
    data_devolucao DATE,
    
    CONSTRAINT fk_id_exemplar FOREIGN KEY (id_exemplar)
    REFERENCES exemplares(id),
    
    CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario)
    REFERENCES usuarios(id),
    
    CONSTRAINT fk_id_biblioteca1 FOREIGN KEY (id_biblioteca)
    REFERENCES bibliotecas(id));