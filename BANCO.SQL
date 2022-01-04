create database Banco2;
CREATE TABLE transacoes 
(
trs_typeTransacao int,
trs_value  float, 
conta_ct_codContaOrigin int NOT NULL,
conta_ct_codContaDestiny int NOT NULL 
);

use Banco2;

CREATE TABLE conta 
(
ct_codConta INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (ct_codConta),
ct_typeConta  int, 
ct_agencia int NOT NULL,
ct_Dono varchar(50),
ct_saldo float
);
CREATE TABLE agencia
(
age_cod INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (age_cod),
age_nome varchar(50),
age_endereco  varchar(60), 
age_dataCriacao date
);

create table cliente
(
clnt_cpf int not null,
clnt_telefone float,
clnt_dataNasc date,
clnt_name varchar(60),
clnt_endereco varchar(50)
);

ALTER TABLE transacoes
ADD CONSTRAINT fk_conta_ct_codContaOrigin Foreign KEY(conta_ct_codContaOrigin) references conta (ct_codConta),
ADD CONSTRAINT fk_conta_ct_codContaDestiny Foreign KEY(conta_ct_codContaDestiny) references conta (ct_codConta);

ALTER TABLE conta
add agencia_age_cod int not null,
add cliente_clnt_cpf int not null;

SELECT * FROM conta;

ALTER TABLE cliente
add constraint Primary key (clnt_cpf);

ALTER TABLE agencia
add constraint Primary key (age_cod);

ALTER TABLE conta
add constraint fk_cliente_clnt_cpf Foreign KEY (cliente_clnt_cpf) references cliente (clnt_cpf),
add constraint fk_agencia_age_cod foreign key (agencia_age_cod) references agencia (age_cod);


insert into cliente (clnt_cpf, clnt_telefone, clnt_dataNasc, clnt_name, clnt_endereco)
values (1671019067, 31982243119, '2004-03-02', "Joao VICTOR", "RUA GAVEA, 317 LEBLON");
insert into cliente (clnt_cpf, clnt_telefone, clnt_dataNasc, clnt_name, clnt_endereco)
values (98997920, 31996996232, '1971-03-02', "Marineide", "RUA GAVEA, 319 LEBLON");
insert into cliente (clnt_cpf, clnt_telefone, clnt_dataNasc, clnt_name, clnt_endereco)
values (834383, 326172129, '1977-03-04', "MArio Henrique", "RUA BOTAFOGO, 319 LAGOINHA");
SELECT * FROM agencia;

insert into agencia (age_nome, age_endereco, age_dataCriacao)
values('BRAS', 'RUA DOS BOBOS N 0', '2020-02-20');

insert into agencia (age_nome, age_endereco, age_dataCriacao)
values('ALOHA', 'RUA DOS MALUCOS N 1000', '2020-05-20');

insert into conta (ct_typeConta, ct_agencia, ct_Dono, ct_saldo, agencia_age_cod, cliente_clnt_cpf)
values (1, 1, 'Joao', 1800.00, 1, 1671019067);

insert into conta (ct_typeConta, ct_agencia, ct_Dono, ct_saldo, agencia_age_cod, cliente_clnt_cpf)
values (2, 2, 'Marineide', 18000.00, 2,98997920);





insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 100.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 150.00, 2, 1);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 100.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 100.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 200.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 500.00, 2, 1);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 02.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 05.00, 1, 2);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 50.00, 2, 1);

insert into transacoes (trs_typeTransacao, trs_value, conta_ct_codContaOrigin, conta_ct_codContaDestiny)
values (1, 100.00, 1, 2);

/*LISTAGEM DE NOMES DOS CLIENTES*/
SELECT clnt_name FROM cliente;
/*LISTAGEM DAS AGENCIAS CRIADAS APÓS 2020*/
SELECT * FROM agencia where age_dataCriacao > '2020-01-01';
/*LISTA AS CONTAS QUE SÃO POUPANÇA (COD 2)*/
SELECT * FROM conta where ct_typeConta = 2;
/*LISTA AS CONTAS CRIADAS NA AGENCIA CENTRAL (COD 1)*/
SELECT * FROM CONTA where ct_agencia = 1;
/*LISTA AS TRANSACOES FEITAS PELO JOAO*/
SELECT * FROM transacoes WHERE conta_ct_codContaOrigin = (SELECT ct_codConta FROM CONTA WHERE ct_dono = 'Joao');
/*LISTA AS TRANSACOES FEITAS DE JOAO PARA MARINEIDE*/
SELECT * FROM transacoes WHERE conta_ct_codContaOrigin = (SELECT ct_codConta FROM CONTA WHERE ct_dono = 'Joao')
&& conta_ct_codContaDestiny = (SELECT ct_codConta FROM CONTA WHERE ct_dono = 'Marineide');
/*LISTA AS AGENCIAS QUE POSSUEM AO MENOS 3 CONTAS*/
SELECT * FROM AGENCIA where count(SELECT * FROM CONTA WHERE agencia_age_cod = AGENCIA.age_code);
SELECT * FROM CONTA;

/*LISTAR OS CLIENTES QUE NÃO REALIZARAM TRANSAÇÕES*/
SELECT * FROM CLIENTE WHERE 


