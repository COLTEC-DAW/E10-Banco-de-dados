-- Criação do database
CREATE SCHEMA `db_projeto` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
-- Selecionando o database
USE `db_projeto` ;

-- Criação da tabela de clientes
CREATE TABLE cliente(
	Cpf 	 INT 			 NOT NULL,
    Nome 	 VARCHAR(50) 	 NOT NULL,
    Endereco VARCHAR(50) 	 NOT NULL,
    Telefone INT 	 NOT NULL,
    Data_nascimento DATETIME NOT NULL,

    CONSTRAINT cliente_pk PRIMARY KEY (Cpf)
);

-- Criação da tabela de agências
CREATE TABLE agencia(
	Codigo 			INT    		NOT NULL,
    Nome 			VARCHAR(50)	NOT NULL,
    Endereco 		VARCHAR(50)	NOT NULL,
    Data_criacao	DATETIME 	NOT NULL,

    CONSTRAINT agencia_pk PRIMARY KEY (Codigo)
);

-- Criação da tabela de contas
CREATE TABLE conta(
	Codigo 			INT    		NOT NULL,
    Saldo 			FLOAT 		NOT NULL,
    Tipo 			VARCHAR(50) NOT NULL,
    Cliente_Cpf		INT			NOT NULL,
    Agencia_Codigo 	INT			NOT NULL,

    CONSTRAINT conta_pk PRIMARY KEY (Codigo),
    CONSTRAINT conta_cliente_fk FOREIGN KEY (Cliente_Cpf) 	 REFERENCES cliente(Cpf),
	CONSTRAINT conta_agencia_fk FOREIGN KEY (Agencia_Codigo) REFERENCES agencia(Codigo)    
);

-- Criação da tabela de transações
CREATE TABLE transacao(
	Id	 			INT    		NOT NULL,
    Valor 			FLOAT		NOT NULL,
    Tipo 			VARCHAR(50) NOT NULL,
    Conta_origem 	INT 		NOT NULL,
    Conta_destino 	INT,		

    CONSTRAINT transacao_pk PRIMARY KEY(Id),
    CONSTRAINT transacao_origem_fk  FOREIGN KEY (Conta_origem)  REFERENCES conta(Codigo),
    CONSTRAINT transacao_destino_fk FOREIGN KEY (Conta_destino) REFERENCES conta(Codigo)    
); 