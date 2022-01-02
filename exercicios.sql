-- q1
SELECT nome FROM Cliente;

-- q2
SELECT codigo_da_agencia, nome, Data_da_criacao FROM Agência
WHERE YEAR(Data_da_criacao) >= 2020;

-- q3
SELECT Conta.codigo_conta, Conta.saldo, Cliente.nome FROM Conta
JOIN Cliente ON Conta.CPF_do_cliente = Cliente.CPF
WHERE Conta.tipo = 'Poupança';

-- q4
SELECT Conta.codigo_conta, Conta.saldo, Cliente.nome FROM Conta
JOIN Cliente ON conta.CPF_do_cliente = Cliente.CPF
JOIN Agência ON conta.codigo_agencia = Agência.codigo_da_agencia
WHERE Agência.nome = 'Cartão de Todos';

-- q5
SELECT Transações.codigo_da_conta, Transações.valor, Transações.tipo, Cliente.nome FROM Transações
JOIN Conta 	 ON Conta.codigo_conta = Transações.origem_da_conta
JOIN Cliente ON Conta.CPF_do_cliente = Cliente.CPF 
WHERE Cliente.nome = 'João';

-- q6
SELECT Transações.codigo_da_conta, Transações.valor, Transações.tipo, Cliente_Origem.nome, Cliente_Destino.nome FROM Transações
JOIN Conta Origem            ON Origem.codigo_conta = Transações.Conta_origem
JOIN Cliente Cliente_Origem  ON Origem.CPF_do_cliente = Cliente_Origem.CPF 
JOIN Conta Destino           ON Destino.codigo_conta = Transações.Conta_destino
JOIN Cliente Cliente_Destino ON	Destino.CPF_do_cliente = Cliente_Destino.CPF
WHERE Cliente_Origem.nome = 'João' AND Cliente_Destino.nome = 'Pedro';

-- q7
SELECT Agência.codigo_da_agencia, Agência.nome, COUNT(Conta.agencia) FROM Agência
JOIN Conta ON Conta.codigo_agencia = agencia.codigo_da_agência
GROUP BY Agência.codigo_da_agencia, Conta.codigo_agencia
HAVING COUNT(Conta.codigo_agencia) >= 3;

-- q8
SELECT Conta.codigo_conta, Cliente.nome, COUNT(Transações.origem_da_conta) FROM Conta
JOIN Transações ON Transações.origem_da_conta = Conta.codigo_conta
JOIN Cliente   ON Cliente.CPF = Conta.CPF_do_cliente
GROUP BY Conta.codigo_conta, Transações.origem_da_conta
HAVING COUNT(Transações.origem_da_conta) >= 4;

-- q9
SELECT Cliente.nome FROM Transações
JOIN Conta 		    ON Transações.origem_da_conta = conta.Codigo
RIGHT JOIN Cliente  ON Cliente.CPF = Conta.CPF_do_cliente
GROUP BY Transações.origem_da_conta
HAVING COUNT(Transações.origem_da_conta) = 0;





