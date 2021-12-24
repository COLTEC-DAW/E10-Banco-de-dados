-- Selecionando o database
USE `daw_17/12`;

-- Criação das contas
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('0123456789','Erik',  'Ibiritexas',    '975734705','2004-01-19');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('0123458792','Sarah', 'Sarzedo', 	  '999994444','2003-05-25');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('0126858750','Julia', 'Belo Horizonte','987546321','2003-12-18');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('0123482975','Amanda','Contagem', 	  '985214763','2002-08-27');
INSERT INTO cliente(Cpf,Nome,Endereco,Telefone,Data_nascimento) VALUES('0199987254','Antony','Contagem', 	  '900147895','2000-07-06');

-- Criação das agências
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(0,'Itau',	    'Belo Horizonte','2015-09-09');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(1,'Bradesco', 'Belo Horizonte','2020-09-01');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(2,'Santander','Ibiritexas',    '2021-09-10');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(3,'Caixa',	'Contagem',      '2010-09-03');
INSERT INTO agencia(Codigo,Nome,Endereco,Data_criacao) VALUES(4,'Brasil',   'Sarzedo',       '1880-09-02');

-- Criação das contas
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(0,1500, 'Corrente','0123456789',2);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(1,2000, 'Poupança','0123458792',4);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(2,3000, 'Poupança','0123482975',3);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(3,20000,'Corrente','0199987254',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(4,10000,'Poupança','0123456789',2);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(5,20000,'Corrente','0123458792',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(6,30000,'Corrente','0123482975',1);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(7,5000, 'Corrente','0126858750',4);
INSERT INTO conta(Codigo,Saldo,Tipo,Cliente_Cpf,Agencia_Codigo) VALUES(8,2500, 'Poupança','0126858750',4);

-- Criação das transações
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(0,500,  'Saque',3,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(1,800,  'Deposito',2,2);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(2,250,  'Deposito',1,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(3,350,  'Saque',0,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(4,75,   'Saque',1,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(5,1250, 'Deposito',2,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(6,2000, 'Deposito',3,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(7,25,   'Deposito',2,3);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(8,300,  'Deposito',1,2);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(9,100,  'Deposito',0,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(10,1000,'Deposito',3,0);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(11,5000,'Saque',2,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(12,1550,'Deposito',0,1);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(13,220, 'Deposito',0,3);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(14,450, 'Saque',3,NULL);
INSERT INTO transacao(Id,Valor,Tipo,Conta_origem,Conta_destino) VALUES(15,1498,'Deposito',3,0);