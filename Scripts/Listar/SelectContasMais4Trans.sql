SELECT cliente.Nome, COUNT(transação.ContaId_Origem) FROM conta
JOIN transação ON transação.ContaId_Origem = conta.Id
JOIN cliente   ON cliente.Id = conta.Cliente_Id
GROUP BY conta.Id, transação.ContaId_Origem
HAVING COUNT(transação.ContaId_Origem) >= 4;