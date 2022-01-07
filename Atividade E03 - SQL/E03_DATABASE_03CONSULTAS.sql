-- Developed by Alexandre Hobbes

-- Q1 - Listar o nome de todos os clientes
SELECT c.nome FROM clientes c;

-- Q2 - Listar o nome de todas as agências criadas após 2020
SELECT a.nome FROM agencias a WHERE a.data_criacao >= '2020-01-01';

-- Q3 - Listar as contas que são poupança
SELECT * FROM contas c WHERE c.tipo LIKE 'Poupanca';

-- Q4 - Listar as contas criadas na agência central - Agencia central coloquei como agencia "Bradesco BH 09"
SELECT c.numero, c.agencia, c.saldo, c.tipo, c.clientes_cpf, a.nome 
FROM contas c 
JOIN agencias a ON c.agencia = a.codigo 
WHERE a.nome LIKE "Bradesco BH 09";

-- Q5 - Listar as transações realizadas a partir da conta do 'João'
SELECT c.nome, co.clientes_cpf, t.tipo, t.id, t.contas_numero_origem, t.contas_agencia_origem, t.contas_numero_destino, t.contas_agencia_destino, t.valor, t.data_transacao
FROM transacoes t
JOIN contas co ON t.contas_numero_origem LIKE co.numero 
JOIN clientes c ON co.clientes_cpf LIKE c.cpf
WHERE c.nome = "Joao";

-- Q6 - Listar as transações realizadas pelo 'João' para a conta da 'Virginia'
SELECT cliente_origem.nome, cliente_origem.cpf, t.contas_numero_origem, cliente_destino.nome, cliente_destino.cpf,  t.contas_numero_destino, t.tipo, t.id, t.valor, t.data_transacao
FROM transacoes t
JOIN contas origem ON t.contas_numero_origem LIKE origem.numero
JOIN clientes cliente_origem ON origem.clientes_cpf LIKE cliente_origem.cpf
JOIN contas destino ON t.contas_numero_destino LIKE destino.numero
JOIN clientes cliente_destino ON destino.clientes_cpf LIKE cliente_destino.cpf
WHERE cliente_origem.nome LIKE "Joao" AND cliente_destino.nome LIKE "Virginia";

-- Q7 - Listar as agências que possuem pelo menos 2 contas
SELECT a.codigo, a.nome, COUNT(co.agencia) 
FROM agencias a
JOIN contas co ON a.codigo LIKE co.agencia
GROUP BY a.codigo
HAVING COUNT(co.agencia) >= 2;

-- Q8 - Listar as contas com pelo menos 4 transações
SELECT co.numero, c.nome, COUNT(t.contas_numero_origem) numero_transacoes
FROM contas co
JOIN transacoes t ON co.numero LIKE t.contas_numero_origem
JOIN clientes c  ON co.clientes_cpf LIKE c.cpf
GROUP BY co.numero
HAVING COUNT(t.contas_numero_origem) >= 4;

-- Q9 - Listar os clientes que não realizaram transações
SELECT c.nome
FROM clientes c
JOIN contas co ON c.cpf = co.clientes_cpf
LEFT JOIN transacoes t ON co.numero = t.contas_numero_origem
GROUP BY c.nome
HAVING COUNT(t.id) = 0;
