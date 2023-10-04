-- CREATING DATABASES --

CREATE DATABASE banco;
USE banco;

-- CREATING TABLES --

CREATE TABLE contas
(
    numero INT,
    agencia INT,
    saldo DECIMAL (10,2),
    tipo VARCHAR (45),
    clientes_cpf VARCHAR (11),

    CONSTRAINT pk_contas PRIMARY KEY (numero)--,
    --CONSTRAINT fk_agencia FOREIGN KEY (agencia) REFERENCES agencias(codigo),
    --CONSTRAINT fk_cliente FOREIGN KEY (clientes_cpf) REFERENCES clientes(cpf)
);

CREATE TABLE agencias
(
    codigo INT,
    nome VARCHAR (45),
    endereco VARCHAR (200),
    data_criacao DATETIME,

    CONSTRAINT pk_agencias PRIMARY KEY (codigo)
);

CREATE TABLE transacoes
(
    id INT,
    contas_numero_origem INT,
    contas_agencia_origem INT,
    contas_numero_destino INT,
    contas_agencia_destino INT,
    data_transacao DATETIME,
    valor DECIMAL (10,2),
    tipo ENUM('d', 's', 't'),

    CONSTRAINT pk_transacoes PRIMARY KEY (id)--,
    --CONSTRAINT fk_numero_origem FOREIGN KEY (contas_numero_origem) REFERENCES contas(numero),
    --CONSTRAINT fk_agencia_origem FOREIGN KEY (contas_agencia_origem) REFERENCES contas(agencia),
    --CONSTRAINT fk_numero_destino FOREIGN KEY (contas_numero_destino) REFERENCES contas(numero),
    --CONSTRAINT fk_agencia_destino FOREIGN KEY (contas_agencia_destino) REFERENCES contas(agencia)
);

CREATE TABLE clientes
(
    cpf VARCHAR (11),
    nome VARCHAR (100),
    endereco VARCHAR (200),
    telefone VARCHAR (15),
    data_nascimento DATETIME,

    CONSTRAINT pk_clientes PRIMARY KEY (cpf)
);
