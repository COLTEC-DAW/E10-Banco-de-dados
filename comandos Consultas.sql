USE sistemabancario;

SELECT nome FROM clientes;

SELECT nome FROM agencias WHERE data_criacao > '2020-12-31';

SELECT * FROM contas WHERE tipo = 'poupanca';

SELECT * FROM contas WHERE contas.agencia = 1;

SELECT * FROM transacoes 
JOIN contas ON transacoes.contas_numero_origem = contas.numero OR transacoes.contas_numero_destino = contas.numero
JOIN clientes ON contas.clientes_cpf = clientes.cpf
WHERE clientes.nome LIKE '%Glória%';

SELECT * FROM agencias
JOIN contas ON agencias.codigo = contas.agencia
GROUP BY agencias.codigo
HAVING COUNT(contas.numero) >= 3;

SELECT * FROM contas
JOIN transacoes ON contas.numero = transacoes.contas_numero_origem OR contas.numero = transacoes.contas_numero_destino
GROUP BY contas.numero
HAVING COUNT(transacoes.id) >= 4;

SELECT * FROM clientes
LEFT JOIN contas on clientes.cpf = contas.clientes_cpf
LEFT JOIN transacoes ON contas.numero = transacoes.contas_numero_origem
WHERE transacoes.contas_numero_origem IS NULL;