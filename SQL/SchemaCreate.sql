create schema if not exists `TransacoesBancarias`;
use `TransacoesBancarias`;

create table Cliente (
	Cpf int NOT NULL,
    Nome varchar(45) NOT NULL,
    Endereco varchar(45) NOT NULL,
    Telephone varchar(45) NOT NULL,
    Data_nascimento datetime NOT NULL,
    PRIMARY KEY(Cpf)
);

create table Agencia (
	Codigo int NOT NULL,
    Nome varchar(45) NOT NULL,
    Endereco varchar(45) NOT NULL,
    Data_criacao datetime NOT NULL,
	PRIMARY KEY(Codigo)
);

create table Conta (
	Id int NOT NULL AUTO_INCREMENT,
    Saldo float NOT NULL,
    Tipo varchar(45) NOT NULL,
    Cliente_dono int NOT NULL,
    Agencia_adm int NOT NULL,
    constraint Cliente_key foreign key(Cliente_dono) references Cliente(Cpf),
    constraint Agencia_key foreign key(Agencia_adm) references Agencia(Codigo),,
    PRIMARY KEY(Id)
);

create table Transacao (
	Id int NOT NULL AUTO_INCREMENT,
    Valor float NOT NULL,
    Tipo varchar(45) NOT NULL,
    Conta_origem int NOT NULL,
    Conta_destino int,
	constraint Conta_Origem_key foreign key(Conta_origem) references Conta(Id),
    constraint Conta_Destino_key foreign key(Conta_destino) references Conta(Id),
    PRIMARY KEY(Id)
);