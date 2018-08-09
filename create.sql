create database if not exists exerciciobiblioteca;
use exerciciobiblioteca;

create table if not exists bibliotecas(
	id int not null primary key auto_increment,
	nome varchar(45) not null,
	endereco varchar(80) not null
)ENGINE=INNODB;;

create table if not exists livros(
	id int not null primary key auto_increment,
	nome varchar(255) not null,
	autor varchar(255) not null,
	isbn varchar(25) not null unique,
	tema varchar(45) not null
)ENGINE=INNODB;

create table if not exists usuarios(
	id int not null primary key auto_increment,
	nome varchar(45) not null,
	email varchar(80) not null,
	curso varchar(40) not null
)ENGINE=INNODB;
create table if not exists exemplares(
	id int not null primary key auto_increment,
	id_livro int not null,
	id_biblioteca int not null,
	edicao varchar(20) not null,
	publicacao int not null,
	paginas int not null,

	FOREIGN KEY (id_livro) REFERENCES livros(id),
	FOREIGN KEY (id_biblioteca) REFERENCES bibliotecas(id)
)ENGINE=INNODB;

create table if not exists emprestimos(
	id int not null primary key auto_increment,
	id_usuario int not null,
	id_exemplar int not null,
	id_biblioteca int not null,
	data_devolucao datetime not null,
	data_emprestimo datetime not null,

	FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
	FOREIGN KEY (id_exemplar) REFERENCES exemplares(id),
	FOREIGN KEY (id_biblioteca) REFERENCES bibliotecas(id)
)ENGINE=INNODB;
