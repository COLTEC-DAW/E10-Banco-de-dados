USE banco;

INSERT INTO cliente(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (01, 12345678910, "Pedro", "São João, Atalaia", "1314414", '2001-03-31');
INSERT INTO cliente(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (02, 10987654321, "Joao", "Lajedo", "140872", '2000-10-20');
INSERT INTO cliente(id, cpf, nome, endereco, telefone, data_nascimento)
	VALUES (03, 098761054321, "Jonas", "Cpx da Penha", "23243243", '2000-10-15');

INSERT INTO agencia(id, nome, endereco, data_criacao) 
	VALUES (0, 'Caixa (agencia central)', 'Belo Horizonte, Minas Gerais','2011-04-05');
INSERT INTO agencia(id, nome, endereco, data_criacao) 
	VALUES (1, 'Santander', 'Itabirito, Minas Gerais','2012-04-05');
INSERT INTO agencia(id, nome, endereco, data_criacao) 
	VALUES (2, 'Nubank', 'Rio de Janeiro','2010-04-05');

INSERT INTO conta(id, numero, cliente_id, agencia_id, saldo, tipo)
	VALUES (0, 0, 01, 0, 7000, "poupanca");
INSERT INTO conta(id, numero, cliente_id, agencia_id, saldo, tipo)
	VALUES (1, 1, 02, 1, 12000, "corrente");
INSERT INTO conta(id, numero, cliente_id, agencia_id, saldo, tipo)
	VALUES (2, 2, 03, 2, 9200, "poupanca");
INSERT INTO conta(id, numero, cliente_id, agencia_id, saldo, tipo)
	VALUES (3, 3, 01, 0, 550, "corrente");
INSERT INTO conta(id, numero, cliente_id, agencia_id, saldo, tipo)
	VALUES (4, 4, 02, 1, 1250, "poupanca");

INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (0, 0, NULL, 400, 's', '2001-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (1, 4, 0, 1, 'd', '2002-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (2, 4, NULL, 4, 's', '2003-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (3, 4, 3, 33, 'd', '2004-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (4, 4, NULL, 2, 's', '2005-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (5, 4, 0, 5, 'd', '2006-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (6, 2, NULL, 90, 's', '2007-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (7, 2, 4, 14, 'd', '2008-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (8, 0, NULL, 32, 's', '2009-12-30');
INSERT INTO transacao(id, id_conta_origem, id_conta_destino, valor, tipo, data_transacao)
	VALUES (9, 2, 4, 51, 'd', '2010-12-30'); 