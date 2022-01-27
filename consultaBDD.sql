USE daw;

SELECT nome FROM clientes;
SELECT nome FROM agencias WHERE data_criacao > '2020-01-01 00:00:00';
SELECT * FROM contas WHERE tipo='poupança';
SELECT * FROM contas WHERE agencia = 1;
SELECT * FROM transacoes WHERE contas_numero_origem = 1;
SELECT * FROM transacoes WHERE contas_numero_origem = 1 AND contas_numero_destino = 2;

SELECT a.nome, a.endereco, count(c.agencia) FROM agencias a
JOIN contas c ON c.agencia = a.codigo
GROUP BY a.codigo, c.agencia
HAVING count(c.agencia) >= 3;

SELECT c.numero, c.saldo, c.clientes_cpf ,count(t.contas_numero_origem) FROM contas c
JOIN transacoes t ON t.contas_numero_origem = c.numero
GROUP BY c.numero
HAVING count(t.contas_numero_origem) >= 4;

SELECT c.cpf, c.nome FROM transacoes t
JOIN contas cn ON t.contas_numero_origem = cn.clientes_cpf
RIGHT JOIN clientes c ON c.cpf = cn.clientes_cpf
GROUP BY t.contas_numero_origem
HAVING count(t.contas_numero_origem) = 0;





