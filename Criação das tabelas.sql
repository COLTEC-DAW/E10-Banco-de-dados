CREATE TABLE cliente(
	cpf INT, 
	nome varchar(45) NOT NULL, 
	dataNascimento DATE NOT NULL, 
	telefone varchar(11) NOT NULL,
	endereco varchar(45) NOT NULL,

	CONSTRAINT cliente_pk PRIMARY KEY (cpf)
);

CREATE TABLE agencia(
	codigo INT,
    nome varchar(45) NOT NULL,
    criacao DATE NOT NULL,
    endereco varchar(45) NOT NULL,
    
    CONSTRAINT agencia_pk PRIMARY KEY (codigo)
);

CREATE TABLE conta(
	codigo INT NOT NULL,
    saldo DECIMAL(8,2) NOT NULL,
    tipo varchar(45) NOT NULL,
    cliente_cpf INT NOT NULL,
    agencia_codigo INT NOT NULL,
    
    CONSTRAINT conta_pk PRIMARY KEY (codigo),
    
    CONSTRAINT conta_cliente_fk FOREIGN KEY (cliente_cpf)
		REFERENCES cliente(cpf),
	CONSTRAINT conta_agencia_fk FOREIGN KEY (agencia_codigo)
		REFERENCES agencia(codigo)
);

CREATE TABLE transacao(
	tipo varchar(45) NOT NULL,
    conta_codigo INT NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    
    CONSTRAINT transacao_pk PRIMARY KEY (tipo),
    
    CONSTRAINT transacao_conta_fk FOREIGN KEY (conta_codigo)
		REFERENCES conta(codigo)
)