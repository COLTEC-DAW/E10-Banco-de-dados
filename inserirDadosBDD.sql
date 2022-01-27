USE daw;

# Inserindo os clientes ##############################################
INSERT INTO clientes ( cpf, nome, endereco, telefone, data_nascimento)
VALUES ('12322117617', 'joao', 'rua ficticia 500', '4002-8922', '2002-10-28 12:45:56');

INSERT INTO clientes ( cpf, nome, endereco, telefone, data_nascimento)
VALUES ('50298011620', 'pedro', 'rua dos bobos 10', '1234-5678', '1969-02-10 02:25:51');

INSERT INTO clientes ( cpf, nome, endereco, telefone, data_nascimento)
VALUES ('40565076604', 'maria', 'rua tal 7', '9123-4567', '1961-12-17 01:13:02');

# Conferindo a inserção dos dados
SELECT * FROM clientes;


# Inserindo a agência ##################################################
INSERT INTO agencias (nome, endereco, data_criacao)
VALUES('central', 'rua meramente ilustrativa 300', NOW());

INSERT INTO agencias (nome, endereco, data_criacao)
VALUES('segunda', 'rua meramente ilustrativa 9', NOW());
# Conferindo a inserção dos dados
SELECT * FROM agencias;


# Inserindo as contas ###############################################
INSERT INTO contas ( agencia, saldo, tipo, clientes_cpf)
VALUES(
(SELECT codigo FROM agencias WHERE nome='central'),
100.00, 'poupança',
(SELECT cpf FROM clientes WHERE nome='joao')
);

INSERT INTO contas ( agencia, saldo, tipo, clientes_cpf)
VALUES(
(SELECT codigo FROM agencias WHERE nome='central'),
700.50, 'corrente',
(SELECT cpf FROM clientes WHERE nome='pedro')
);

INSERT INTO contas ( agencia, saldo, tipo, clientes_cpf)
VALUES(
(SELECT codigo FROM agencias WHERE nome='segunda'),
1100.50, 'corrente',
(SELECT cpf FROM clientes WHERE nome='maria')
);

# Conferindo a inserção dos dados
SELECT * FROM contas;

# Inserindo as transações ###############################################
INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
150.10,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
NOW(),
75.05,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
50.00,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
75.00,
's');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
NOW(),
200.00,
'd');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
150.10,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
NOW(),
75.05,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
50.00,
't');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=1),
(SELECT agencia FROM contas WHERE numero=1),
NOW(),
75.00,
's');

INSERT INTO transacoes ( contas_numero_origem, contas_agencia_origem, 
data_transacao, valor, tipo)
VALUES(
(SELECT numero FROM contas WHERE numero=2),
(SELECT agencia FROM contas WHERE numero=2),
NOW(),
200.00,
'd');

# Conferindo a inserção dos dados
SELECT * FROM transacoes;