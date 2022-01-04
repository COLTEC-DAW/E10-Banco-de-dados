//POPULANDO O BANCO

INSERT INTO `mydb`.`agencia`
(`idAgenda`,
`codigo`,
`nome`,
`enderco`,
`data_criacao`)
VALUES
( 1, "0000001", "Itau","Rua Joel", "2020-02-02");

INSERT INTO `mydb`.`agencia`
(`idAgenda`,
`codigo`,
`nome`,
`enderco`,
`data_criacao`)
VALUES
( 2, "0000002", "Itau Centro","Rua guajajaras", "2020-03-02");



INSERT INTO `mydb`.`cliente`
(`idCliente`,
`Nome`,
`CPF`,
`Data_nasc`,
`Endereco`,
`Telefone`)
VALUES
(1,
"Filipe Bison","14917696743",
"2003-02-07", "Rua Joel", "12345678");

INSERT INTO `mydb`.`cliente`
(`idCliente`,
`Nome`,
`CPF`,
`Data_nasc`,
`Endereco`,
`Telefone`)
VALUES
(2,
"bruna Pérez","18717696741",
"2001-03-11", "Rua Maria", "986251478");

INSERT INTO `mydb`.`cliente`
(`idCliente`,
`Nome`,
`CPF`,
`Data_nasc`,
`Endereco`,
`Telefone`)
VALUES
(3,
"Arthur Bison","14945696743",
"2000-08-08", "Rua José", "987456321");
SELECT * FROM `mydb`.`cliente`



INSERT INTO `mydb`.`conta`
(`idConta`,
`saldo`,
`tipoConta`,
`Agencia_idAgencia`,
`Cliente_idCliente`)
VALUES
(1,
1023.50,
1,
1,
1);
INSERT INTO `mydb`.`conta`
(`idConta`,
`saldo`,
`tipoConta`,
`Agencia_idAgencia`,
`Cliente_idCliente`)
VALUES
(2,
3453.50,
1,
2,
3);

INSERT INTO `mydb`.`conta`
(`idConta`,
`saldo`,
`tipoConta`,
`Agencia_idAgencia`,
`Cliente_idCliente`)
VALUES
(3,
2023.50,
1,
1,
2);

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(1,
0,
5.90,
1,
2,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(2,
0,
7.90,
1,
2,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(3,
1,
100,
2,
3,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(4,
1,
100,
1,
2,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(5,
0,
100,
1,
2,
"2022-01-02");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(6,
0,
200,
1,
3,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(7,
1,
25,
1,
3,
"2022-01-03");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(8,
0,
120,
3,
2,
"2022-01-02");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(9,
0,
15,
1,
2,
"2022-01-01");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(10,
1,
25,
1,
3,
"2022-01-03");

INSERT INTO `mydb`.`transicao`
(`idTransicao`,
`Tipo`,
`Valor`,
`ContaOrigem`,
`ContaDestino`,
`DataTransicao`)
VALUES
(11,
1,
25,
1,
3,
"2022-01-03");

SELECT * FROM `mydb`.`transicao`
