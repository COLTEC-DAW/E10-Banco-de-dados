CREATE DATABASE daw;
USE daw;

CREATE TABLE clientes (
	cpf VARCHAR(11), 
	nome VARCHAR(100) NOT NULL,
	endereco VARCHAR(200),
	telefone VARCHAR(15),
	data_nascimento DATETIME NOT NULL,

	PRIMARY KEY (cpf)
);

CREATE TABLE agencias (
	codigo INT AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
	endereco VARCHAR(200) NOT NULL,
    data_criacao DATETIME,
    
    PRIMARY KEY (codigo)
);


CREATE TABLE contas (
	numero INT AUTO_INCREMENT,
    agencia INT,
    saldo DECIMAL (10,2) NOT NULL,
    tipo VARCHAR(45),
    clientes_cpf VARCHAR(11),
    
    PRIMARY KEY (numero, agencia),
    
    
    CONSTRAINT contas_clientes_fk FOREIGN KEY (clientes_cpf)
		REFERENCES clientes(cpf),
    
    
    CONSTRAINT contas_agencias_fk FOREIGN KEY (agencia) 
		REFERENCES agencias(codigo)
);


CREATE TABLE transacoes(
	id INT AUTO_INCREMENT,
    
    contas_numero_origem INT NOT NULL,
    contas_agencia_origem INT NOT NULL,
    contas_numero_destino INT,
    contas_agencia_destino INT,
    
    data_transacao DATETIME NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tipo ENUM ('d','s', 't') NOT NULL,
    
    PRIMARY KEY (id),
    
	CONSTRAINT transacoes_contas_origem_fk FOREIGN KEY (contas_numero_origem)
		REFERENCES contas(numero),
    
    CONSTRAINT transacoes_agencias_origem_fk FOREIGN KEY (contas_agencia_origem)
		REFERENCES agencias(codigo),
    
    CONSTRAINT transacoes_contas_destino_fk FOREIGN KEY (contas_numero_destino)
		REFERENCES contas(numero),
    
    CONSTRAINT transacoes_agencia_destino_fk FOREIGN KEY (contas_agencia_destino)
		REFERENCES agencias(codigo)
    
);

