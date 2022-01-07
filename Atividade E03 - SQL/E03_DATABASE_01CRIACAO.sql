-- Developed by Alexandre Hobbes

CREATE DATABASE e03;
USE e03;

CREATE TABLE clientes 
(
	cpf VARCHAR(30),
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    CONSTRAINT clientes_pk PRIMARY KEY(cpf)
);
CREATE TABLE agencias
(
	codigo INT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_criacao DATE NOT NULL,
    CONSTRAINT agencias_pk PRIMARY KEY (codigo)
);
CREATE TABLE contas
(
	numero INT, 
    agencia INT,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    clientes_cpf VARCHAR(30),
    CONSTRAINT contas_pk PRIMARY KEY (numero),
    CONSTRAINT contas_agencias_fk FOREIGN KEY (agencia) REFERENCES agencias(codigo),
    CONSTRAINT contas_clientes_fk FOREIGN KEY (clientes_cpf) REFERENCES clientes(cpf)
);

CREATE TABLE transacoes
(
	id INT,
    contas_numero_origem INT,
    contas_agencia_origem INT,
    contas_numero_destino INT,
    contas_agencia_destino INT,
    data_transacao DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tipo ENUM('d', 's', 't') NOT NULL,
    CONSTRAINT transacoes_pk PRIMARY KEY (id),
    CONSTRAINT transacoes_contas_numero_origem_fk FOREIGN KEY (contas_numero_origem) REFERENCES contas(numero),
    CONSTRAINT transacoes_contas_agencia_origem_fk FOREIGN KEY (contas_agencia_origem) REFERENCES contas(agencia),
    CONSTRAINT transacoes_contas_numero_destino_fk FOREIGN KEY (contas_numero_destino) REFERENCES contas(numero),
    CONSTRAINT transacoes_contas_agencia_destino_fk FOREIGN KEY (contas_agencia_destino) REFERENCES contas(agencia)
);