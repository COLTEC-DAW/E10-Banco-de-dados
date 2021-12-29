/* Adicionando clientes */

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (0, '12345678901', 'Ana Maria', '1999-01-01', 'Rua Maria, 45', '9876-5432');

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (1, '12345678902', 'Fulano Cicrano', '1990-10-22', 'Rua dos Bobos, 0', '9876-9876');

INSERT INTO cliente (id, cpf, nome, nascimento, endereco, telefone)
VALUES (2, '12345678903', 'Um Dois Tres de Oliveira Quatro', '1983-05-11', 'Rua Silveira, 666', '9123-4567');


/* Adicionando Agencias */

INSERT INTO agencia (id, nome, endereco, data_criacao)
VALUES (0, 'Me De O Seu Dinheiro', NULL, '2020-04-28');
 
 INSERT INTO agencia (id, nome, endereco, data_criacao)
VALUES (1, 'Bao Dia', 'Rua Itabirito, 445', '2011-05-20');


/* Adicionando Contas */

INSERT INTO conta (id, tipo, saldo, cliente_id, agencia_id)
VALUES (0, 'poupanca', 3000, 2, 1);

INSERT INTO conta (id, tipo, saldo, cliente_id, agencia_id)
VALUES (1, 'poupanca', 300002, 0, 0);

INSERT INTO conta (id, tipo, saldo, cliente_id, agencia_id)
VALUES (2, 'corrente', 3, 0, 0);


/* Adicionado Transacoes */

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (0, 'deposito', 20, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (1, 'deposito', 30, 1);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (2, 'deposito', 50, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (3, 'deposito', 30, 1);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (4, 'deposito', 10, 1);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (5, 'saque', 66, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (6, 'saque', 1666, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (7, 'saque', 99, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (8, 'saque', 33, 0);

INSERT INTO transacao (id, tipo, valor, conta_id)
VALUES (9, 'saque', 22, 0);
