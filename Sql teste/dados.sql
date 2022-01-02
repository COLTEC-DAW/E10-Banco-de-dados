-- Selecionando o database
USE `db_projeto`
-- inserção da tabela de clientes;
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('000000001','Joao',  'rua1',999999999,'2001-02-13');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('000000002','Pedro', 'rua2',888888888,'2002-12-30');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('000000003','Guilherme', 'rua3',777777777,'2004-02-04');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('000000004','Junior','rua4',666666666,'2003-12-02');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('000000005','Helena','rua5',555555555,'2005-01-03');

-- inserção da tabela agências
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(0,'Caixa','avenida1','1980-05-10');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(1,'Itau','avenida2','1990-05-09');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(2,'Brasil','avenida3','2000-05-10');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(3,'Central','avenida4','2010-05-10');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(4,'Nubank', 'avenida5','2020-05-10');

-- inserção da tabela de contas
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(0,1540, 'Corrente','000000001',4);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(1,2040, 'Poupança','000000004',4);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(2,3003, 'Poupança','000000003',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(3,20030,'Corrente','000000005',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(4,10400,'Poupança','000000001',2);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(5,20500,'Corrente','000000004',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(6,30100,'Corrente','000000003',3);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(7,5100, 'Corrente','000000002',4);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(8,2510, 'Poupança','000000002',2);

-- inserção da tabela de transações
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(0,400,  'Saque',3,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(1,360,  'Deposito',1,2);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(2,1600,'Deposito',3,0); 
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(3,210,  'Deposito',1,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(4,750,  'Deposito',2,2);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(5,100,   'Saque',1,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(6,1200, 'Deposito',2,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(7,2100, 'Deposito',3,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(8,50,   'Deposito',2,3);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(9,225, 'Deposito',0,3);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(10,200,  'Deposito',0,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(11,1250,'Deposito',0,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(12,340,  'Saque',0,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(13,750,'Deposito',3,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(14,750, 'Saque',3,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(15,2000,'Saque',2,NULL);

