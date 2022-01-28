USE agenciabancaria;
INSERT INTO agencias (
    nome,
    endereco,
    data_criacao
)
VALUES 
	(
		'Banco do Brasil',
        'Rua da Bahia',
        '2010-06-08'
    ),
    (
		'Bradesco',
        'Rua Rio de Janeiro',
        '2000-10-10'
    ),
    (
		'Santander',
        'Rua Carijós',
        '2012-12-05'
    ),
    (
		'Sicob',
        'Cachoeirinha',
        '2015-04-11'
    ),
    (
		'Itau',
        'Belford Roxo',
        '2020-06-01'
    ); 
    
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('12575815629','Venancio', 'Bangu II', '31989235428','2003-08-06');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('13574492601','Pedrinho', 'Condado de Urubici ', '33999506091','1999-05-09');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('15423684555','Fernandinha Beira-Mar', 'Penitenciária Federal de Campo Grande', '33995732502','2010-03-08');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('26548155654','Elias Maluco', 'Bangu I', '33945656584','2000-06-03');

INSERT INTO contas (agencia,saldo,tipo,clientes_cpf)
VALUES (1,800,'Conta Corrente','12575815629');  
INSERT INTO contas (agencia,saldo,tipo,clientes_cpf)
VALUES (2,2000.25,'Conta Poupança','13574492601');  
INSERT INTO contas (agencia,saldo,tipo,clientes_cpf)
VALUES (3,5000,'Conta Corrente','15423684555');  
    
INSERT INTO transacoes (
    contas_numero_origem,
    contas_agencia_origem,
    contas_numero_destino,
    contas_agencia_destino,
    data_transacao,
    valor,
    tipo
)
VALUES 
	(
		1,
        1,
        2,
        2,
        '2020-05-04',
        1200.20,
        1
    ),
    (
		3,
        3,
        2,
        2,
        '2020-06-10',
        200,
        3
    ),
    (
		2,
        2,
        1,
        1,
        '2021-10-10',
        6000.50,
        2
    ),
    (
		1,
        1,
        2,
        2,
        '2020-03-03',
        550,
        1
    ),
    (
		1,
        1,
        2,
        2,
        '2020-06-10',
        200,
        3
    ),
    (
		3,
        3,
        2,
        2,
        '2020-06-10',
        200,
        3
    ),
    (
		2,
        2,
        1,
        1,
        '2020-05-12',
        3750,
        1
    ),
    (
		2,
        2,
        1,
        1,
        '2019-09-07',
        20.80,
        2
    );
    
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (1,1,'2021-11-11',5750.50,2);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo) VALUES (2,2,'2021-12-12',10000,3);

SELECT * FROM agencias;
SELECT * FROM clientes; 
SELECT * FROM contas;
SELECT * FROM transacoes;


