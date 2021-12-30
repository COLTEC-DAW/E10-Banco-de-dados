USE TODOLIST;

/*   Inserção de 4 clientes   */
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento)
	VALUES ('42276826819','Dilan Pescada Sítima','Rua Barão de Vitória - Casa Grande, Dialema - SP', '(31)98312-2059', '1987-06-15');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento)
	VALUES ('91139856201','Eliseu Abranches Bentes','Rua da Imprensa - Monte Castelo, Campo Grande - MS', '(31)97406-5569', '1989-08-01');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento)
	VALUES ('33474432419','Isaura Miranda Quadros','Rua dos Carijós - Centro, Belo Horizonte - MG', '(31)96515-2232', '1997-12-24');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento)
	VALUES ('21658835557','Luisa Jorge Bessa','Rua dos Carijós - Centro, Belo Horizonte - MG', '(31)93215-2442', '1993-11-04');

/*   Inserção de 2 agências   */
INSERT INTO agencias (codigo,nome,endereco,data_criacao)
	VALUES (0,'Peropo & Co.','Avenida São João - Vila Joana, Jundiaí - SP', '2007-10-21');
INSERT INTO agencias (codigo,nome,endereco,data_criacao)
	VALUES (1,'S.C.A.M.','Travessa da CDL - Centro, Ji-Paraná - RO', '2021-01-11');

/*    Inserção de 5 contas    */
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf)
	VALUES (0,0,2500.50,'poupanca',42276826819);
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf)
	VALUES (1,0,7500,'corrente',91139856201);
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf)
	VALUES (2,1,3333.33,'corrente',33474432419);
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf)
	VALUES (3,1,5000.00,'poupanca',33474432419);
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf)
	VALUES (4,0,7500,'poupanca',21658835557);

SELECT * FROM contas;
/*  Inserção de 12 transações */
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (0, 0, 0, NOW(), 500.00, 'd'); /*deposito conta 0*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (1, 3, 1, NOW(), 750.00, 'd'); /*deposito conta 3*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
	VALUES (2, 1, 0, 2, 1, NOW(), 250.00, 't'); /*transacao origem = 1 -> destino = 2*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
	VALUES (3, 1, 0, 2, 1, NOW(), 350.00, 't'); /*transacao origem = 1 -> destino = 2*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (4, 0, 0, NOW(), 2000.00, 's'); /*saque conta 0*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
	VALUES (5, 2, 1, 1, 0, NOW(), 150.00, 't'); /*transacao origem = 2 -> destino = 1*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (6, 3, 1, NOW(), 2000.00, 's'); /*saque conta 3*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (7, 1, 0, NOW(), 765.45, 'd'); /*deposito conta 1*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (8, 1, 0, NOW(), 537.50, 's'); /*saque conta 1*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, data_transacao, valor, tipo)
	VALUES (9, 2, 1, NOW(), 555.33, 'd'); /*deposito conta 2*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
	VALUES (10, 1, 0, 3, 1, NOW(), 350.00, 't'); /*transacao origem = 1 -> destino = 0*/
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
	VALUES (11, 1, 0, 0, 0, NOW(), 550.00, 't'); /*transacao origem = 1 -> destino = 0*/