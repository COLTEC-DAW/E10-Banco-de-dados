CREATE DATABASE bankingsys;
USE bankingsys;

CREATE TABLE clientes(
	cpf INT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
	data_nascimento DATETIME NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY(cpf)
);

CREATE TABLE agencias(
	codigo INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(90) NOT NULL,
    data_criacao DATETIME NOT NULL,
    CONSTRAINT agencia_pk PRIMARY KEY (codigo)
);

CREATE TABLE contas(
	codigo INT,
    cpf_dono INT NOT NULL,
    cod_agencia INT NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    CONSTRAINT conta_pk PRIMARY KEY(codigo),
    CONSTRAINT conta_cliente_fk FOREIGN KEY (cpf_dono)
		REFERENCES clientes(cpf),
	CONSTRAINT conta_agencia_fk FOREIGN KEY (cod_agencia)
		REFERENCES agencias(codigo)
);

CREATE TABLE transacoes(
	id INT,
    cod_conta_origem INT NOT NULL,
    cod_conta_destino INT,
    valor DECIMAL(10,2) NOT NULL,
    tipo ENUM('deposito', 'saque') NOT NULL, -- depósito e saque
    CONSTRAINT transacoes_pk PRIMARY KEY(id),
    CONSTRAINT transacoes_contas_fk FOREIGN KEY (cod_conta_origem)
		REFERENCES contas(codigo),
	CONSTRAINT transacoes_destino_fk FOREIGN KEY (cod_conta_destino)
		REFERENCES contas(codigo)
);

SHOW TABLES;

DESC agencias;
DESC clientes;
DESC contas;
DESC transacoes;