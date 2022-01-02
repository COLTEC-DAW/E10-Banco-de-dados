INSERT INTO Cliente(nome, CPF, nascimento, endereco, telefone) VALUES('João','78978978978','03/08/2004','Guarani, BH','97878-5454');
INSERT INTO Cliente(nome, CPF, nascimento, endereco, telefone) VALUES('Pedro','45645645645','03/07/1999','Tupi, BH','98787-4545');
INSERT INTO Cliente(nome, CPF, nascimento, endereco, telefone) VALUES('Jonas','12312312312','04/11/1990','Juliana, BH','99898-6565');

INSERT INTO Agência(codigo_da_agencia, nome, endereco, data_da_criacao, código_da_conta) VALUES(00, 'Caixa', 'Minaslândia, BH', '03/03/2004', 10);
INSERT INTO Agência(codigo_da_agencia, nome, endereco, data_da_criacao, código_da_conta) VALUES(01, 'Bradesco', 'Maria Goretti, BH', '11/01/2020', 09);
INSERT INTO Agência(codigo_da_agencia, nome, endereco, data_da_criacao, código_da_conta) VALUES(02, 'Cartão de Todos', 'Justinópolis, Ribeirão das Neves', '05/12/2019', 08);

INSERT INTO Conta(codigo_conta, agencia, codigo_agencia, saldo, dono, tipo, CPF_do_cliente) VALUES(001, 'Cartão de Todos', '02', 1000, 'João', 'Corrente', '78978978978');
INSERT INTO Conta(codigo_conta, agencia, codigo_agencia, saldo, dono, tipo, CPF_do_cliente) VALUES(002, 'Bradesco', '01', 1520, 'Pedro', 'Corrente', '45645645645');
INSERT INTO Conta(codigo_conta, agencia, codigo_agencia, saldo, dono, tipo, CPF_do_cliente) VALUES(003, 'Caixa', '00', 20, 'Jonas', 'Poupança', '12312312312');

INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(100, 'João', 'Saque', 001, 001);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(1000, 'Pedro', 'Saque', 002, 002);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(10000, 'João', 'Depósito', 001, 002);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(200, 'Jonas', 'Saque', 003, 003);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(300, 'João', 'Depósito', 001, 001);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(400, 'Pedro', 'Saque', 002, 002);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(100, 'João', 'Saque', 001, 001);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(550, 'Jonas', 'Depósito', 003, 001);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(200, 'João', 'Depósito', 001, 003);
INSERT INTO Transações(valor, origem_da_conta, tipo, codigo_da_conta, Conta_destino) VALUES(50, 'Pedro', 'Saque', 002, 002);