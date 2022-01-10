/******************************************************************************************
 *         					        E03 - SQL    										  *
 ******************************************************************************************
 * Data: 09/01/2022 													            	  *
 * Autor: Bruna Perez																	  *
 * Descrição: Consultando dados															  *
 ******************************************************************************************/

USE E03_SQL;

-- -----------------------------------------------------
-- Listar o nome de todos os clientes
-- -----------------------------------------------------
SELECT nome FROM Clientes;
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar o nome de todas as agências criadas após 1975 (editei pq eu criei as empresas em outras datas)
-- -----------------------------------------------------
SELECT nome, DataCriacao FROM agencias
WHERE DataCriacao > '1975-07-14';
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar as contas que são poupança
-- -----------------------------------------------------
SELECT * FROM Contas WHERE TipoConta = 'Poupanca';
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar as contas criadas na agência central
-- -----------------------------------------------------
SELECT * FROM Contas WHERE IdAgencia = '1';
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar as transações realizadas a partir da conta do 'João'
-- -----------------------------------------------------
SELECT t.idConta, t.Valor, t.TipoTransicao, t.ContaOrigem, 
t.idConta, c.IdCliente 
FROM Transacoes t, Contas c
WHERE t.ContaOrigem = '1' 
AND c.IdCliente = '1';
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar as transações realizadas pelo 'Bruna' para a conta do 'Maria'
-- -----------------------------------------------------
SELECT * FROM Transacoes t 
WHERE t.ContaOrigem = '0' 
AND t.idConta= '2';
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Listar as agências que possuem pelo menos 3 contas
-- -----------------------------------------------------
SELECT a.Nome, COUNT(Contas.IdConta) numContas FROM Agencias a
JOIN contas ON Contas.IdConta = a.idAgencia
GROUP BY a.Nome
HAVING COUNT(Contas.IdConta) >= 3;
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Listar as contas com pelo menos 4 transações
-- -----------------------------------------------------

SELECT c.IdConta, Clientes.Nome, COUNT(Transacoes.idTransacoes) numTransacoes FROM Contas c 
JOIN Transacoes ON Transacoes.ContaOrigem = c.IdConta
JOIN Clientes ON Clientes.idCliente = c.IdCliente
GROUP BY C.IdConta, Clientes.Nome
HAVING COUNT(Transacoes.idTransacoes) >= 4;

-- -----------------------------------------------------
-- Listar os clientes que não realizaram transações
-- -----------------------------------------------------

SELECT c.Nome, COUNT(Transacoes.idTransacoes) numTransacoes FROM Clientes c
JOIN Contas ON Contas.IdCliente = c.idCliente
LEFT JOIN Transacoes ON Transacoes.ContaOrigem = Contas.IdConta
GROUP BY c.Nome
HAVING COUNT(Transacoes.idTransacoes) = 0;