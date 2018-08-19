DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca


CREATE TABLE IF NOT EXISTS usuarios(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  curso VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS livros(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  autor VARCHAR(45) NOT NULL,
  editora VARCHAR(45) NOT NULL,
  isbn VARCHAR(45) NOT NULL,
  tema VARCHAR(45) NOT NULL
);


CREATE TABLE IF NOT EXISTS bibliotecas(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(90) NOT NULL
);

CREATE TABLE IF NOT EXISTS exemplares(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  edicao VARCHAR(45) NOT NULL,
  ano_publicacao INT NOT NULL,
  num_paginas INT NOT NULL,
  livro_id INT NOT NULL,
  biblioteca_id INT NOT NULL,
  CONSTRAINT fk_livro FOREIGN KEY (livro_id) REFERENCES livros(id),
  CONSTRAINT fk_biblioteca_exemplares FOREIGN KEY (biblioteca_id) REFERENCES bibliotecas(id)
);

CREATE TABLE IF NOT EXISTS emprestimos(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  data_devolucao DATE NOT NULL,
  data_emprestimo DATE NOT NULL,
  exemplar_id INT NOT NULL,
  usuario_id INT NOT NULL,
  biblioteca_id INT NOT NULL,
  CONSTRAINT fk_exemplar FOREIGN KEY (exemplar_id) REFERENCES exemplares(id),
  CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  CONSTRAINT fk_biblioteca_emprestimos FOREIGN KEY (biblioteca_id) REFERENCES bibliotecas(id)
);
