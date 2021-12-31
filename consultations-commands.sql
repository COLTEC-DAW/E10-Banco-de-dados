USE bankingsys;

-- 1. Listar o nome de todos os clientes
SELECT nome FROM clientes;

-- 2. Listar o nome de todas as agências criadas após 2020
SELECT nome, data_criacao FROM agencias
WHERE data_criacao >= "2020-12-31";

-- 3. Listar as contas que são poupança
SELECT co.codigo codigo_conta, co.saldo, co.tipo, cl.nome nome_dono
FROM contas co
JOIN clientes cl ON cl.cpf=co.cpf_dono
WHERE tipo="poupanca";

-- 4. Listar as contas criadas na agência central (Banco Inter)
SELECT co.codigo codigo_conta, co.saldo, co.tipo, cl.nome nome_dono, a.nome nome_agencia
FROM contas co
JOIN clientes cl ON cl.cpf=co.cpf_dono
JOIN agencias a ON a.codigo=co.cod_agencia
WHERE a.nome LIKE "%agência central%";

-- 5. Listar as transações realizadas a partir da conta do 'João'
SELECT t.id, t.tipo, t.valor, cl.nome FROM transacoes t
JOIN contas co ON co.codigo=t.cod_conta_origem
JOIN clientes cl ON cl.cpf=co.cpf_dono
WHERE cl.nome="João";

-- 6. Listar as transações realizadas pelo 'João' para a conta do 'Pedro'
SELECT t.id, t.tipo, t.valor, cl_origem.nome nome_origem, cl_destino.nome nome_destino
FROM transacoes t
JOIN contas co_origem ON co_origem.codigo=t.cod_conta_origem
JOIN contas co_destino ON co_destino.codigo=t.cod_conta_destino
JOIN clientes cl_origem ON cl_origem.cpf=co_origem.cpf_dono
JOIN clientes cl_destino ON cl_destino.cpf = co_destino.cpf_dono
WHERE cl_origem.nome="João" AND cl_destino.nome = "Pedro";

-- 7. Listar as agências que possuem pelo menos 3 contas
SELECT a.nome, COUNT(c.cod_agencia) quant_contas FROM agencias a
JOIN contas c ON c.cod_agencia = a.codigo
GROUP BY a.nome
HAVING COUNT(c.cod_agencia) >= 3;

-- 8. Listar as contas com pelo menos 4 transações
SELECT c.codigo, cl.nome nome_cliente, COUNT(t.id) quant_transacoes FROM contas c
JOIN transacoes t ON t.cod_conta_origem = c.codigo
JOIN clientes cl ON cl.cpf = c.cpf_dono
GROUP BY c.codigo
HAVING COUNT(t.id) >= 4;

-- 9. Listar os clientes que não realizaram transações
SELECT cl.nome, COUNT(t.id) quant_transacoes FROM clientes cl
JOIN contas c ON c.cpf_dono = cl.cpf
LEFT JOIN transacoes t ON t.cod_conta_origem = c.codigo
GROUP BY cl.nome
HAVING COUNT(t.id) = 0;