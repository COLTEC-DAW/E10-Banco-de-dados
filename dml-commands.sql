USE bankingsys;

INSERT INTO clientes(cpf, nome, endereco, telefone, data_nascimento) VALUES (1112223334, "Rafael", "Bairro São Luiz", "900000000", '2004-01-08');
INSERT INTO clientes(cpf, nome, endereco, telefone, data_nascimento) VALUES (1112223335, "João", "Bairro Tal", "900000001", '2001-02-10');
INSERT INTO clientes(cpf, nome, endereco, telefone, data_nascimento) VALUES (1112223336, "Pedro", "Bairro Aquele Lá", "900000002", '1998-09-25');
INSERT INTO clientes(cpf, nome, endereco, telefone, data_nascimento) VALUES (1112223337, "Zerru Ela", "Bairro do Fulano", "900000003", '2001-04-22');

INSERT INTO agencias(codigo, nome, endereco, data_criacao) VALUES (0, 'Banco Inter (agência central)', 'Belo Horizonte, Minas Gerais','2019-04-18');
INSERT INTO agencias(codigo, nome, endereco, data_criacao) VALUES (1, 'Banco do Brasil', 'Rio de Janeiro, Rio de Janeiro','2021-09-13');
INSERT INTO agencias(codigo, nome, endereco, data_criacao) VALUES (2, 'Itaú', 'São Paulo, São Paulo','2008-01-02');
INSERT INTO agencias(codigo, nome, endereco, data_criacao) VALUES (3, 'Nubank', 'São Paulo, São Paulo','2020-05-06');
INSERT INTO agencias(codigo, nome, endereco, data_criacao) VALUES (4, 'Santander', 'São Paulo, São Paulo','2021-01-01');

INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (0, 1112223334, 0, 50000, "corrente");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (1, 1112223335, 3, 1600, "corrente");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (2, 1112223336, 2, 400, "poupanca");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (3, 1112223334, 0, 500, "poupanca");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (4, 1112223335, 0, 320, "poupanca");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (5, 1112223336, 0, 120, "corrente");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (6, 1112223337, 1, 50, "corrente");
INSERT INTO contas(codigo, cpf_dono, cod_agencia, saldo, tipo) VALUES (7, 1112223337, 4, 680, "poupanca");

INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (0, 0, NULL, 20, 'saque');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (1, 2, 0, 50, 'deposito');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (2, 1, NULL, 45, 'saque');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (3, 1, 2, 300, 'deposito');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (4, 2, NULL, 15, 'saque');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (5, 2, 1, 400, 'deposito');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (6, 0, NULL, 80, 'saque');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (7, 0, 1, 130, 'deposito');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (8, 0, NULL, 61, 'saque');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (9, 1, 2, 70, 'deposito');
INSERT INTO transacoes(id, cod_conta_origem, cod_conta_destino, valor, tipo) VALUES (10, 1, 0, 40, 'deposito');

SELECT * FROM clientes;
SELECT * FROM agencias;
SELECT * FROM contas;
SELECT * FROM transacoes;