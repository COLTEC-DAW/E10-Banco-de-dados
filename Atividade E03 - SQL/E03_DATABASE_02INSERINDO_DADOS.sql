-- Developed by Alexandre Hobbes

INSERT INTO clientes (cpf, nome, endereco, telefone, data_de_nascimento) VALUES ("898.363.392-13", "Joao", "Av Bom dia", "(31)2324-8996", "1993-05-18");
INSERT INTO clientes (cpf, nome, endereco, telefone, data_de_nascimento) VALUES ("929.021.882-77", "Virginia", "Rua Boa Tarde", "(31)2541-6589", "1989-06-20");
INSERT INTO clientes (cpf, nome, endereco, telefone, data_de_nascimento) VALUES ("350.700.882-38", "Leandro", "Av Boa Noite", "(31)9857-7895", "1987-08-07");
INSERT INTO clientes (cpf, nome, endereco, telefone, data_de_nascimento) VALUES ("328.283.720-81", "Alex", "Av Revoada", "(31)94521-8547", "2003-09-14");


INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (00001, "Nubank BH07 Contorno", "Av Contorno, 3005", "2015-04-10");
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (00002, "Bradesco BH 09", "Av Cristiano Machado, 8009", "2010-08-07");

INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (874521, 00001, "1000000.85", "Corrente", "898.363.392-13");
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (245785, 00002, "90000", "Corrente", "929.021.882-77");
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (458962, 00002, "15000", "Poupanca", "350.700.882-38");
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (379548, 2, 3600, "Corrente", "328.283.720-81");

INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (12452, 874521, 00001, 245785, 00002, "2021-10-09", 1500.00, "t");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (89654, 245785, 00002, 458962, 00002, "2019-12-14", 200, "t");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (77777, 458962, 00002, 458962, 00002, "2016-02-07", 500, "d");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (99999, 458962, 00002, 874521, 00001, "2017-05-08", 7000, "t");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (25487, 874521, 00001, 874521, 00001, "2018-03-12", 400, "s");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (36524, 458962, 00002, 458962, 00002, "2019-07-19", 600, "d");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (47854, 245785, 00002, 245785, 00002, "2011-04-17", 200, "d");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (87749, 874521, 00001, 874521, 00001, "2015-10-30", 150, "s");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (25449, 245785, 00002, 874521, 00001, "2017-11-28", 400, "t");
INSERT INTO transacoes(id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) 
VALUES (45781, 245785, 00002, 245785, 00002, "2021-01-25", 1090, "s");



