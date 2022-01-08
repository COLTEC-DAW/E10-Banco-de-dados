USE daw03;

INSERT INTO clientes (cpf, nome, data_nascimento, endereco, telefone) values ('1010', 'Joao', '2015-12-15', 'casa1', '40028922');
INSERT INTO clientes (cpf, nome, data_nascimento, endereco, telefone) values ('2222', 'Sergio', '1820-10-16', 'casa2', '12314452');
INSERT INTO clientes (cpf, nome, data_nascimento, endereco, telefone) values ('3434', 'Elmaia', '1445-05-17', 'casa3', '2222222');
INSERT INTO clientes (cpf, nome, data_nascimento, endereco, telefone) values ('4242', 'Pedro', '2000-11-18', 'casa4', '123456789');

INSERT INTO agencias (codigo, nome, endereco, data_criacao) values ('1', 'agencia1', 'Pracinha', '1988-01-08');
INSERT INTO agencias (codigo, nome, endereco, data_criacao) values ('2', 'agencia2', 'Sorvete', '1950-09-15');
INSERT INTO agencias (codigo, nome, endereco, data_criacao) values ('3', 'agencia3', 'Pao', '2004-02-08');

INSERT INTO contas (numero, agencia, dono, saldo, tipo, clientes_cpf) values ('111', '1', 'Joao', '20000.0', 'corrente', '1010');
INSERT INTO contas (numero, agencia, dono, saldo, tipo, clientes_cpf) values ('222', '1', 'Sergio', '10000.0', 'corrente', '2222');
INSERT INTO contas (numero, agencia, dono, saldo, tipo, clientes_cpf) values ('333', '3', 'Elmaia', '40000.0', 'poupanca', '3434');
INSERT INTO contas (numero, agencia, dono, saldo, tipo, clientes_cpf) values ('444', '2', 'pedro', '80000.0', 'poupanca', '4242');


INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('00', '100.0', 'dep', '222', '111');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('11', '20.0', 'dep', '111', '222');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('22', '1000.0', 'saque', '222', '111');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('33', '50.0', 'dep', '111', '222');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('44', '50.0', 'saque', '111', '333');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('55', '10.0', 'dep', '333', '222');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('66', '500.0', 'saque', '333', '111');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('77', '20.0', 'dep', '333', '111');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('88', '15.0', 'saque', '222', '333');
INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('99', '200.0', 'saque', '222', '111');

