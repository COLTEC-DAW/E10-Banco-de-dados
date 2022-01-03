SELECT nome FROM clientes;

SELECT * FROM agencia WHERE data_de_criacao >= '2020-01-01';

SELECT * FROM contas WHERE contas.tipo = 'poupanca';

SELECT * FROM contas WHERE contas.agencia = '1';

SELECT transacao.id, transacao.valor, transacao.tipo, transacao.contas_codigo_origem, 
transacao.contas_codigo_destino, contas.dono 
FROM transacao, contas 
WHERE transacao.contas_codigo_origem = '11' 
AND contas.dono = 'Joao';

SELECT * FROM transacao 
WHERE transacao.contas_codigo_origem = '11' 
AND transacao.contas_codigo_destino = '22';

SELECT agencia.nome, COUNT(contas.codigo) quantidade_contas FROM agencia
JOIN contas ON contas.codigo = agencia.codigo
GROUP BY agencia.nome
HAVING COUNT(contas.codigo) >= 3;

SELECT contas.codigo, clientes.nome nome_cliente, COUNT(transacao.id) quantidade_transacoes FROM contas
JOIN transacao ON transacao.contas_codigo_origem = contas.codigo
JOIN clientes ON clientes.nome = contas.dono
GROUP BY contas.codigo
HAVING COUNT(transacao.id) >= 4;

SELECT clientes.nome, COUNT(transacao.id) quantidade_transacoes FROM clientes
JOIN contas ON contas.dono = clientes.nome
LEFT JOIN transacao ON transacao.contas_codigo_origem = contas.codigo
GROUP BY clientes.nome
HAVING COUNT(transacao.id) = 0;
