USE sistemaBancario;

# 1. Listar o nome de todos os clientes
SELECT nome
FROM clientes;

# 2. Listar o nome de todas as agências criadas após 2020
SELECT nome
FROM agencias
WHERE data_criacao >= '2020-00-00';

# 3. Listar as contas que são poupança
SELECT *
FROM contas
WHERE tipo = 'Conta-Poupanca';

# 4. Listar as contas criadas na agência central
SELECT contas.*
FROM contas, agencias
WHERE agencias.nome LIKE "%Inter%" # Ou Agência Central, se preferir
	AND agencia = agencias.codigo;

# 5. Listar as transações realizadas a partir da conta do 'João'
SELECT transacoes.*
FROM transacoes, contas, clientes
WHERE clientes.nome LIKE '%Sophia%' # Ou João, se preferir
	AND contas.clientes_cpf = clientes.cpf
    AND contas_numero_origem = contas.agencia
    AND contas_agencia_origem = contas.numero;

# 6. Listar as transações realizadas pelo 'João' para a conta do 'Pedro'
SELECT transacoes.*
FROM transacoes

JOIN clientes cliente_origem ON cliente_origem.nome LIKE '%Sophia%' # (João)
JOIN contas conta_origem ON conta_origem.clientes_cpf = cliente_origem.cpf
JOIN clientes cliente_destino ON cliente_destino.nome LIKE '%Mel%' # (Pedro)
JOIN contas conta_destino ON conta_destino.clientes_cpf = cliente_destino.cpf

WHERE contas_numero_origem = conta_origem.numero
	AND contas_agencia_origem = conta_origem.agencia
    AND contas_numero_destino = conta_destino.numero
    AND contas_agencia_destino = conta_destino.agencia;

# 7. Listar as agências que possuem pelo menos 3 contas
SELECT agencias.*
FROM agencias
JOIN contas ON codigo = contas.agencia
GROUP BY agencias.codigo
HAVING COUNT(*) >= 3
;

# 8. Listar as contas com pelo menos 4 transações
SELECT contas.*
FROM contas
JOIN transacoes ON contas_agencia_origem = contas.agencia AND contas_numero_origem = contas.numero AND transacoes.tipo = 't'
GROUP BY contas.numero, contas.agencia
HAVING COUNT(*) >= 4
;

# 9. Listar os clientes que não realizaram transações
SELECT *
FROM clientes
LEFT JOIN contas ON clientes.cpf = contas.clientes_cpf
LEFT JOIN transacoes ON contas_agencia_origem = contas.agencia AND contas_numero_origem = contas.numero AND transacoes.tipo = 't'
;