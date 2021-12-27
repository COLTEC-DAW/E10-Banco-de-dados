SELECT agência.Nome, agência.Data_de_criação, count(conta.Agência_Id) FROM agência
JOIN conta on conta.Agência_Id = agência.Id
GROUP BY agência.Id, conta.Agência_Id
HAVING COUNT(conta.Agência_Id) >= 3;