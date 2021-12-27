SELECT cliente.nome FROM transação
JOIN conta ON transação.ContaId_Origem = conta.Id
RIGHT JOIN cliente ON cliente.Id = conta.Cliente_Id
GROUP BY transação.ContaId_Origem
HAVING COUNT(transação.ContaId_Origem) = 0;