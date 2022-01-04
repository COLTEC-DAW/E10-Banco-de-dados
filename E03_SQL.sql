CREATE SCHEMA todolist;
USE todolist;

CREATE TABLE clientes(
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    data_nascimento DATETIME NOT NULL,
    
    CONSTRAINT pk_clientes PRIMARY KEY (cpf)
);
CREATE TABLE agencias(
	codigo INT NOT NULL,
	nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    data_criacao DATETIME,
    
    CONSTRAINT pk_agencias PRIMARY KEY (codigo)
);
CREATE TABLE contas(
	numero INT NOT NULL,
    agencia INT NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(45),
    clientes_cpf VARCHAR(11) NOT NULL,
    
    CONSTRAINT pk_contas PRIMARY KEY (numero, agencia),
    CONSTRAINT fk_contas_agencias FOREIGN KEY (agencia) REFERENCES agencias (codigo),
    CONSTRAINT fk_contas_clientes FOREIGN KEY (clientes_cpf) REFERENCES clientes (cpf)
);
CREATE TABLE transacoes(
	id INT NOT NULL,
	contas_numero_origem INT NOT NULL,
    contas_agencia_origem INT NOT NULL,
    contas_numero_destino INT,
    contas_agencia_destino INT,
    data_transacao DATETIME NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tipo ENUM('d','s','t') NOT NULL,
    
	CONSTRAINT pk_transacoes PRIMARY KEY (id),
    CONSTRAINT fk_transacoes_contas_contaOrigem FOREIGN KEY (contas_numero_origem) REFERENCES contas (numero),
	CONSTRAINT fk_transacoes_contas_agenciaOrigem FOREIGN KEY (contas_agencia_origem) REFERENCES contas (agencia),
	CONSTRAINT fk_transacoes_contas_contaDestino FOREIGN KEY (contas_numero_destino) REFERENCES contas (numero),
	CONSTRAINT fk_transacoes_contas_agenciaDestino FOREIGN KEY (contas_agencia_destino) REFERENCES contas (agencia)
);

INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES ('11111111111','AGATA','Rua A','40028922', current_timestamp());
INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES ('22222222222','Yanni','Rua Y','33333333', current_timestamp());
INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES ('33333333333','Elice','Rua E','55555555', current_timestamp());

INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES ('1234','AgenciaA','Rua da AgenciaA', CURRENT_DATE());
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES ('4321','AgenciaB','Rua da AgenciaB', CURRENT_DATE());
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES ('2357','AgenciaC','Rua da AgenciaC', CURRENT_DATE());

INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES ( 1, 1234, 1000.7,'p','11111111111');
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES ( 2, 2357, 200.45,'c','22222222222');

INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (1, 1, 1234, 2, 2357, current_timestamp(), 0.1, 'd'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (2, 2, 2357, 1, 1234, current_timestamp(), 0.2, 's'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (3, 1, 1234, 2, 2357, current_timestamp(), 0.3, 't'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (4, 2, 2357, 1, 1234, current_timestamp(), 0.4, 'd'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (5, 1, 1234, 2, 2357, current_timestamp(), 0.5, 's'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (6, 2, 2357, 1, 1234, current_timestamp(), 0.6, 't'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (7, 1, 1234, 2, 2357, current_timestamp(), 0.7, 't'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (8, 2, 2357, 1, 1234, current_timestamp(), 0.8, 'd');
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (9, 1, 1234, 2, 2357, current_timestamp(), 0.9, 't'); 
INSERT INTO transacoes (
id, 
contas_numero_origem, 
contas_agencia_origem, 
contas_numero_destino, 
contas_agencia_destino,
data_transacao,
valor,
tipo
) VALUES (10, 2, 2357, 1, 1234, current_timestamp(), 1.0, 's');

SELECT nome FROM clientes; /*1*/
SELECT nome FROM agencias WHERE data_criacao > 2020; /*2*/
SELECT * FROM contas WHERE tipo = 'p'; /*3*/
SELECT * FROM transacoes WHERE contas_numero_origem = 1;  /*5*/	
SELECT * FROM transacoes WHERE contas_numero_origem = 1 AND contas_numero_destino = 2; /*6*/


