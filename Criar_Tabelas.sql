CREATE DATABASE BankSystem;

USE BankSystem;

CREATE TABLE clientes  (
cpf VARCHAR(11),
nome VARCHAR(100) NOT NULL,
endereço VARCHAR(200),
telefone VARCHAR(15),
data_nascimento DATETIME NOT NULL,
			
CONSTRAINT pk_cliente PRIMARY KEY(cpf)
);

CREATE TABLE agencias (
codigo INT,
nome VARCHAR(45) NOT NULL,
endereco VARCHAR(200) NOT NULL,
data_criacao DATETIME,
			
CONSTRAINT pk_agencia PRIMARY KEY(codigo),
CONSTRAINT uk_agencia_nome UNIQUE(nome)
);

CREATE TABLE contas (
numero INT,
agencia INT NOT NULL,
saldo DECIMAL(10.2) NOT NULL,
tipo_conta VARCHAR(45),
cpf_cliente VARCHAR(11) NOT NULL,
			
CONSTRAINT pk_conta PRIMARY KEY(numero, agencia),
CONSTRAINT conta_agencia_fk FOREIGN KEY(agencia)
	REFERENCES agencias(codigo),
CONSTRAINT conta_cliente_fk FOREIGN KEY(cpf_cliente)
	REFERENCES clientes(cpf)
);

CREATE TABLE transacoes  (
id INT,
conta_numero_origem INT NOT NULL,
conta_agencia_origem INT NOT NULL,
conta_numero_destino INT,
conta_agencia_destino INT,
data_transacao DATETIME NOT NULL,
valor DECIMAL(10,2) NOT NULL,
tipo ENUM('d','s','t') NOT NULL,

CONSTRAINT pk_transacoes PRIMARY KEY(id),
CONSTRAINT transacoes_contas_numero_origem_fk FOREIGN KEY(conta_numero_origem)
	REFERENCES contas(numero),
CONSTRAINT transacoes_contas_agencia_origem_fk FOREIGN KEY(conta_agencia_origem)
	REFERENCES contas(agencia),
CONSTRAINT transacoes_contas_numero_destino_fk FOREIGN KEY(conta_numero_destino)
	REFERENCES contas(numero),
CONSTRAINT transacoes_contas_agencia_destino_fk FOREIGN KEY(conta_agencia_destino)
	REFERENCES contas(agencia)
);
    