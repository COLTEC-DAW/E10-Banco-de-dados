-- Selecionando o database
USE `daw_17/12`;

-- Q1) Listar o nome de todos os clientes
SELECT Nome FROM cliente;

-- Q2) Listar o nome de todas as agências criadas após 2020
SELECT Codigo, Nome, Data_criacao FROM agencia
WHERE YEAR(Data_criacao) >= 2020;

-- Q3) Listar as contas que são poupança
SELECT conta.Codigo, conta.Saldo, cliente.Nome FROM conta
JOIN cliente ON conta.Cliente_Cpf = cliente.Cpf
WHERE conta.Tipo = 'Poupança';

-- Q4) Listar as contas criadas na agência 'Santander'
SELECT conta.Codigo, conta.Saldo, cliente.Nome FROM conta
JOIN cliente ON conta.Cliente_Cpf = cliente.Cpf
JOIN agencia ON conta.Agencia_Codigo = agencia.Codigo
WHERE agencia.Nome = 'Santander';

-- Q5) Listar as transações realizadas a partir da conta do 'Antony'
SELECT transacao.Id, transacao.Valor, transacao.Tipo, cliente.Nome FROM transacao
JOIN conta 	 ON conta.Codigo = transacao.Conta_origem
JOIN cliente ON conta.Cliente_Cpf = cliente.Cpf 
WHERE cliente.Nome = 'Antony';

-- Q6) Listar as transações realizadas pelo 'Antony' para a conta do 'Erik'
SELECT transacao.Id, transacao.Valor, transacao.Tipo, Cliente_Origem.Nome, Cliente_Destino.Nome FROM transacao
JOIN conta ID_Origem         ON ID_Origem.Codigo = transacao.Conta_origem
JOIN cliente Cliente_Origem  ON ID_Origem.Cliente_Cpf = Cliente_Origem.Cpf 
JOIN conta ID_Destino        ON ID_Destino.Codigo = transacao.Conta_destino
JOIN cliente Cliente_Destino ON	ID_Destino.Cliente_Cpf = Cliente_Destino.Cpf
WHERE Cliente_Origem.Nome = 'Antony' AND Cliente_Destino.Nome = 'Erik';

-- Q7) Listar as agências que possuem pelo menos 3 contas
SELECT agencia.Codigo, agencia.Nome, COUNT(conta.Agencia_Codigo) FROM agencia
JOIN conta ON conta.Agencia_Codigo = agencia.Codigo
GROUP BY agencia.Codigo, conta.Agencia_Codigo
HAVING COUNT(conta.Agencia_Codigo) >= 3;

-- Q8) Listar as contas com pelo menos 4 transações
SELECT conta.Codigo, cliente.Nome, COUNT(transacao.Conta_origem) FROM conta
JOIN transacao ON transacao.Conta_origem = conta.Codigo
JOIN cliente   ON cliente.Cpf = conta.Cliente_Cpf
GROUP BY conta.Codigo, transacao.Conta_origem
HAVING COUNT(transacao.Conta_origem) >= 4;

-- Q9) Listar os clientes que não realizaram transações
SELECT cliente.Nome FROM transacao
JOIN conta 		   ON transacao.Conta_origem = conta.Codigo
RIGHT JOIN cliente ON cliente.Cpf = conta.Cliente_Cpf
GROUP BY transacao.Conta_origem
HAVING COUNT(transacao.Conta_origem) = 0;