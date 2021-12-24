INSERT INTO clientes (cpf, nome, telefone) VALUES ('16183469033', 'João', 123456);
INSERT INTO clientes (cpf, nome, telefone) VALUES ('04238489098', 'Pedro', 123456);
INSERT INTO clientes (cpf, nome, telefone) VALUES ('23416114000', 'Maria', 123456);

INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (0001, 'Agência Central', 'RUA A', '20190618 10:30:19 AM');
INSERT INTO agencias (codigo, nome, endereco, data_criacao) VALUES (0002, 'Agência Legal', 'RUA B', '20210618 10:30:19 PM');

INSERT INTO contas (numero, agencia, saldo, tipo_conta, cpf_cliente) VALUES (1909, 1, 1000, 'Corrente', '16183469033');
INSERT INTO contas (numero, agencia, saldo, tipo_conta, cpf_cliente) VALUES (1814, 2, 100, 'Corrente', '04238489098');
INSERT INTO contas (numero, agencia, saldo, tipo_conta, cpf_cliente) VALUES (2982, 1, 10000, 'Corrente', '23416114000');

INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (1, 1909, 1, 1814, 1, 10.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (2, 1909, 1, 1814, 1, 20.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (3, 1909, 1, 1814, 1, 30.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (4, 1909, 1, 1814, 1, 40.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (5, 1909, 1, 1814, 1, 50.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (6, 1909, 1, 2982, 1, 10.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (7, 1909, 1, 2982, 1, 10.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (8, 1909, 1, 2982, 1, 10.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (9, 2982, 1, 1909, 1, 5.50);
INSERT INTO transacoes (id, conta_numero_origem, conta_agencia_origem, conta_numero_destino, conta_agencia_destino, valor) VALUES (10, 2982, 1, 1909, 1, 5.50);