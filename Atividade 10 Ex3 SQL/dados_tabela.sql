USE banco;

INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('15846565515','Leonardo', 'Expedicionário Celso Racioppi', '31954632589','2000-10-10');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('54541454515','Gabriel', 'Avenida Presidente Carlos Luz', '31956845624','2001-03-06');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('54545151548','Felipe', 'Amalfi', '31956987452','2009-10-05');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('12546078156','Joao', 'Ancona', '31945268958','2007-07-07');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('59856261895','Isabela', 'Antônio Francisco Lisboa', '31932659658','2005-12-11');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('51515262685','Larissa', 'Tijuca', '31926541258','2005-10-07');
INSERT INTO clientes (cpf,nome,endereco,telefone,data_nascimento) VALUES ('25451262215','Geovanna', 'Belford Roxo', '11954265498','2001-10-07');

INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("Caixa", "Rua da Caixa","2000-06-06");
INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("Inter", "Rua da Inter","2020-05-07");
INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("Nubank", "Rua da Nubank","2005-08-08");
INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("Santander", "Rua da Santander","2008-04-06");
INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("BNDES", "Rua da BNDES","2010-11-06");
INSERT INTO agencias (nome, endereco, data_criacao) VALUES ("Itau", "Rua da Itau","2006-04-03");

INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (4,250,'Corrente','15846565515');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (2,750,'Poupança','54541454515');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (5,3000,'Poupança','54545151548');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (1,133,'Corrente','12546078156');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (3,6800,'Corrente','59856261895');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (6,4570,'Corrente','51515262685');  
INSERT INTO contas (agencia,saldo,tipo,cliente_cpf) VALUES (1,7500,'Corrente','25451262215');  
    
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (1, 4, 5, 3, '2020-06-08', 2050, 1);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (1, 4, 3, 5, '2019-03-08', 6000, 2);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (5, 3, 6, 6, '2020-06-07', 340, 1);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (3, 5, 4, 1, '2020-05-10', 1654, 3);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (1, 4, 5, 3, '2021-10-08', 2500, 1);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (6, 6, 2, 2, '2020-03-08', 7575, 3);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (1, 4, 2, 2, '2020-06-11', 3040, 3);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (2, 2, 5, 3, '2021-01-05', 300, 2);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (2, 2, 4, 1, '2020-04-08', 5000, 2);
INSERT INTO transacoes (contas_numero_origem, contas_agencia_origem, contas_numero_destino, contas_agencia_destino, data_transacao, valor, tipo)
VALUES (4, 1, 5, 3, '2022-06-08', 1450, 1);