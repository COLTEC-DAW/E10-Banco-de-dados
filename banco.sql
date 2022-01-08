CREATE DATABASE banco;
USE banco;

CREATE TABLE cliente (
	id INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(200) NULL,
    telefone VARCHAR(15) NULL,
    data_nascimento DATETIME NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
); 

CREATE TABLE agencia (
	id INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_criacao DATETIME NULL,
    CONSTRAINT agencia_pk PRIMARY KEY (id)
);

CREATE TABLE conta (
	id INT NOT NULL,
    numero INT NOT NULL,
    agencia_id INT NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45) NULL,
    cliente_id INT NOT NULL,
    CONSTRAINT contas_pk PRIMARY KEY (id),
    CONSTRAINT cliente_fk FOREIGN KEY (cliente_id)
		REFERENCES cliente(id),
	CONSTRAINT agencia_fk FOREIGN KEY (agencia_id)
		REFERENCES agencia(id)
);

CREATE TABLE transacao (
	id INT NOT NULL,
    id_conta_origem INT NOT NULL,
    id_conta_destino INT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_transacao DATETIME NOT NULL,
    tipo ENUM('s', 'd') NOT NULL,
	CONSTRAINT transacoes_conta_fk FOREIGN KEY (id_conta_origem)
		REFERENCES conta(id),
	CONSTRAINT transacoes_destino_fk FOREIGN KEY (id_conta_destino)
		REFERENCES conta(id)
); 