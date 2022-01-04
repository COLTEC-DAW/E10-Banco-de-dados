-- Listar o nome de todos os clientes
SELECT 
    `cliente`.`Nome`
FROM `mydb`.`cliente`;
-- Listar o nome de todas as agências criadas após 2020
SELECT * 
FROM `mydb`.`transicao`
WHERE DATE(`transicao`.`DataTransicao`) <"2020-01-01"
-- Listar as contas que são poupança
SELECT * 
FROM `mydb`.`conta`
WHERE `conta`.`tipoConta` =1

-- Lembrando que:
-- 1= conta corrente
-- 2= conta poupança
-- 3- poupança corrente


-- Listar as contas criadas na agência central
--(considerei a agencia central, como a agencia que fica no centro)
SELECT * 
FROM `mydb`.`conta`, `mydb`.`agencia` 
WHERE `agencia`.`nome` = "Itau Centro"

-- Listar as transações realizadas a partir da conta do 'João'
SELECT * FROM `mydb`.`transicao` t
JOIN `mydb`.`conta` co ON co.idConta = t.ContaOrigem
JOIN `mydb`.`cliente` cl ON cl.idCliente = co.Cliente_idCliente
WHERE cl.nome = 'João';

-- Listar as transações realizadas pelo 'João' para a conta do 'Pedro'
não soube fazer

--Listar as agências que possuem pelo menos 3 contas
SELECT ag.nome, ag.data_criacao, count(co.agencia_idAgencia) FROM `mydb`.`agencia` ag
JOIN `mydb`.`conta` co on co.agencia_idAgencia = ag.idAgenda
GROUP BY ag.idAgenda, co.agencia_idAgencia
HAVING COUNT(co.agencia_idAgencia) >= 3;

-- Listar as contas com pelo menos 4 transações
SELECT cl.Nome, COUNT(t.ContaOrigem) FROM `mydb`.`conta` co
JOIN `mydb`.`transicao` t ON t.ContaOrigem = co.idConta
JOIN `mydb`.`cliente` cl   ON cl.idCliente = co.Cliente_idCliente
GROUP BY co.idConta, t.ContaOrigem
HAVING COUNT(t.ContaOrigem) >= 4;

-- Listar os clientes que não realizaram transações
SELECT cl.Nome FROM `mydb`.`transicao` t
JOIN `mydb`.`conta` co ON t.ContaOrigem = co.idConta
RIGHT JOIN `mydb`.`cliente` cl ON cl.idCliente = co.Cliente_idCliente
GROUP BY t.ContaOrigem
HAVING COUNT(t.ContaOrigem) = 0;