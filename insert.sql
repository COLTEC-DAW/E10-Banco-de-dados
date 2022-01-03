INSERT INTO clientes (cpf, nome, data_de_nascimento, endereco, telefone) values ('111', 'Joao', '2021-12-21', 'Coltec', '123456789');
INSERT INTO clientes (cpf, nome, data_de_nascimento, endereco, telefone) values ('222', 'Pedro', '2021-12-21', 'Coltec', '123456780');
INSERT INTO clientes (cpf, nome, data_de_nascimento, endereco, telefone) values ('333', 'Vitoria', '2021-12-21', 'Coltec', '123456781');
INSERT INTO clientes (cpf, nome, data_de_nascimento, endereco, telefone) values ('444', 'Virginia', '2021-12-21', 'Coltec', '123456799');

INSERT INTO contas (codigo, agencia, dono, saldo, tipo, clientes_cpf) values ('11', '1', 'Joao', '2000.0', 'corrente', '111');
INSERT INTO contas (codigo, agencia, dono, saldo, tipo, clientes_cpf) values ('22', '2', 'Pedro', '1000.0', 'corrente', '222');
INSERT INTO contas (codigo, agencia, dono, saldo, tipo, clientes_cpf) values ('33', '3', 'Vitoria', '4000.0', 'poupanca', '333');
INSERT INTO contas (codigo, agencia, dono, saldo, tipo, clientes_cpf) values ('44', '1', 'Virginia', '8000.0', 'poupanca', '444');

INSERT INTO agencia (codigo, nome, endereco, data_de_criacao) values ('1', 'agencia1', 'UFMG', '2021-01-01');
INSERT INTO agencia (codigo, nome, endereco, data_de_criacao) values ('2', 'agencia2', 'UFMG', '2018-09-16');
INSERT INTO agencia (codigo, nome, endereco, data_de_criacao) values ('3', 'agencia3', 'UFMG', '2021-02-09');

INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('0000', '10.0', 'transferencia', '22', '11');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('1111', '200.0', 'transferencia', '11', '22');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('2222', '100.0', 'transferencia', '22', '11');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('3333', '250.0', 'transferencia', '11', '22');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('4444', '500.0', 'transferencia', '11', '33');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('5555', '100.0', 'transferencia', '33', '22');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('6666', '50.0', 'transferencia', '33', '11');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('7777', '200.0', 'transferencia', '33', '11');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('8888', '150.0', 'transferencia', '22', '33');
INSERT INTO transacao (id, valor, tipo, contas_codigo_origem, contas_codigo_destino) values ('9999', '20.0', 'transferencia', '22', '11');
