USE TODOLIST;

/*1. listar o nome de todos os clientes*/
SELECT c.cpf, c.nome
FROM clientes c;

/*2. listar o nome de todas as agências criadas após 2020*/
SELECT *
FROM agencias a
WHERE a.data_criacao > '2020-12-31';

/*3. listar as contas que sao poupança*/
SELECT *
FROM contas c
WHERE c.tipo LIKE 'poupanca';

/*4. listar as contas criadas na agência Peropo & Co.*/
SELECT c.numero, c.saldo, c.tipo, c.clientes_cpf, a.nome AS agencias
FROM contas c
JOIN agencias a ON c.agencia = a.codigo
WHERE a.nome LIKE 'Peropo & Co.';

/*5. listar as transações realizadas a partir da conta do 'Eliseu Abranches Bentes'*/
SELECT t.id, c0.nome AS cliente_origem, a0.nome AS agencia_origem, c1.nome AS cliente_destino, a1.nome AS agencia_destino, t.data_transacao, t.valor, t.tipo
FROM transacoes t
JOIN agencias a0 ON t.contas_agencia_origem = a0.codigo
JOIN agencias a1 ON t.contas_agencia_destino = a1.codigo
JOIN contas ct0 ON t.contas_numero_origem = ct0.numero
JOIN clientes c0 ON ct0.clientes_cpf = c0.cpf
JOIN contas ct1 ON t.contas_numero_destino = ct1.numero
JOIN clientes c1 ON ct1.clientes_cpf = c1.cpf
WHERE c0.nome LIKE 'Eliseu Abranches Bentes';

/*6. listar as agências que possuem pelo menos 3 contas*/
SELECT a.codigo, a.nome, a.endereco, COUNT(a.nome), a.data_criacao
FROM agencias a
JOIN contas c ON c.agencia = a.codigo
GROUP BY a.nome
HAVING COUNT(a.nome) >= 3;

/*7. listar as transações realizadas pelo 'Eliseu Abranches Bentes' para a conta da 'Isaura Miranda Quadros'*/
SELECT t.id, c0.nome AS cliente_origem, a0.nome AS agencia_origem, c1.nome AS cliente_destino, a1.nome AS agencia_destino, t.data_transacao, t.valor, t.tipo
FROM transacoes t
JOIN agencias a0 ON t.contas_agencia_origem = a0.codigo
JOIN agencias a1 ON t.contas_agencia_destino = a1.codigo
JOIN contas ct0 ON t.contas_numero_origem = ct0.numero
JOIN clientes c0 ON ct0.clientes_cpf = c0.cpf
JOIN contas ct1 ON t.contas_numero_destino = ct1.numero
JOIN clientes c1 ON ct1.clientes_cpf = c1.cpf
WHERE c0.nome LIKE 'Eliseu Abranches Bentes' AND c1.nome LIKE 'Isaura Miranda Quadros';

/*8. listar as contas com pelo menos 4 transações*/
SELECT c.numero, c.clientes_cpf, a.nome AS agencia, c.saldo, c.tipo, COUNT(t.contas_numero_origem)
FROM contas c
JOIN agencias a ON c.agencia = a.codigo
JOIN transacoes t ON c.numero = t.contas_numero_origem
WHERE t.tipo = 't'
GROUP BY t.contas_numero_origem
HAVING COUNT(t.id) >= 4;

/*9. listar os clientes que não realizaram transações*/
SELECT c.numero, c.clientes_cpf, a.nome AS agencia, c.saldo, c.tipo, COUNT(t.contas_numero_origem)
FROM contas c
JOIN agencias a ON c.agencia = a.codigo
LEFT JOIN transacoes t ON c.numero = t.contas_numero_origem
GROUP BY t.contas_numero_origem
HAVING COUNT(t.id) = 0;