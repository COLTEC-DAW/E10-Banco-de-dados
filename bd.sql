CREATE DATABASE daw;
USE daw;

CREATE TABLE clientes (
	cpf INT,
    nome VARCHAR(45) NOT NULL,
    data_de_nascimento DATE,
    endereco VARCHAR(45),
    telefone VARCHAR(45),
    CONSTRAINT clientes_pk PRIMARY KEY(cpf)
);

CREATE TABLE contas (
	codigo INT,
    agencia VARCHAR(45) NOT NULL,
    dono VARCHAR(45) NOT NULL,
    saldo DOUBLE NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    clientes_cpf INT NOT NULL,
    CONSTRAINT contas_pk PRIMARY KEY(codigo),
    CONSTRAINT contas_clientes_fk FOREIGN KEY(clientes_cpf)
		REFERENCES clientes(cpf)
);

CREATE TABLE agencia (
	codigo INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    data_de_criacao DATE,
    CONSTRAINT agencia_pk PRIMARY KEY(codigo)
);

CREATE TABLE transacao (
	id INT,
    valor DOUBLE NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    contas_codigo_origem INT NOT NULL,
    contas_codigo_destino INT NOT NULL,
    CONSTRAINT transacao_pk PRIMARY KEY(id),
    CONSTRAINT transacao_contas_origem_fk FOREIGN KEY(contas_codigo_origem)
		REFERENCES contas(codigo),
	CONSTRAINT transacao_contas_destino_fk FOREIGN KEY(contas_codigo_destino)
		REFERENCES contas(codigo)
);
