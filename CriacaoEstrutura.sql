CREATE DATABASE sistema_bancario;
USE sistema_bancario;

CREATE TABLE cliente (
	id INT NOT NULL,
    cpf VARCHAR(12) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    nascimento DATETIME NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
); 

CREATE TABLE agencia (
	id INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    data_criacao DATETIME NOT NULL,
    CONSTRAINT agencia_pk PRIMARY KEY (id)
);

CREATE TABLE conta (
	id INT NOT NULL,
    tipo VARCHAR(45) NULL,
    saldo DECIMAL(10,2) NOT NULL,
    dono_id INT NOT NULL,
    agencia_id INT NOT NULL,
    CONSTRAINT conta_pk PRIMARY KEY (id),
    CONSTRAINT cliente_fk FOREIGN KEY (dono_id)
		REFERENCES cliente(id),
	CONSTRAINT agencia_fk FOREIGN KEY (agencia_id)
		REFERENCES agencia(id)
);

CREATE TABLE transacoes (
	id INT NOT NULL,
    tipo ENUM('deposito', 'saque') NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_conta_origem INT NOT NULL,
    id_conta_destino INT NOT NULL,
	CONSTRAINT transacoes_conta_fk FOREIGN KEY (id_conta_origem)
		REFERENCES conta(id),
	CONSTRAINT transacoes_destino_fk FOREIGN KEY (id_conta_destino)
		REFERENCES conta(id)
); 