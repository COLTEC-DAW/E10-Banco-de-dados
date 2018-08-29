CREATE DATABASE sistemaBibliotecario;
USE sistemaBibliotecario;
CREATE TABLE biblioteca(
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(50) NOT NULL,
    CONSTRAINT PK_biblioteca PRIMARY KEY (nome)
);
CREATE TABLE livro(
    Nome VARCHAR(50) NOT NULL,
    Autor VARCHAR(50),
    Editora VARCHAR(50) NOT NULL,
    ISNB INT NOT NULL,
    Tema VARCHAR(50),
    CONSTRAINT PK_livro PRIMARY KEY (nome)
);
CREATE TABLE usuario(
    Nome VARCHAR(50) NOT NULL,
    Curso VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    CONSTRAINT PK_usuario PRIMARY KEY (nome)
);
CREATE TABLE emprestimo(
	UsuarioNome VARCHAR(50),
	ExemplarLivro VARCHAR(50),
	DataDeEmprestimo DATE,
    DataDeDevolucao DATE,
    CONSTRAINT PK_emprestimoUsuario PRIMARY KEY (Usuario_nome),
    CONSTRAINT PK_emprestimoExemplar PRIMARY KEY (ExemplarLivro),
    CONSTRAINT FK_emprestimo_usuario FOREIGN KEY (Usuario_nome)
    REFERENCES usuario(nome),
    CONSTRAINT FK_emprestimo_exemplarLivro FOREIGN KEY (ExemplarLivro)
    REFERENCES exemplar(LivroNome),
);
CREATE TABLE exemplar(
	BibliotecaNome VARCHAR(50) NOT NULL,
	LivroNome VARCHAR(50) NOT NULL,
    NumeroDePaginas INT NOT NULL,
    Edicao INT NOT NULL,
    AnoDePublicacao INT NOT NULL,
    CONSTRAINT FK_exemplar_biblioteca FOREIGN KEY (BibliotecaNome)
    REFERENCES biblioteca(nome),
    CONSTRAINT FK_exemplar_livro FOREIGN KEY (LivroNome)
    REFERENCES livro(nome)
);