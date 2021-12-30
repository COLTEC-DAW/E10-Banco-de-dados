USE TODOLIST;

CREATE TABLE clientes(
	cpf VARCHAR(11),
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    data_nascimento DATETIME NOT NULL,
    
    CONSTRAINT clientes_pk PRIMARY KEY(cpf)
);

CREATE TABLE contas(
	numero INT,
    agencia INT NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45),
    clientes_cpf VARCHAR(11),
    
    CONSTRAINT contas_pk PRIMARY KEY(numero),
    CONSTRAINT agencia_fk FOREIGN KEY(agencia)
		REFERENCES agencias(codigo),
    CONSTRAINT clientes_cpf_fk FOREIGN KEY(clientes_cpf)
		REFERENCES clientes(cpf)
);

CREATE TABLE agencias(
	codigo INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    data_criacao DATETIME,
    
    CONSTRAINT agencias_pk PRIMARY KEY(codigo)
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
    
    CONSTRAINT transacoes_pk PRIMARY KEY(id),
    CONSTRAINT contas_numero_origem_fk FOREIGN KEY(contas_numero_origem)
		REFERENCES contas(numero),
	CONSTRAINT contas_agencia_origem_fk FOREIGN KEY(contas_agencia_origem)
		REFERENCES contas(agencia),
	CONSTRAINT contas_numero_destino_fk FOREIGN KEY(contas_numero_destino)
		REFERENCES contas(numero),
	CONSTRAINT contas_agencia_destino_fk FOREIGN KEY(contas_agencia_destino)
		REFERENCES contas(agencia)
);