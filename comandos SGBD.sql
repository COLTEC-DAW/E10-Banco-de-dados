CREATE DATABASE sistemabancario;

USE sistemabancario;

CREATE TABLE clientes(
	cpf VARCHAR(11),
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    data_nascimento DATETIME NOT NULL,
    
    CONSTRAINT pk_cliente PRIMARY KEY(cpf)
);

CREATE TABLE contas(
	numero INT,
    agencia INT,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45),
    clientes_cpf VARCHAR(11) NOT NULL,
    
    CONSTRAINT pk_conta PRIMARY KEY(numero),
    CONSTRAINT fk_contas_agencias FOREIGN KEY(agencia)
		REFERENCES agencias(codigo),
	CONSTRAINT fk_contas_clientes FOREIGN KEY(clientes_cpf)
		REFERENCES clientes(cpf)
);

CREATE TABLE agencias(
	codigo INT,
    agencia INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_criacao DATETIME,
    
    CONSTRAINT pk_agencia PRIMARY KEY(codigo)
);

CREATE TABLE transacoes(
	id INT,
    contas_numero_origem INT NOT NULL,
    contas_agencia_origem INT NOT NULL,
    contas_numero_destino INT,
    contas_agencia_destino INT,
    data_transacao DATETIME NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tipo ENUM('d','s','t') NOT NULL,
    
    CONSTRAINT pk_conta PRIMARY KEY(id),
    CONSTRAINT fk_transacoes_contas_origem FOREIGN KEY(contas_numero_origem)
		REFERENCES contas(numero),
	CONSTRAINT fk_transacoes_agencias_origem FOREIGN KEY(contas_agencia_origem)
		REFERENCES contas(agencia),
	CONSTRAINT fk_transacoes_contas_destino FOREIGN KEY(contas_numero_destino)
		REFERENCES contas(numero),
	CONSTRAINT fk_transacoes_agencias_destino FOREIGN KEY(contas_agencia_destino)
		REFERENCES contas(agencia)
);