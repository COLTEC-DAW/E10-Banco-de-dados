USE banco;

-- 1 ->
SELECT nome FROM clientes;

-- 2 ->
SELECT nome FROM agencias
WHERE data_criacao >= "2020-01-01";
-- 3 ->
SELECT cl.nome AS DONO, c.saldo, c.tipo FROM contas c
JOIN clientes cl ON c.cliente_cpf = cl.cpf
WHERE tipo = "Poupança";

-- 4 -> 
SELECT cl.nome AS dono, a.nome AS agencia, c.saldo, c.tipo FROM contas c
JOIN clientes cl ON c.cliente_cpf = cl.cpf
JOIN agencias a ON c.agencia = a.codigo
WHERE c.agencia = 1;

-- 5 ->
SELECT * from transacoes;
SELECT cl.nome AS cliente, t.id AS id_transacao, a.nome As agencia, t.valor
FROM contas c 
JOIN clientes cl ON c.cliente_cpf = cl.cpf
JOIN transacoes t ON c.numero = t.contas_numero_origem OR c.numero = t.contas_numero_destino
JOIN agencias a ON c.agencia = a.codigo
WHERE cl.nome = "Joao";

-- 6 ->
SELECT cl.nome AS cliente, t.id AS id_transacao, a.nome AS agencia, t.valor
FROM contas c 
JOIN clientes cl ON c.cliente_cpf = cl.cpf
JOIN transacoes t ON c.numero = t.contas_numero_origem
JOIN agencias a ON c.agencia = a.codigo
WHERE cl.nome = "Leonardo" AND t.contas_numero_destino = 3 ;

-- 7 ->
SELECT a.nome, c.cliente_cpf, COUNT(a.nome) AS num_contas
FROM agencias a
JOIN contas c ON a.codigo = c.agencia
GROUP BY a.nome
HAVING COUNT(a.nome) >= 3;

-- 8 ->
SELECT cl.nome AS cliente,COUNT(c.cliente_cpf) AS num_transacoes, c.cliente_cpf AS CPF 
FROM contas c
JOIN transacoes t ON c.numero = t.contas_agencia_origem
JOIN clientes cl ON c.cliente_cpf = cl.cpf
GROUP BY c.cliente_cpf
HAVING COUNT(c.cliente_cpf) >= 4;

-- 9
SELECT cl.nome AS cliente, cl.cpf AS CPF, a.nome, COUNT(c.cliente_cpf)
FROM contas c
JOIN transacoes t ON c.numero = t.contas_agencia_origem
INNER JOIN agencias a ON c.agencia = a.codigo
RIGHT JOIN clientes cl ON c.cliente_cpf = cl.cpf
GROUP BY c.cliente_cpf
HAVING COUNT(c.cliente_cpf) < 1;
