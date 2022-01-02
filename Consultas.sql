USE sistemabancario;

SELECT nome FROM cliente;

SELECT nome FROM agencia WHERE criacao >= "2020-01-01";

SELECT * FROM conta WHERE tipo = "poupanca";

SELECT * FROM conta WHERE agencia_codigo = 1111;

SELECT * FROM transacao WHERE conta_codigo = 3;

SELECT * FROM transacao WHERE conta_codigo = 3 && destino_conta_codigo = 4;

SELECT agencia.codigo, agencia.nome, COUNT(conta.agencia_codigo) FROM agencia
JOIN conta ON conta.agencia_codigo = agencia.codigo
GROUP BY agencia.codigo, conta.agencia_codigo
HAVING COUNT(conta.agencia_codigo) >= 3;

SELECT conta.codigo, cliente.nome, COUNT(transacao.conta_codigo) FROM conta
JOIN transacao ON transacao.conta_codigo = conta.codigo
JOIN cliente ON cliente.cpf = conta.cliente_cpf
GROUP BY conta.codigo, transacao.conta_codigo
HAVING COUNT(transacao.conta_codigo) >= 4;

SELECT cliente.nome FROM transacao
JOIN conta ON transacao.conta_codigo = conta.codigo
RIGHT JOIN cliente ON cliente.cpf = conta.cliente_cpf
GROUP BY transacao.conta_codigo
HAVING COUNT(transacao.conta_codigo) = 0; 