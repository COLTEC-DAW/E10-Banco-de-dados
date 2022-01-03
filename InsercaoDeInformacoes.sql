USE sistemabancario;

INSERT INTO clientes(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (1100000001, 7689032432, "Pedro", "Copacabana, Rua Roma", "91457823", '2003-11-29');
INSERT INTO clientes(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (1100000002, 7689032424, "Joao", "Mora naquele lugar la", "88838423", '1996-10-18');
INSERT INTO clientes(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (1100000003, 7689032461, "Ingrid", "Maria Helena", "23243243", '2003-12-30');

INSERT INTO agencias(id, nome, endereco, data_criacao) 
	VALUES (220000000, 'Caixa', 'Belo Horizonte, Minas Gerais','2019-01-28');
INSERT INTO agencias(id, nome, endereco, data_criacao) 
	VALUES (220000001, 'Banco do Brasil', 'Itabirito, Minas Gerais','2020-05-02');
INSERT INTO agencias(id, nome, endereco, data_criacao) 
	VALUES (220000002, 'Nubanco', 'Rio de Janeiro','2007-04-05');

INSERT INTO contas(id, numero, clientes_id, agencia_id, saldo, tipo)
	VALUES (33000000, 0, 1100000001, 220000000, 48000, "corrente");
INSERT INTO contas(id, numero, clientes_id, agencia_id, saldo, tipo)
	VALUES (33000001, 1, 1100000002, 220000001, 36000, "corrente");
INSERT INTO contas(id, numero, clientes_id, agencia_id, saldo, tipo)
	VALUES (33000002, 2, 1100000003, 220000002, 100, "poupanca");
INSERT INTO contas(id, numero, clientes_id, agencia_id, saldo, tipo)
	VALUES (33000003, 3, 1100000001, 220000000, 90, "poupanca");
INSERT INTO contas(id, numero, clientes_id, agencia_id, saldo, tipo)
	VALUES (33000004, 4, 1100000002, 220000001, 120, "poupanca");

INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000000, 33000000, NULL, 400, 's', '2021-12-30');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000001, 33000004, 33000000, 1, 'd', '2021-12-31');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000002, 33000004, NULL, 4, 's', '2021-11-30');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000003, 33000004, 33000003, 33, 'd', '2021-12-30');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000004, 33000004, NULL, 2, 's', '2020-12-30');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000005, 33000004, 33000000, 5, 'd', '2021-10-20');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000006, 33000002, NULL, 90, 's', '2019-05-02');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000007, 33000002, 33000004, 14, 'd', '2018-12-12');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000008, 33000000, NULL, 32, 's', '2021-12-30');
INSERT INTO transacoes(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (44000009, 33000002, 33000004, 51, 'd', '2021-12-30');