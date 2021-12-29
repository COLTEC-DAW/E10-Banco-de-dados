CREATE SCHEMA Sistema_Bancario;
USE sistema_bancario;

CREATE TABLE cliente(
	id INT,
    cpf VARCHAR(14) NOT NULL,
    nome VARCHAR(75) NOT NULL,
    nascimento DATE NOT NULL,
    endereco VARCHAR(75) NOT NULL,
    telefone VARCHAR(17) NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY(id)
);

ALTER TABLE cliente
ADD CONSTRAINT cliente_ak UNIQUE (cpf);

DESC cliente;

CREATE TABLE agencia (
	id INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(75),
    data_criacao DATETIME NOT NULL,
    CONSTRAINT agencia_pk PRIMARY KEY(id)
);

DESC agencia;

CREATE TABLE conta(
	id INT,
    tipo VARCHAR(45)  NOT NULL,
    saldo DECIMAL(10,2)  NOT NULL,
    cliente_id INT NOT NULL,
    agencia_id INT NOT NULL,
    CONSTRAINT conta_pk PRIMARY KEY(id),
    CONSTRAINT conta_cliente_fk FOREIGN KEY(cliente_id)
		REFERENCES cliente(id),
    CONSTRAINT conta_agencia_fk FOREIGN KEY(agencia_id)
		REFERENCES agencia(id)
);

DESC conta;

CREATE TABLE transacao (
	id INT,
    tipo VARCHAR(45) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    conta_id INT NOT NULL,
    CONSTRAINT transacao_pk PRIMARY KEY(id),
    CONSTRAINT transacao_conta_fk FOREIGN KEY(conta_id)
		REFERENCES conta(id)
);

DESC transacao;

