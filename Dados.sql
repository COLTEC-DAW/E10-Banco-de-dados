USE sistema_bancario;

/*CLIENTES*/

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (00000011, '111111111111', 'Joao Marlon Daniel Figueiredo', '2004-01-03', 'Rua Neymar, 10', '4002-8922');

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (00000021, '222222222222', 'Pedro Cleber Gomes Junior', '2003-07-23', 'Rua Cristiano Ronaldo, 7', '8259-9871');

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (00000031, '333333333333', 'Henrique Teodoro Freitas', '1532-12-25', 'Rua Messi, 12', '1212-1212');


/*AGENCIAS*/

INSERT INTO agencia (id, nome, endereco, data_criacao)
VALUES (00000012, 'Banco dos pobres', 'Rua dos bobos, 0', '1945-04-19');

INSERT INTO agencia (id, nome, endereco, data_criacao)
VALUES (00000022, 'Banco do Brasil', 'UFMG', '1921-06-05');

INSERT INTO agencia (id, nome, endereco, data_criacao)
VALUES (00000032, 'Banco dos ricos', 'Rua dos inteligentes', '1945-04-20');


/*CONTAS*/

INSERT INTO conta (id, tipo, saldo, dono_id, agencia_id)
VALUES (00000013, 'poupanca', 4758231, 00000021, 00000032);

INSERT INTO conta (id, tipo, saldo, dono_id, agencia_id)
VALUES (00000023, 'corrente', 700, 00000011, 00000012);


/*TRANSACOES*/

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000014, 'deposito', 30000, 00000021, 00000011);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000024, 'deposito', 2, 00000011, 00000021);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000034, 'deposito', 75757, 00000021, 00000011);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000044, 'deposito', 1, 00000011, 00000021);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000054, 'deposito', 913523, 00000021, 00000011);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000064, 'saque', 77777, 00000021, NULL);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000074, 'saque', 648433, 00000021, NULL);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000084, 'saque', 980909, 00000021, NULL);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000094, 'saque', 11, 00000011, NULL);

INSERT INTO transacoes(id, tipo, valor, id_conta_origem, id_conta_destino)
VALUES (00000104, 'saque', 5, 00000011, NULL);