-- Criação do database
CREATE SCHEMA `daw_17/12`;
-- Selecionando o database
USE `daw_17/12`;

-- Criação da tabela de clientes
CREATE TABLE cliente(
	Cpf 	 INT 			 NOT NULL,
    Nome 	 VARCHAR(45) 	 NOT NULL,
    Endereco VARCHAR(45) 	 NOT NULL,
    Telefone VARCHAR(45) 	 NOT NULL,
    Data_nascimento DATETIME NOT NULL,
    
    CONSTRAINT cliente_pk PRIMARY KEY (Cpf)
);

-- Criação da tabela de agências
CREATE TABLE agencia(
	Codigo 			INT    		NOT NULL,
    Nome 			VARCHAR(45)	NOT NULL,
    Endereco 		VARCHAR(45)	NOT NULL,
    Data_criacao	DATETIME 	NOT NULL,
    
    CONSTRAINT agencia_pk PRIMARY KEY (Codigo)
);

-- Criação da tabela de contas
CREATE TABLE conta(
	Codigo 			INT    		NOT NULL,
    Saldo 			FLOAT 		NOT NULL,
    Tipo 			VARCHAR(45) NOT NULL,
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
    Tipo 			VARCHAR(45) NOT NULL,
    Conta_origem 	INT 		NOT NULL,
    Conta_destino 	INT,		-- SE == NULL -> Retirou o dinheiro no caixa
    
    CONSTRAINT transacao_pk PRIMARY KEY(Id),
    CONSTRAINT transacao_origem_fk  FOREIGN KEY (Conta_origem)  REFERENCES conta(Codigo),
    CONSTRAINT transacao_destino_fk FOREIGN KEY (Conta_destino) REFERENCES conta(Codigo)    
);