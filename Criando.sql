CREATE DATABASE BancoDeDados;
USE BancoDeDados;

CREATE TABLE biblioteca(
    nome VARCHAR(20) NOT NULL,
    endereco VARCHAR(40) NOT NULL,
    CONSTRAINT pk_biblioteca PRIMARY KEY (nome)
);
CREATE TABLE livro(
    nome VARCHAR(20) NOT NULL,
    autor VARCHAR(20) NOT NULL,
    editora VARCHAR(20) NOT NULL,
    tema VARCHAR(15) NOT NULL,
    isbn INT NOT NULL,
    CONSTRAINT pk_livro PRIMARY KEY (nome)
);
CREATE TABLE usuario(
    nome VARCHAR(20) NOT NULL,
    curso VARCHAR(15) NOT NULL,
    email VARCHAR(40) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (nome)
);
CREATE TABLE emprestimo(
    DataEmprestimo DATE NOT NULL,
    DataDevolucao DATE NOT NULL,
    CONSTRAINT fk_usuario_emprestimo FOREIGN KEY (usuario_nome)
    REFERENCES usuario(nome),
    CONSTRAINT fk_biblioteca_emprestimo FOREIGN KEY (biblioteca_nome)
    REFERENCES biblioteca(nome),
    CONSTRAINT fk_exemplar_emprestimo FOREIGN KEY (exemplar_nome)
    REFERENCES exemplar(nome)
);
CREATE TABLE exemplar(
    edicao INT NOT NULL,
    paginas INT NOT NULL,
    ano INT NOT NULL,
    CONSTRAINT nome FOREIGN KEY (livro_nome)
    REFERENCES livro(nome),
    CONSTRAINT fk_biblioteca_exemplar FOREIGN KEY (biblioteca_nome)
    REFERENCES biblioteca(nome),
);

INSERT INTO biblioteca (nome, endereco) VALUES ("Biblioteca COLTEC", "Rua do COLTEC");
INSERT INTO biblioteca (nome, endereco) VALUES ("Biblioteca central", "Rua do João");
INSERT INTO biblioteca (nome, endereco) VALUES ("Biblioteca ICEX", "Rua do ICEX");
INSERT INTO biblioteca (nome, endereco) VALUES ("Biblioteca Engenharia", "Rua da Engenharia");

INSERT INTO usuario (nome, curso, email) VALUES ("João", "Rua do João, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Caio", "Rua do Caio, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Mateus", "Rua do Mateus, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Guilherme", "Rua do Guilherme, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Reinaldo", "Rua do Reinaldo, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Germano", "Rua do Germano, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Mathias", "Rua do Mathias, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Ítalo", "Rua do Ítalo, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Gabriel", "Rua do Gabriel, 1222", "wjiaodjwa");
INSERT INTO usuario (nome, curso, email) VALUES ("Bryan", "Rua do Bryan, 1222", "wjiaodjwa");

INSERT INTO livro (nome, autor, editora, tema, isbn) VALUES ("João", "Rua do João", "1222", "sla]", 27);
INSERT INTO livro (nome, autor, editora, tema, isbn) VALUES ("João", "Rua do João", "1222", "nsei", 27);
INSERT INTO livro (nome, autor, editora, tema, isbn) VALUES ("João", "Rua do João", "1222", "sla", 27);

INSERT INTO exemplar (edicao, paginas, ano) VALUES (1, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (2, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (3, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (4, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (5, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (6, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (7, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (8, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (9, 1222, 27);
INSERT INTO exemplar (edicao, paginas, ano) VALUES (10, 1222, 27);

INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
INSERT INTO emprestimo (DataEmprestimo, DataDevolucao) VALUES ("2017-06-15", "2017-06-15");
