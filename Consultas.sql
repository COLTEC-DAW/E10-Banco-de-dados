USE SistemaBancario;

-- Listar o nome de todos os clientes
SELECT NOME from Clientes;

-- Listar as contas que são poupança
SELECT * from Contas
WHERE TIPO LIKE '%Poupança%';

-- Listar as contas criadas na agência central

SELECT * from Contas
WHERE AGENCIA = 123;

-- Listar as transações realizadas a partir da conta do 'João'
SELECT * from Transacoes
WHERE CONTA_NUMERO_ORIGEM = 19887000;

-- Listar as transações realizadas pelo 'João' para a conta do 'Pedro'
SELECT * from Transacoes
WHERE CONTA_NUMERO_ORIGEM = 19887000 AND CONTA_NUMERO_DESTINO = 188974700;

-- Listar as agências que possuem pelo menos 3 contas
SELECT ag.NOME, count(c.NUMERO) AS NUMERO_DE_CONTAS FROM agencias ag
JOIN contas c ON c.AGENCIA = ag.CODIGO
GROUP BY c.AGENCIA
HAVING COUNT(c.NUMERO) >= 3;

-- Listar as contas com pelo menos 4 transações
SELECT c.NUMERO, count(t.ID) AS NUMERO_TRANSACOES FROM contas c
JOIN transacoes t ON c.NUMERO = t.CONTA_NUMERO_ORIGEM
GROUP BY t.TIPO
HAVING COUNT(t.ID) >= 4;

-- Listar os clientes que não realizaram transações
SELECT cl.NOME,c.NUMERO AS CONTA_NUMERO, count(t.ID) AS NUMERO_TRANSACOES FROM contas c
LEFT JOIN transacoes t ON c.NUMERO = t.CONTA_NUMERO_ORIGEM
JOIN clientes cl ON c.CLIENTE_CPF = cl.CPF 
GROUP BY t.TIPO
HAVING COUNT(t.ID) <= 0;

