USE banco;

SELECT nome FROM cliente;

SELECT nome, data_criacao FROM agencia
WHERE data_criacao > "2020-12-31";

SELECT * FROM conta WHERE tipo = "poupanca";

SELECT * FROM conta c
JOIN agencia a ON a.id = c.agencia_id
WHERE a.nome LIKE "%Brasil%";

SELECT * FROM transacao t
JOIN conta co ON co.id = t.id_conta_origem
JOIN cliente cl ON cl.cpf = co.cliente_id
WHERE cl.nome = 'Joao';

SELECT t.id, t.tipo, t.valor, cl_origem.nome nome_origem, cl_destino.nome nome_destino
FROM transacao t
JOIN conta co_origem ON co_origem.id=t.id_conta_origem
JOIN conta co_destino ON co_destino.id=t.id_conta_destino
JOIN cliente cl_origem ON cl_origem.id=cl_origem.id
JOIN cliente cl_destino ON cl_destino.id=cl_destino.id
WHERE cl_origem.nome="João" AND cl_destino.nome = "Pedro";

SELECT a.nome, a.data_criacao, count(co.agencia_id) FROM agencia a
JOIN conta co on co.agencia_id = a.id
GROUP BY a.id, co.agencia_id
HAVING COUNT(co.agencia_id) >= 3;

SELECT cl.nome, COUNT(t.id_conta_origem) FROM conta co
JOIN transacao t ON t.id_conta_origem = co.id
JOIN cliente cl   ON cl.id = co.cliente_Id
GROUP BY co.id, t.id_conta_origem
HAVING COUNT(t.id_conta_origem) >= 4;

SELECT cliente.nome FROM transacao t
JOIN conta co ON t.id_conta_origem = co.id
RIGHT JOIN cliente ON cliente.id = co.cliente_id
GROUP BY t.id_conta_origem
HAVING COUNT(t.id_conta_origem) = 0; 