CREATE DATABASE sistemaBancario;

USE sistemaBancario;

CREATE TABLE agencias (
	PRIMARY KEY	(codigo),
	
    codigo			INT				NOT NULL,
    nome			VARCHAR(45)		NOT NULL,
    endereco		VARCHAR(200)	NOT NULL,
    data_criacao	DATE
);

CREATE TABLE clientes (
	PRIMARY KEY	(cpf),
    
	cpf				VARCHAR(11)		NOT NULL,
    nome			VARCHAR(100)	NOT NULL,
    endereco		VARCHAR(200)	,
    telefone		VARCHAR(15)		,
    data_nascimento	DATETIME		NOT NULL
);

CREATE TABLE contas (
    PRIMARY KEY	(numero, agencia),
    
	numero			INT				NOT NULL,
    agencia			INT				NOT NULL,
					CONSTRAINT contas_agencias_fk FOREIGN KEY (agencia)
						REFERENCES agencias (codigo),
    saldo			DECIMAL(10, 2)	NOT NULL,
    tipo			VARCHAR(45)		,
    clientes_cpf	VARCHAR(11)		NOT NULL,
					CONSTRAINT contas_clientes_fk FOREIGN KEY (clientes_cpf)
						REFERENCES clientes (cpf)
);

CREATE TABLE transacoes (
	PRIMARY KEY (id),

	id						INT					NOT NULL,
    contas_numero_origem	INT					NOT NULL,
							CONSTRAINT transacoes_contas_numero_origem_fk FOREIGN KEY (contas_numero_origem)
							REFERENCES contas (numero),
    contas_agencia_origem	INT					NOT NULL,
							CONSTRAINT transacoes_contas_agencia_origem_fk FOREIGN KEY (contas_agencia_origem)
							REFERENCES contas (agencia),
    contas_numero_destino	INT					,
							CONSTRAINT transacoes_contas_numero_destino_fk FOREIGN KEY (contas_numero_destino)
							REFERENCES contas (numero),
    contas_agencia_destino	INT					,
							CONSTRAINT transacoes_contas_agencia_destino_fk FOREIGN KEY (contas_agencia_destino)
							REFERENCES contas (agencia),
    data_transacao			DATETIME			NOT NULL,
    valor					DECIMAL(10, 2)		NOT NULL,
    tipo					ENUM('d', 's', 't')	NOT NULL
);

SHOW COLUMNS FROM agencias;
SHOW COLUMNS FROM clientes;
SHOW COLUMNS FROM contas;
SHOW COLUMNS FROM transacoes;

