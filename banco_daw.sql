create database BANCO_LAIZA;
use BANCO_LAIZA;
CREATE TABLE Transacoes 
(
id INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id),
tipoTransacao int,
valor  float
);

CREATE TABLE Agencia
(
id INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id),
nome varchar(50),
endereco  varchar(60), 
dataCriacao date
);

create table Cliente
(
cpf int not null,
telefone float,
dataNascimento date,
nome varchar(60),
endereco varchar(50)
);

CREATE TABLE Conta 
(
idConta INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (idConta),
tipo int, 
agencia int NOT NULL,
dono varchar(50),
saldo float
);

ALTER TABLE Transacoes
ADD idContaOrigin INT ,
ADD idContaDestino INT;

ALTER TABLE Transacoes
ADD CONSTRAINT fk_idContaOrigin Foreign KEY(idContaOrigin) references Conta (idConta),
ADD CONSTRAINT fk_idContaDestino Foreign KEY(idContaDestino) references Conta (idConta);

ALTER TABLE Cliente
add constraint Primary key (cpf);

ALTER TABLE Conta
add agencia_id int not null,
add cliente_cpf int not null;

ALTER TABLE Conta
add constraint fk_cliente_cpf Foreign KEY (cliente_cpf) references cliente (cpf),
add constraint fk_agencia_id foreign key (agencia_id) references agencia (id);

insert into Cliente (cpf, telefone, dataNascimento, nome, endereco)
values (736828332, 316483892, '2003-01-02', "LAIZA FERREIRA LAGE", "RUUA DOS BOROROS, N 112");
insert into Cliente (cpf, telefone, dataNascimento, nome, endereco)
values (748382983, 3176768899, '1976-05-02', "ROBERTA LAIZA", "RUUA DOS BOROROS, N 115");
insert into Cliente (cpf, telefone, dataNascimento, nome, endereco)
values (64758872, 31848757329, '1990-05-04', "LEO PEREIRA", "RUA DOS CARIJOS, 21 CENTRO");

SELECT * FROM CLIENTE;

insert into Agencia (nome, endereco, dataCriacao)
values('COLTECANA', 'AV. CARLOS LUZ', '2019-05-10');

select * from agencia;
insert into Agencia (nome, endereco, dataCriacao)
values('CEFETENSE', 'AV. CRISTIANO MACHADO', '2021-05-10');

select * from CLIENTE;
insert into Conta (tipo, agencia, dono, saldo, agencia_id, cliente_cpf)
values (1, 2, 'LAIZA FERREIRA LAGE', 800.00, 2, 736828332);
insert into Conta (tipo, agencia, dono, saldo, agencia_id, cliente_cpf)
values (1, 1, 'ROBERTA LAIZA', 800.00, 1, 748382983);
insert into Conta (tipo, agencia, dono, saldo, agencia_id, cliente_cpf)
values (1, 1, 'LEO PEREIRA', 20000.02, 1, 64758872);


select * from TRANSACOES;
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 130.00, 3, 4);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 160.00, 3, 4);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 100.00, 3, 4);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (2, 100.00, 3, 4);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (2, 111.00, 4, 3);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (2, 135.00, 4, 3);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 10000.00, 14, 4);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (2, 10000.00, 14, 3);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 10.00, 3, 14);
insert into transacoes (tipoTransacao, valor, idContaOrigin, idContaDestino)
values (1, 1.00, 3, 4);

/*LISTAGEM DE NOMES DOS CLIENTES*/
SELECT nome FROM cliente;
/*LISTAGEM DAS AGENCIAS CRIADAS APÓS 2020*/
SELECT * FROM agencia where dataCriacao > '2020-01-01';
/*LISTA AS CONTAS QUE SÃO POUPANÇA id = 1*/
SELECT * FROM conta where tipo = 1;
/*/*LISTA AS CONTAS CRIADAS NA AGENCIA CENTRAL id = 1*/
SELECT * FROM CONTA
inner JOIN AGENCIA
				ON CONTA.agencia = 1 && AGENCIA.id = 1;
                
/*Listar as transacoes realizadas a partir da conta ROBERTA LAIZA*/
select * FROM TRANSACOES
inner join CONTA
ON TRANSACOES.idContaOrigin = CONTA.idconta && CONTA.dono = 'ROBERTA LAIZA';

/*LISTAR AS TRANSACOES FEITAS DE ROBERTA LAIZA PARA LAIZA FERREIRA LAGE*/
SELECT * FROM TRANSACOES
INNER JOIN CONTA
ON TRANSACOES.IDCONTADESTINO =  CONTA.IDCONTA && CONTA.DONO = 'LAIZA FERREIRA LAGE' &&
TRANSACOES.IDCONTAORIGIN = 3;

/*Listar as agências que possuem pelo menos 3 contas*/
SELECT 
   conta.agencia_id, agencia.nome, 
   count(*) AS total 
FROM conta 
inner join agencia
on conta.agencia_id = agencia.id
GROUP BY agencia_id
HAVING COUNT(*) >= 3;

/*Listar as contas com pelo menos 4 transações*/
SELECT 
   transacoes.idContaOrigin, conta.dono, 
   count(*) AS total 
FROM conta 
inner join transacoes
on conta.idconta = transacoes.idContaOrigin
GROUP BY conta.dono
HAVING COUNT(*) >= 4;

/*Listar os clientes que não realizaram transações*/
SELECT 
   transacoes.idContaOrigin, cliente.nome, cliente.cpf, cliente.endereco, 
   count(*) AS total 
FROM conta 
inner join transacoes
inner join cliente
on conta.idconta = transacoes.idContaOrigin && conta.cliente_cpf = cliente.cpf
GROUP BY conta.cpf
HAVING COUNT(*) = 0;




 




