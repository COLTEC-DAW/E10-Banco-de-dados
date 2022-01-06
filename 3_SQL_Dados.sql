USE sistemaBancario;


DELETE FROM transacoes
WHERE id in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

DELETE FROM contas
WHERE numero in (001, 002, 003);

DELETE FROM agencias
WHERE codigo in (00001, 00002, 00003);

DELETE FROM clientes
WHERE cpf in ('99999999999', '55588877733', '11122233345');


INSERT INTO clientes (cpf, nome, endereco, data_nascimento) VALUES (
	'99999999999',
    'Eden',
    'Espírito Santo',
    '1999-10-10 15:30:00'
);

INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES (
	'55588877733',
    'Sophia',
    'São Paulo',
    '+5501140028922',
    '2006-02-05 18:00:00'
);

INSERT INTO clientes (cpf, nome, data_nascimento) VALUES (
	'11122233345',
    'Mel',
    '2004-03-08 21:00:00'
);


INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
	00001,
    'Banco Inter',
    'Belo Horizonte, Minas Gerais, Brasil',
    '1994-09-16'
);

INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
	00002,
    'Nubank',
    'São Paulo, São Paulo, Brasil',
    '2013-05-06'
);

INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
	00003,
    'COLTEC Empreendedorismos LTDA',
    'Belo Horizonte, Minas Gerais, Brasil',
    '2021-12-25'
);


INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
	001,
    00001,
    1500.00,
    'Conta-Corrente',
    '99999999999'
);

INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
	001,
    00002,
    500.00,
    'Conta-Corrente',
    '55588877733'
);

INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
	002,
    00001,
    1300.00,
    'Conta-Poupanca',
    '55588877733'
);

INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
	003,
    00001,
    1200.00,
    'Conta-Poupanca',
    '11122233345'
);


INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (
	1,
    001,
    00001,
    '2022-01-01 00:00:00',
    500.00,
	'd'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (
	2,
    002,
    00001,
    '2022-01-01 00:00:00',
    700.00,
	'd'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (
	3,
	003,
    00001,
    '2022-01-01 00:00:00',
    800.00,
	'd'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (
	4,
    001,
    00002,
    '2021-01-01 00:00:00',
    30.50,
	's'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (
	5,
    001,
    00001,
    '2021-01-05 00:00:00',
    80.00,
	's'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
	6,
    001,
    00002,
    002,
    00001,
    '2021-02-03 00:00:00',
    52.06,
	't'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
	7,
    001,
    00001,
	003,
    00001,
    '2021-02-16 00:00:00',
    79.00,
	't'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
	8,
    001,
    00002,
    002,
    00001,
    '2021-02-28 00:00:00',
    12.00,
	't'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
	9,
    001,
    00002,
	003,
    00001,
    '2021-03-08 00:00:00',
    00.05,
	't'
);

INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
	10,
    001,
    00002,
	003,
    00001,
    '2021-04-20 20:49:06',
    420.69,
	't'
);


