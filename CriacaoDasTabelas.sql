CREATE DATABASE sistemabancario;
USE sistemabancario;

CREATE TABLE clientes (
	id INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(200) NULL,
    telefone VARCHAR(15) NULL,
    data_nascimento DATETIME NOT NULL,
    CONSTRAINT clientes_pk PRIMARY KEY (id)
); 

CREATE TABLE agencias (
	id INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_criacao DATETIME NULL,
    CONSTRAINT agencias_pk PRIMARY KEY (id)
);

CREATE TABLE contas (
	id INT NOT NULL,
    numero INT NOT NULL,
    agencia_id INT NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45) NULL,
    clientes_id INT NOT NULL,
    CONSTRAINT contas_pk PRIMARY KEY (id),
    CONSTRAINT clientes_fk FOREIGN KEY (clientes_id)
		REFERENCES clientes(id),
	CONSTRAINT agencias_fk FOREIGN KEY (agencia_id)
		REFERENCES agencias(id)
);

CREATE TABLE transacoes (
	id INT NOT NULL,
    id_conta_origem INT NOT NULL,
    id_conta_destino INT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_transacao DATETIME NOT NULL,
    tipo ENUM('s', 'd') NOT NULL,
	CONSTRAINT transacoes_contas_fk FOREIGN KEY (id_conta_origem)
		REFERENCES contas(id),
	CONSTRAINT transacoes_destino_fk FOREIGN KEY (id_conta_destino)
		REFERENCES contas(id)
);