USE sistemabancario;

-- 1. Listar o nome de todos os clientes
SELECT nome FROM clientes;

-- 2. Listar o nome de todas as agências criadas após 2020
SELECT nome, data_criacao FROM agencias
WHERE data_criacao > "2020-12-31";

-- 3. Listar as contas que são poupança
SELECT * FROM contas WHERE tipo = "poupanca";

-- 4. Listar as contas criadas na agencia que contem Brasil
SELECT * FROM contas c
JOIN agencias a ON a.id = c.agencia_id
WHERE a.nome LIKE "%Brasil%";

-- 5. Listar as transações realizadas a partir da conta do 'João'
SELECT * FROM transacoes t
JOIN contas co ON co.id = t.id_conta_origem
JOIN clientes cl ON cl.cpf = co.clientes_id
WHERE cl.nome = 'Joao';

-- 6. Listar as transações realizadas pelo 'João' para a conta do 'Pedro'
SELECT * FROM transacoes WHERE id_conta_origem = '33000001' AND id_conta_destino = '33000000';

-- 7. Listar as agências que possuem pelo menos 3 contas
SELECT a.nome, a.data_criacao, count(co.agencia_id) FROM agencias a
JOIN contas co on co.agencia_id = a.id
GROUP BY a.id, co.agencia_id
HAVING COUNT(co.agencia_id) >= 3;

-- 8. Listar as contas com pelo menos 4 transações
SELECT cl.nome, COUNT(t.id_conta_origem) FROM contas co
JOIN transacoes t ON t.id_conta_origem = co.id
JOIN clientes cl   ON cl.id = co.clientes_Id
GROUP BY co.id, t.id_conta_origem
HAVING COUNT(t.id_conta_origem) >= 4;

-- 9. Listar os clientes que não realizaram transações
SELECT clientes.nome FROM transacoes t
JOIN contas co ON t.id_conta_origem = co.id
RIGHT JOIN clientes ON clientes.id = co.clientes_id
GROUP BY t.id_conta_origem
HAVING COUNT(t.id_conta_origem) = 0;