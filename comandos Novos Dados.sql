INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES (
'54299870036', 'Glória Óscar Lobo', 
'Théo Dos Santos Oliveira, 70, 94094-546, BH, Minas Gerais', 
'960143600', 
'1982-04-26' );
INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES (
'17705352280', 'Cristina Nelinho Constantino', 
'Xavier Avenida, 122, Apto. 678, 10698-579, BH, Minas Gerais', 
'940589428', 
'1994-01-14' );
INSERT INTO clientes (cpf, nome, endereco, telefone, data_nascimento) VALUES (
'29517632322', 'Abel Camilo Ramires', 
'Moreira Macedo, 38, 77616-660, Belford Roxo, BH, Minas Gerais', 
NULL, 
'1992-10-10' );



INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
1, 'Baldos',
'Rua Fabio Moraes, 219, 01657-337, BH, Minas Gerais',
'1827-05-01' );
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
2, 'Ganimedes',
'Santos Costa Souza, 16, 10654-496, BH, Minas Gerais',
'2021-10-07' );
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (
3, 'Banco Isabel',
'Avenida João Miguel, 4, 08689-083, BH, Minas Gerais',
'1999-10-21' );



INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
110, 1,
45690.02, 'corrente',
'54299870036' );
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
112, 3,
542.50, 'poupanca',
'17705352280' );
INSERT INTO contas (numero, agencia, saldo, tipo, clientes_cpf) VALUES (
356, 2,
7432.00, 'poupanca',
'17705352280' );



INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
25,
110, 1, NULL, NULL,
'2021-12-10', 100.00, 's' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
111,
112, 3, 110, 1,
'2021-12-24', 75.00, 't' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
26,
110, 1, NULL, NULL,
'2021-12-26', 75.00, 'd' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
27,
110, 1, NULL, NULL,
'2021-12-26', 29.01, 'd' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
29,
110, 1, NULL, NULL,
'2022-01-01', 400.00, 's' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
120,
112, 3, NULL, NULL,
'2022-01-01', 30.00, 's' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
128,
112, 3, NULL, NULL,
'2022-01-01', 00.26, 'd' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
129,
112, 3, 356, 2,
'2022-01-03', 47.00, 't' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
30,
110, 1, NULL, NULL,
'2022-01-10', 12.00, 's' );
INSERT INTO transacoes (id, contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo) VALUES (
31,
110, 1, 112, 3,
'2022-01-14', 75.00, 't' );