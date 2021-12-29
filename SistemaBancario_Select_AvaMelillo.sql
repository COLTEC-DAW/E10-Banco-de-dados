
/* Parte 1 */

SELECT nome FROM cliente;

/* Parte 2 */

SELECT nome FROM agencia
WHERE data_criacao > '2019-12-31';

/* Parte 3 */

SELECT * FROM conta
WHERE tipo LIKE 'poupanca';

/* Parte 4 */

SELECT * FROM conta
WHERE agencia_id LIKE 0;

/* Parte 5 */

SELECT transacao.*, conta.cliente_id, cliente.nome  FROM transacao, conta, cliente
WHERE transacao.conta_id = conta.id
AND conta.cliente_id = cliente.id
AND cliente.nome LIKE 'Ana Maria'; 

/* Parte 6 */

/* ??? */

/* Parte 7 */

SELECT agencia_id, COUNT(*) FROM conta
GROUP BY agencia_id
HAVING COUNT(*) < 3;

/* Parte 8 */

SELECT conta_id, COUNT(*) FROM transacao
GROUP BY conta_id
HAVING COUNT(*) > 3;

/* Parte 9 */

SELECT conta_id, COUNT(*) FROM transacao
GROUP BY conta_id
HAVING COUNT(*) < 10;
/* skdjhfksjdhfjkdkshfk nao ta pronto*/