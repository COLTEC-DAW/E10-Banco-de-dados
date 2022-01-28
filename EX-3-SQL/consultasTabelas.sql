USE agenciabancaria;
-- Listar o nome de todos os clientes
SELECT nome FROM clientes;

-- Listar o nome de todas as agências criadas após 2020
SELECT nome FROM agencias
WHERE data_criacao >= "2020-01-01";

-- Listar as contas que são poupança
SELECT * FROM contas
WHERE tipo = "Conta Poupança";

-- 4 -> Listar as contas criadas na agência central
-- Não sei oq é isso, então assumi que a central fosse a primeira agencia criada
SELECT * FROM agencias
WHERE codigo = 1;

-- Listar as transações realizadas a partir da conta do 'João'
SELECT cli.nome AS cliente , c.agencia, c.saldo, c.tipo, a.nome
FROM contas c
JOIN agencias a ON c.agencia = a.codigo
JOIN clientes cli ON c.clientes_cpf = cli.cpf
WHERE a.nome LIKE '%l';

-- Listar as agências que possuem pelo menos 3 contas
SELECT cli.nome, t.id, a.nome, t.valor
FROM contas c 
JOIN clientes cli ON c.clientes_cpf = cli.cpf
JOIN transacoes t ON c.numero = t.contas_numero_origem
JOIN agencias a ON c.agencia = a.codigo
WHERE cli.nome = "Pedrinho";
-- TOdas as transacoes feitas por pedrinho
SELECT cli.nome AS cliente, t.id, a.nome AS agencia, t.valor
FROM contas c 
JOIN clientes cli ON c.clientes_cpf = cli.cpf
JOIN transacoes t ON c.numero = t.contas_numero_origem
JOIN agencias a ON c.agencia = a.codigo
WHERE cli.nome = "Pedrinho";

-- Transacoes feitas por pedrinho para venancio
SELECT cli.nome AS cliente, t.id, a.nome AS agencia, t.valor, t.contas_numero_origem AS origem
FROM contas c 
JOIN clientes cli ON c.clientes_cpf = cli.cpf
JOIN transacoes t ON c.numero = t.contas_numero_origem
JOIN agencias a ON c.agencia = a.codigo
WHERE cli.nome = "Pedrinho" AND t.contas_numero_destino = 1;

-- Listar as agências que possuem pelo menos 3 contas (NÂO HÁ NENHUMA)
SELECT a.nome, c.clientes_cpf, COUNT(a.codigo)
FROM agencias a
JOIN contas c ON a.codigo = c.agencia
GROUP BY a.nome
HAVING COUNT(a.codigo) >= 3;

-- Listar as contas com pelo menos 4 transações
SELECT cli.nome, c.clientes_cpf, COUNT(c.clientes_cpf)
FROM contas c
JOIN clientes cli ON c.clientes_cpf = cli.cpf
JOIN transacoes t ON c.numero = t.contas_agencia_origem
GROUP BY c.clientes_cpf
HAVING COUNT(c.clientes_cpf) >= 4;

-- Listar os clientes que não realizaram transações,

SELECT cli.nome, c.clientes_cpf, COUNT(c.clientes_cpf)
FROM contas c
JOIN transacoes t ON c.numero = t.contas_agencia_origem
RIGHT JOIN clientes cli ON c.clientes_cpf = cli.cpf
GROUP BY c.clientes_cpf
HAVING COUNT(c.clientes_cpf) = 0;
SELECT * from clientes;
