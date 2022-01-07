USE sistema_bancario;

/* 1. Listar o nome de todos os clientes */
SELECT nome FROM cliente;

/* 2. Listar o nome de todas as agências criadas após 2020 */
SELECT nome, data_criacao FROM agencia
WHERE data_criacao > "2020-12-31";

/* 3. Listar as contas que são poupança */
SELECT * FROM conta WHERE tipo = "poupanca";

/* 4. Listar as contas criadas na agencia que contem Brasil */
SELECT * FROM conta con
JOIN agencia agen ON agen.id = con.agencia_id
WHERE agen.nome LIKE "%Brasil%";

/* 5. Listar as transações realizadas a partir da conta do 'João' */
SELECT * FROM transacoes tran
JOIN conta con ON con.id = tran.id_conta_origem
JOIN cliente cl ON cl.cpf = con.cliente_id
WHERE cl.nome = 'Joao';

/* 6. Listar as transações realizadas pelo 'João' para a conta do 'Pedro' */
SELECT * FROM transacoes WHERE id_conta_origem = '00000011' AND id_conta_destino = '00000021';

/* 7. Listar as agências que possuem pelo menos 3 contas */
SELECT agen.nome, agen.data_criacao, count(con.agencia_id) FROM agencia agen
JOIN conta con on con.agencia_id = agen.id
GROUP BY agen.id, con.agencia_id
HAVING COUNT(con.agencia_id) >= 3;

/* 8. Listar as contas com pelo menos 4 transações */
SELECT cl.nome, COUNT(tran.id_conta_origem) FROM contas con
JOIN transacoes tran ON tran.id_conta_origem = con.id
JOIN cliente cl   ON cl.id = con.cliente_id
GROUP BY con.id, tran.id_conta_origem
HAVING COUNT(tran.id_conta_origem) >= 4;

/* 9. Listar os clientes que não realizaram transações */
SELECT cliente.nome FROM transacoes tran
JOIN conta con ON tran.id_conta_origem = con.id
RIGHT JOIN cliente ON cliente.id = con.cliente_id
GROUP BY tran.id_conta_origem
HAVING COUNT(tran.id_conta_origem) = 0; 